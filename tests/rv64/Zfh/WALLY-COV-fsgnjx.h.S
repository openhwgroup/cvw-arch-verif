///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsgnjx.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.275505
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
li x24, 0xc3d69ebbd451d756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x6132a4299c7fb6b6 # load x3 with value 0x6132a4299c7fb6b6
sw x3, 0(x2) # store 0x6132a4299c7fb6b6 in memory
flh f27, 0(x2) # load 0x6132a4299c7fb6b6 from memory into f27
fsgnjx.h f24, f6, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x5, 0x49d63c52dd99a2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0xe91a9988df263ad2 # load x3 with value 0xe91a9988df263ad2
sw x3, 0(x2) # store 0xe91a9988df263ad2 in memory
flh f27, 0(x2) # load 0xe91a9988df263ad2 from memory into f27
fsgnjx.h f5, f13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x30, 0xaffcf6c21a73e5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x637eef5f27029d17 # load x3 with value 0x637eef5f27029d17
sw x3, 0(x2) # store 0x637eef5f27029d17 in memory
flh f28, 0(x2) # load 0x637eef5f27029d17 from memory into f28
fsgnjx.h f30, f17, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x21, 0x062233ed127ab550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0xfb47e403c19d665f # load x3 with value 0xfb47e403c19d665f
sw x3, 0(x2) # store 0xfb47e403c19d665f in memory
flh f8, 0(x2) # load 0xfb47e403c19d665f from memory into f8
fsgnjx.h f21, f14, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x10, 0x826cc6eaedee9311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0xfa72beed026396a5 # load x3 with value 0xfa72beed026396a5
sw x3, 0(x2) # store 0xfa72beed026396a5 in memory
flh f5, 0(x2) # load 0xfa72beed026396a5 from memory into f5
fsgnjx.h f10, f27, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x29, 0xd2409e09e35a7f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x2870e16619df9c15 # load x3 with value 0x2870e16619df9c15
sw x3, 0(x2) # store 0x2870e16619df9c15 in memory
flh f14, 0(x2) # load 0x2870e16619df9c15 from memory into f14
fsgnjx.h f29, f5, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x30, 0xcbc1469a707ebfee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x9b105d3b3861faab # load x3 with value 0x9b105d3b3861faab
sw x3, 0(x2) # store 0x9b105d3b3861faab in memory
flh f13, 0(x2) # load 0x9b105d3b3861faab from memory into f13
fsgnjx.h f30, f19, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x4, 0xc87f7ba023a3793e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x88fcbc1588795579 # load x3 with value 0x88fcbc1588795579
sw x3, 0(x2) # store 0x88fcbc1588795579 in memory
flh f22, 0(x2) # load 0x88fcbc1588795579 from memory into f22
fsgnjx.h f4, f24, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x11, 0x01408bc8afb69130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x8e10a58b1f5b2cf8 # load x3 with value 0x8e10a58b1f5b2cf8
sw x3, 0(x2) # store 0x8e10a58b1f5b2cf8 in memory
flh f30, 0(x2) # load 0x8e10a58b1f5b2cf8 from memory into f30
fsgnjx.h f11, f13, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x19, 0xaadd3e5bcabda47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x95b9bfe99cf38902 # load x3 with value 0x95b9bfe99cf38902
sw x3, 0(x2) # store 0x95b9bfe99cf38902 in memory
flh f22, 0(x2) # load 0x95b9bfe99cf38902 from memory into f22
fsgnjx.h f19, f21, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x9, 0x2ea8332f559bc153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x2c4ec98eae194cec # load x3 with value 0x2c4ec98eae194cec
sw x3, 0(x2) # store 0x2c4ec98eae194cec in memory
flh f8, 0(x2) # load 0x2c4ec98eae194cec from memory into f8
fsgnjx.h f9, f10, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x15, 0x8dd1cc76e27d390c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x8d4e9539c86f4b6b # load x3 with value 0x8d4e9539c86f4b6b
sw x3, 0(x2) # store 0x8d4e9539c86f4b6b in memory
flh f25, 0(x2) # load 0x8d4e9539c86f4b6b from memory into f25
fsgnjx.h f15, f27, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x31, 0xd21628c3c3d563a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x20e82f27d74ed9a4 # load x3 with value 0x20e82f27d74ed9a4
sw x3, 0(x2) # store 0x20e82f27d74ed9a4 in memory
flh f17, 0(x2) # load 0x20e82f27d74ed9a4 from memory into f17
fsgnjx.h f31, f8, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x17, 0xb7a8826d00e3bd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0xeaf55e1ababb1f4d # load x3 with value 0xeaf55e1ababb1f4d
sw x3, 0(x2) # store 0xeaf55e1ababb1f4d in memory
flh f12, 0(x2) # load 0xeaf55e1ababb1f4d from memory into f12
fsgnjx.h f17, f24, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x26, 0xda03780d51c98b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x4b333ff7547af906 # load x3 with value 0x4b333ff7547af906
sw x3, 0(x2) # store 0x4b333ff7547af906 in memory
flh f31, 0(x2) # load 0x4b333ff7547af906 from memory into f31
fsgnjx.h f26, f5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x14, 0x84dbcf305a37756d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x1ea18c1fd6b9c977 # load x3 with value 0x1ea18c1fd6b9c977
sw x3, 0(x2) # store 0x1ea18c1fd6b9c977 in memory
flh f9, 0(x2) # load 0x1ea18c1fd6b9c977 from memory into f9
fsgnjx.h f14, f29, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0xc48cf6c8611f002b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x10c285558cc8f797 # load x3 with value 0x10c285558cc8f797
sw x3, 0(x2) # store 0x10c285558cc8f797 in memory
flh f5, 0(x2) # load 0x10c285558cc8f797 from memory into f5
fsgnjx.h f1, f22, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x18, 0xce005cee4cdcd5af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x5855bf0fcb132c45 # load x3 with value 0x5855bf0fcb132c45
sw x3, 0(x2) # store 0x5855bf0fcb132c45 in memory
flh f26, 0(x2) # load 0x5855bf0fcb132c45 from memory into f26
fsgnjx.h f18, f6, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x21, 0xa4ce07622c4fb7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x74a858733727c4d1 # load x3 with value 0x74a858733727c4d1
sw x3, 0(x2) # store 0x74a858733727c4d1 in memory
flh f18, 0(x2) # load 0x74a858733727c4d1 from memory into f18
fsgnjx.h f21, f25, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x2, 0xec23ea9b8b63d1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0xa0735a51366eae7d # load x3 with value 0xa0735a51366eae7d
sw x3, 0(x2) # store 0xa0735a51366eae7d in memory
flh f17, 0(x2) # load 0xa0735a51366eae7d from memory into f17
fsgnjx.h f2, f23, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x2, 0x95183a309c2b8b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0xda872fe56211769c # load x3 with value 0xda872fe56211769c
sw x3, 0(x2) # store 0xda872fe56211769c in memory
flh f7, 0(x2) # load 0xda872fe56211769c from memory into f7
fsgnjx.h f2, f16, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x15, 0xad347cb972526a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0xd2407a7c73a4456d # load x3 with value 0xd2407a7c73a4456d
sw x3, 0(x2) # store 0xd2407a7c73a4456d in memory
flh f9, 0(x2) # load 0xd2407a7c73a4456d from memory into f9
fsgnjx.h f15, f27, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x24, 0x247dc617253e3b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0xf059f7da42e6ebd6 # load x3 with value 0xf059f7da42e6ebd6
sw x3, 0(x2) # store 0xf059f7da42e6ebd6 in memory
flh f19, 0(x2) # load 0xf059f7da42e6ebd6 from memory into f19
fsgnjx.h f24, f7, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x4, 0x3615440c999af4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0xc52541c2c4d77cd4 # load x3 with value 0xc52541c2c4d77cd4
sw x3, 0(x2) # store 0xc52541c2c4d77cd4 in memory
flh f9, 0(x2) # load 0xc52541c2c4d77cd4 from memory into f9
fsgnjx.h f4, f20, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x7, 0x26c3345dea5551da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
li x3, 0x2cf21a5e03405bd0 # load x3 with value 0x2cf21a5e03405bd0
sw x3, 0(x2) # store 0x2cf21a5e03405bd0 in memory
flh f2, 0(x2) # load 0x2cf21a5e03405bd0 from memory into f2
fsgnjx.h f7, f16, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x25, 0x657f4751e195ecd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0xd3f446da207efe92 # load x3 with value 0xd3f446da207efe92
sw x3, 0(x2) # store 0xd3f446da207efe92 in memory
flh f13, 0(x2) # load 0xd3f446da207efe92 from memory into f13
fsgnjx.h f25, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x9, 0xb8c1e736e03fc8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6189e27816b2b552 # load x3 with value 0x6189e27816b2b552
sw x3, 0(x2) # store 0x6189e27816b2b552 in memory
flh f7, 0(x2) # load 0x6189e27816b2b552 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsgnjx.h f9, f7, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x2, 0xe344af43c5f59541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x883f190257afd82e # load x3 with value 0x883f190257afd82e
sw x3, 0(x2) # store 0x883f190257afd82e in memory
flh f25, 0(x2) # load 0x883f190257afd82e from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fsgnjx.h f2, f25, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x8, 0x11b871c2741807c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3714fbbeb92739ad # load x3 with value 0x3714fbbeb92739ad
sw x3, 0(x2) # store 0x3714fbbeb92739ad in memory
flh f11, 0(x2) # load 0x3714fbbeb92739ad from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsgnjx.h f8, f11, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x13, 0x7c7a9b90fad436b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaef6ff180063c0bc # load x3 with value 0xaef6ff180063c0bc
sw x3, 0(x2) # store 0xaef6ff180063c0bc in memory
flh f17, 0(x2) # load 0xaef6ff180063c0bc from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fsgnjx.h f13, f17, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x23, 0x1f809406edf85f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c7849dc1454baac # load x3 with value 0x6c7849dc1454baac
sw x3, 0(x2) # store 0x6c7849dc1454baac in memory
flh f10, 0(x2) # load 0x6c7849dc1454baac from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsgnjx.h f23, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x15, 0x7489d5565482636f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6206aeaa8b52870 # load x3 with value 0xb6206aeaa8b52870
sw x3, 0(x2) # store 0xb6206aeaa8b52870 in memory
flh f4, 0(x2) # load 0xb6206aeaa8b52870 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fsgnjx.h f15, f4, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x12, 0x70459715a10aea6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ef78dd1de9fe1c1 # load x3 with value 0x6ef78dd1de9fe1c1
sw x3, 0(x2) # store 0x6ef78dd1de9fe1c1 in memory
flh f26, 0(x2) # load 0x6ef78dd1de9fe1c1 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsgnjx.h f12, f26, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x25, 0x30925ebc62e85b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43d48278539c3fca # load x3 with value 0x43d48278539c3fca
sw x3, 0(x2) # store 0x43d48278539c3fca in memory
flh f19, 0(x2) # load 0x43d48278539c3fca from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsgnjx.h f25, f19, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x21, 0x4b488d3644a23131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe6d1cd172d69b88 # load x3 with value 0xfe6d1cd172d69b88
sw x3, 0(x2) # store 0xfe6d1cd172d69b88 in memory
flh f12, 0(x2) # load 0xfe6d1cd172d69b88 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fsgnjx.h f21, f12, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x2, 0x5980aefa33934687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb02b0af07880b91b # load x3 with value 0xb02b0af07880b91b
sw x3, 0(x2) # store 0xb02b0af07880b91b in memory
flh f15, 0(x2) # load 0xb02b0af07880b91b from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsgnjx.h f2, f15, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x14, 0x083af7bd003b811f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x577bc2c8c6beb57a # load x3 with value 0x577bc2c8c6beb57a
sw x3, 0(x2) # store 0x577bc2c8c6beb57a in memory
flh f25, 0(x2) # load 0x577bc2c8c6beb57a from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsgnjx.h f14, f25, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x26, 0xd5c9675d82e7a4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4df9a6b6ff9c2ea9 # load x3 with value 0x4df9a6b6ff9c2ea9
sw x3, 0(x2) # store 0x4df9a6b6ff9c2ea9 in memory
flh f4, 0(x2) # load 0x4df9a6b6ff9c2ea9 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fsgnjx.h f26, f4, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x28, 0x1058c0162081e898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdce87aaaad1031f4 # load x3 with value 0xdce87aaaad1031f4
sw x3, 0(x2) # store 0xdce87aaaad1031f4 in memory
flh f10, 0(x2) # load 0xdce87aaaad1031f4 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fsgnjx.h f28, f10, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x6, 0xf9d6e42813effccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfbe85ff74467f06 # load x3 with value 0xbfbe85ff74467f06
sw x3, 0(x2) # store 0xbfbe85ff74467f06 in memory
flh f13, 0(x2) # load 0xbfbe85ff74467f06 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fsgnjx.h f6, f13, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x23, 0x674eadb01339a785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27e5d07015fa1473 # load x3 with value 0x27e5d07015fa1473
sw x3, 0(x2) # store 0x27e5d07015fa1473 in memory
flh f15, 0(x2) # load 0x27e5d07015fa1473 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsgnjx.h f23, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x9, 0x68e09dcec73fccf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb03a68846c55ce # load x3 with value 0xbb03a68846c55ce
sw x3, 0(x2) # store 0xbb03a68846c55ce in memory
flh f8, 0(x2) # load 0xbb03a68846c55ce from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fsgnjx.h f9, f8, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x26, 0x8f572f317d3352e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b845fdf786297c1 # load x3 with value 0x7b845fdf786297c1
sw x3, 0(x2) # store 0x7b845fdf786297c1 in memory
flh f20, 0(x2) # load 0x7b845fdf786297c1 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fsgnjx.h f26, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x2, 0xe8332fab99b134f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed5651830db959b2 # load x3 with value 0xed5651830db959b2
sw x3, 0(x2) # store 0xed5651830db959b2 in memory
flh f5, 0(x2) # load 0xed5651830db959b2 from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fsgnjx.h f2, f5, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x2, 0xbb6ddad489e145e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38c7f6b33fa86268 # load x3 with value 0x38c7f6b33fa86268
sw x3, 0(x2) # store 0x38c7f6b33fa86268 in memory
flh f19, 0(x2) # load 0x38c7f6b33fa86268 from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsgnjx.h f2, f19, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x15, 0x38f031fd7ee3bba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8df7e05eee4fb1e3 # load x3 with value 0x8df7e05eee4fb1e3
sw x3, 0(x2) # store 0x8df7e05eee4fb1e3 in memory
flh f2, 0(x2) # load 0x8df7e05eee4fb1e3 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fsgnjx.h f15, f2, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x16, 0x0c3d162b2c4d8865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcebbbd81c498ff8 # load x3 with value 0xdcebbbd81c498ff8
sw x3, 0(x2) # store 0xdcebbbd81c498ff8 in memory
flh f14, 0(x2) # load 0xdcebbbd81c498ff8 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fsgnjx.h f16, f14, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x3, 0xa7198f2ddb8a7910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe94f4f10f82e6c44 # load x3 with value 0xe94f4f10f82e6c44
sw x3, 0(x2) # store 0xe94f4f10f82e6c44 in memory
flh f30, 0(x2) # load 0xe94f4f10f82e6c44 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fsgnjx.h f3, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x15, 0xc095da9988f3dd6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e95d7d9c4192bb9 # load x3 with value 0x9e95d7d9c4192bb9
sw x3, 0(x2) # store 0x9e95d7d9c4192bb9 in memory
flh f22, 0(x2) # load 0x9e95d7d9c4192bb9 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fsgnjx.h f15, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x16, 0xefca3642d8a5a253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee0696961958a5cf # load x3 with value 0xee0696961958a5cf
sw x3, 0(x2) # store 0xee0696961958a5cf in memory
flh f20, 0(x2) # load 0xee0696961958a5cf from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsgnjx.h f16, f20, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x19, 0x24bcb5d4c3f3bea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c7db6d968cb7569 # load x3 with value 0x3c7db6d968cb7569
sw x3, 0(x2) # store 0x3c7db6d968cb7569 in memory
flh f22, 0(x2) # load 0x3c7db6d968cb7569 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsgnjx.h f19, f22, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x22, 0x598b61d3529b84fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f3ffe22132e4ddf # load x3 with value 0x1f3ffe22132e4ddf
sw x3, 0(x2) # store 0x1f3ffe22132e4ddf in memory
flh f17, 0(x2) # load 0x1f3ffe22132e4ddf from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fsgnjx.h f22, f17, f4 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xd0a4cdda246cbbac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf1ffdad7fcd8013 # load x3 with value 0xdf1ffdad7fcd8013
sw x3, 0(x2) # store 0xdf1ffdad7fcd8013 in memory
flh f29, 0(x2) # load 0xdf1ffdad7fcd8013 from memory into f29
li x3, 0xaf993b60b3eb5c30 # load x3 with value 0xaf993b60b3eb5c30
sw x3, 0(x2) # store 0xaf993b60b3eb5c30 in memory
flh f1, 0(x2) # load 0xaf993b60b3eb5c30 from memory into f1
fsgnjx.h f0, f29, f1 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x9861f6d709c44f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa56bea8ee20f3e42 # load x3 with value 0xa56bea8ee20f3e42
sw x3, 0(x2) # store 0xa56bea8ee20f3e42 in memory
flh f11, 0(x2) # load 0xa56bea8ee20f3e42 from memory into f11
li x3, 0x6928a0802262e162 # load x3 with value 0x6928a0802262e162
sw x3, 0(x2) # store 0x6928a0802262e162 in memory
flh f22, 0(x2) # load 0x6928a0802262e162 from memory into f22
fsgnjx.h f1, f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x4aa7b2a74b8c2005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5d96b924818b6a # load x3 with value 0x7b5d96b924818b6a
sw x3, 0(x2) # store 0x7b5d96b924818b6a in memory
flh f14, 0(x2) # load 0x7b5d96b924818b6a from memory into f14
li x3, 0xaede2ed2194fa72e # load x3 with value 0xaede2ed2194fa72e
sw x3, 0(x2) # store 0xaede2ed2194fa72e in memory
flh f7, 0(x2) # load 0xaede2ed2194fa72e from memory into f7
fsgnjx.h f2, f14, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x4984bf86de629b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd4ddaeb62eae0bc # load x3 with value 0xbd4ddaeb62eae0bc
sw x3, 0(x2) # store 0xbd4ddaeb62eae0bc in memory
flh f27, 0(x2) # load 0xbd4ddaeb62eae0bc from memory into f27
li x3, 0xeea22460f87bcd72 # load x3 with value 0xeea22460f87bcd72
sw x3, 0(x2) # store 0xeea22460f87bcd72 in memory
flh f3, 0(x2) # load 0xeea22460f87bcd72 from memory into f3
fsgnjx.h f3, f27, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x03f120df7d183991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34a3d37b552c8a9 # load x3 with value 0x34a3d37b552c8a9
sw x3, 0(x2) # store 0x34a3d37b552c8a9 in memory
flh f2, 0(x2) # load 0x34a3d37b552c8a9 from memory into f2
li x3, 0xfc00bab5d32002f5 # load x3 with value 0xfc00bab5d32002f5
sw x3, 0(x2) # store 0xfc00bab5d32002f5 in memory
flh f1, 0(x2) # load 0xfc00bab5d32002f5 from memory into f1
fsgnjx.h f4, f2, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xd1af2ce6312f13df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35fe2fd6e73bc3cd # load x3 with value 0x35fe2fd6e73bc3cd
sw x3, 0(x2) # store 0x35fe2fd6e73bc3cd in memory
flh f18, 0(x2) # load 0x35fe2fd6e73bc3cd from memory into f18
li x3, 0xd9f38e9e0723257c # load x3 with value 0xd9f38e9e0723257c
sw x3, 0(x2) # store 0xd9f38e9e0723257c in memory
flh f19, 0(x2) # load 0xd9f38e9e0723257c from memory into f19
fsgnjx.h f5, f18, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x48543df6a8a7f3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ea119d419b576a1 # load x3 with value 0x9ea119d419b576a1
sw x3, 0(x2) # store 0x9ea119d419b576a1 in memory
flh f8, 0(x2) # load 0x9ea119d419b576a1 from memory into f8
li x3, 0x186e8063b8cbc576 # load x3 with value 0x186e8063b8cbc576
sw x3, 0(x2) # store 0x186e8063b8cbc576 in memory
flh f11, 0(x2) # load 0x186e8063b8cbc576 from memory into f11
fsgnjx.h f6, f8, f11 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x974f0445dc125422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f8e3fc0d87d5e8 # load x3 with value 0x3f8e3fc0d87d5e8
sw x3, 0(x2) # store 0x3f8e3fc0d87d5e8 in memory
flh f9, 0(x2) # load 0x3f8e3fc0d87d5e8 from memory into f9
li x3, 0xb983bc2be3df9bcc # load x3 with value 0xb983bc2be3df9bcc
sw x3, 0(x2) # store 0xb983bc2be3df9bcc in memory
flh f13, 0(x2) # load 0xb983bc2be3df9bcc from memory into f13
fsgnjx.h f7, f9, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x175f5f5ea696ff2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf6cb2e0dc949fe6 # load x3 with value 0xdf6cb2e0dc949fe6
sw x3, 0(x2) # store 0xdf6cb2e0dc949fe6 in memory
flh f28, 0(x2) # load 0xdf6cb2e0dc949fe6 from memory into f28
li x3, 0xc4519832f22870e # load x3 with value 0xc4519832f22870e
sw x3, 0(x2) # store 0xc4519832f22870e in memory
flh f8, 0(x2) # load 0xc4519832f22870e from memory into f8
fsgnjx.h f8, f28, f8 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x69b9e12d22c08153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd269fb3e24fe3dee # load x3 with value 0xd269fb3e24fe3dee
sw x3, 0(x2) # store 0xd269fb3e24fe3dee in memory
flh f2, 0(x2) # load 0xd269fb3e24fe3dee from memory into f2
li x3, 0xe357a0df97982afc # load x3 with value 0xe357a0df97982afc
sw x3, 0(x2) # store 0xe357a0df97982afc in memory
flh f8, 0(x2) # load 0xe357a0df97982afc from memory into f8
fsgnjx.h f9, f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x34214e679e397279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8d2f19a95207112 # load x3 with value 0xe8d2f19a95207112
sw x3, 0(x2) # store 0xe8d2f19a95207112 in memory
flh f23, 0(x2) # load 0xe8d2f19a95207112 from memory into f23
li x3, 0x5ac6db91f89b030e # load x3 with value 0x5ac6db91f89b030e
sw x3, 0(x2) # store 0x5ac6db91f89b030e in memory
flh f22, 0(x2) # load 0x5ac6db91f89b030e from memory into f22
fsgnjx.h f10, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x750baa41bc27555a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec54aaf3c4c69850 # load x3 with value 0xec54aaf3c4c69850
sw x3, 0(x2) # store 0xec54aaf3c4c69850 in memory
flh f14, 0(x2) # load 0xec54aaf3c4c69850 from memory into f14
li x3, 0x55544edc33b65101 # load x3 with value 0x55544edc33b65101
sw x3, 0(x2) # store 0x55544edc33b65101 in memory
flh f18, 0(x2) # load 0x55544edc33b65101 from memory into f18
fsgnjx.h f11, f14, f18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc3c1152fd462645c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa841ccc74e8150ac # load x3 with value 0xa841ccc74e8150ac
sw x3, 0(x2) # store 0xa841ccc74e8150ac in memory
flh f10, 0(x2) # load 0xa841ccc74e8150ac from memory into f10
li x3, 0x3a9c8cc907463821 # load x3 with value 0x3a9c8cc907463821
sw x3, 0(x2) # store 0x3a9c8cc907463821 in memory
flh f31, 0(x2) # load 0x3a9c8cc907463821 from memory into f31
fsgnjx.h f12, f10, f31 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xba5024a82059f7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x194195627574ba33 # load x3 with value 0x194195627574ba33
sw x3, 0(x2) # store 0x194195627574ba33 in memory
flh f17, 0(x2) # load 0x194195627574ba33 from memory into f17
li x3, 0xb35f58bae797eba # load x3 with value 0xb35f58bae797eba
sw x3, 0(x2) # store 0xb35f58bae797eba in memory
flh f18, 0(x2) # load 0xb35f58bae797eba from memory into f18
fsgnjx.h f13, f17, f18 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x2ebe0650b1fe5f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf85e2a5c6c3f674f # load x3 with value 0xf85e2a5c6c3f674f
sw x3, 0(x2) # store 0xf85e2a5c6c3f674f in memory
flh f8, 0(x2) # load 0xf85e2a5c6c3f674f from memory into f8
li x3, 0xfeb4d36b69203788 # load x3 with value 0xfeb4d36b69203788
sw x3, 0(x2) # store 0xfeb4d36b69203788 in memory
flh f27, 0(x2) # load 0xfeb4d36b69203788 from memory into f27
fsgnjx.h f14, f8, f27 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4f88c267d496d5c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd65b8d8bee56c4b3 # load x3 with value 0xd65b8d8bee56c4b3
sw x3, 0(x2) # store 0xd65b8d8bee56c4b3 in memory
flh f10, 0(x2) # load 0xd65b8d8bee56c4b3 from memory into f10
li x3, 0xcb69ca2e2e798236 # load x3 with value 0xcb69ca2e2e798236
sw x3, 0(x2) # store 0xcb69ca2e2e798236 in memory
flh f16, 0(x2) # load 0xcb69ca2e2e798236 from memory into f16
fsgnjx.h f15, f10, f16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x60eb02bc24c27c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bb0b1e77cd31b7d # load x3 with value 0x3bb0b1e77cd31b7d
sw x3, 0(x2) # store 0x3bb0b1e77cd31b7d in memory
flh f16, 0(x2) # load 0x3bb0b1e77cd31b7d from memory into f16
li x3, 0x5a4879d40c8b830f # load x3 with value 0x5a4879d40c8b830f
sw x3, 0(x2) # store 0x5a4879d40c8b830f in memory
flh f18, 0(x2) # load 0x5a4879d40c8b830f from memory into f18
fsgnjx.h f16, f16, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x6007986e17d71452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9df7b15093ff407f # load x3 with value 0x9df7b15093ff407f
sw x3, 0(x2) # store 0x9df7b15093ff407f in memory
flh f12, 0(x2) # load 0x9df7b15093ff407f from memory into f12
li x3, 0xf9e3898ccdc49c8c # load x3 with value 0xf9e3898ccdc49c8c
sw x3, 0(x2) # store 0xf9e3898ccdc49c8c in memory
flh f17, 0(x2) # load 0xf9e3898ccdc49c8c from memory into f17
fsgnjx.h f17, f12, f17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x6b18d4951e754885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x199d7e2feb3d081 # load x3 with value 0x199d7e2feb3d081
sw x3, 0(x2) # store 0x199d7e2feb3d081 in memory
flh f24, 0(x2) # load 0x199d7e2feb3d081 from memory into f24
li x3, 0xc140cea9307b4880 # load x3 with value 0xc140cea9307b4880
sw x3, 0(x2) # store 0xc140cea9307b4880 in memory
flh f29, 0(x2) # load 0xc140cea9307b4880 from memory into f29
fsgnjx.h f18, f24, f29 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x31a4f4b8fb23421c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7df3c1ebeee7f62e # load x3 with value 0x7df3c1ebeee7f62e
sw x3, 0(x2) # store 0x7df3c1ebeee7f62e in memory
flh f21, 0(x2) # load 0x7df3c1ebeee7f62e from memory into f21
li x3, 0xadf08fc006a6fe7b # load x3 with value 0xadf08fc006a6fe7b
sw x3, 0(x2) # store 0xadf08fc006a6fe7b in memory
flh f19, 0(x2) # load 0xadf08fc006a6fe7b from memory into f19
fsgnjx.h f19, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x4015e3ee61d4eb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a116ccf0610bad0 # load x3 with value 0x8a116ccf0610bad0
sw x3, 0(x2) # store 0x8a116ccf0610bad0 in memory
flh f25, 0(x2) # load 0x8a116ccf0610bad0 from memory into f25
li x3, 0x371868fced176572 # load x3 with value 0x371868fced176572
sw x3, 0(x2) # store 0x371868fced176572 in memory
flh f10, 0(x2) # load 0x371868fced176572 from memory into f10
fsgnjx.h f20, f25, f10 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xcca62e08e8cf591f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6952d8707e06c06 # load x3 with value 0xb6952d8707e06c06
sw x3, 0(x2) # store 0xb6952d8707e06c06 in memory
flh f10, 0(x2) # load 0xb6952d8707e06c06 from memory into f10
li x3, 0x520c5302814cecb5 # load x3 with value 0x520c5302814cecb5
sw x3, 0(x2) # store 0x520c5302814cecb5 in memory
flh f15, 0(x2) # load 0x520c5302814cecb5 from memory into f15
fsgnjx.h f21, f10, f15 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xee8950e1b5ebb7bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa69485de6547ec2c # load x3 with value 0xa69485de6547ec2c
sw x3, 0(x2) # store 0xa69485de6547ec2c in memory
flh f9, 0(x2) # load 0xa69485de6547ec2c from memory into f9
li x3, 0xfaa580098d3f7bcf # load x3 with value 0xfaa580098d3f7bcf
sw x3, 0(x2) # store 0xfaa580098d3f7bcf in memory
flh f19, 0(x2) # load 0xfaa580098d3f7bcf from memory into f19
fsgnjx.h f22, f9, f19 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x78fd32def882488c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ab78d8f59a7f20c # load x3 with value 0x8ab78d8f59a7f20c
sw x3, 0(x2) # store 0x8ab78d8f59a7f20c in memory
flh f2, 0(x2) # load 0x8ab78d8f59a7f20c from memory into f2
li x3, 0x787bb662b7a6a716 # load x3 with value 0x787bb662b7a6a716
sw x3, 0(x2) # store 0x787bb662b7a6a716 in memory
flh f13, 0(x2) # load 0x787bb662b7a6a716 from memory into f13
fsgnjx.h f23, f2, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x1c27583901f1ad74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x950e6ba0455bd2af # load x3 with value 0x950e6ba0455bd2af
sw x3, 0(x2) # store 0x950e6ba0455bd2af in memory
flh f15, 0(x2) # load 0x950e6ba0455bd2af from memory into f15
li x3, 0x29eb92e1b9917a8c # load x3 with value 0x29eb92e1b9917a8c
sw x3, 0(x2) # store 0x29eb92e1b9917a8c in memory
flh f25, 0(x2) # load 0x29eb92e1b9917a8c from memory into f25
fsgnjx.h f24, f15, f25 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x4d2e2e491e7d58ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59aeeb6bf0372aae # load x3 with value 0x59aeeb6bf0372aae
sw x3, 0(x2) # store 0x59aeeb6bf0372aae in memory
flh f23, 0(x2) # load 0x59aeeb6bf0372aae from memory into f23
li x3, 0xb0d83d6e6642d872 # load x3 with value 0xb0d83d6e6642d872
sw x3, 0(x2) # store 0xb0d83d6e6642d872 in memory
flh f11, 0(x2) # load 0xb0d83d6e6642d872 from memory into f11
fsgnjx.h f25, f23, f11 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbfc05fc9763a452d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8182ec45375cbe48 # load x3 with value 0x8182ec45375cbe48
sw x3, 0(x2) # store 0x8182ec45375cbe48 in memory
flh f23, 0(x2) # load 0x8182ec45375cbe48 from memory into f23
li x3, 0x5f0be76d77e656c4 # load x3 with value 0x5f0be76d77e656c4
sw x3, 0(x2) # store 0x5f0be76d77e656c4 in memory
flh f3, 0(x2) # load 0x5f0be76d77e656c4 from memory into f3
fsgnjx.h f26, f23, f3 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x9094d0e383fc1799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc04e9ab41a6871ae # load x3 with value 0xc04e9ab41a6871ae
sw x3, 0(x2) # store 0xc04e9ab41a6871ae in memory
flh f26, 0(x2) # load 0xc04e9ab41a6871ae from memory into f26
li x3, 0x2e09f4915bebf39d # load x3 with value 0x2e09f4915bebf39d
sw x3, 0(x2) # store 0x2e09f4915bebf39d in memory
flh f7, 0(x2) # load 0x2e09f4915bebf39d from memory into f7
fsgnjx.h f27, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xcf38ccecb8e53ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab0ce21f7a3a52a2 # load x3 with value 0xab0ce21f7a3a52a2
sw x3, 0(x2) # store 0xab0ce21f7a3a52a2 in memory
flh f14, 0(x2) # load 0xab0ce21f7a3a52a2 from memory into f14
li x3, 0x7028fe020a4eeb94 # load x3 with value 0x7028fe020a4eeb94
sw x3, 0(x2) # store 0x7028fe020a4eeb94 in memory
flh f10, 0(x2) # load 0x7028fe020a4eeb94 from memory into f10
fsgnjx.h f28, f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xbc460ee613955269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41ed0446c0bc84d5 # load x3 with value 0x41ed0446c0bc84d5
sw x3, 0(x2) # store 0x41ed0446c0bc84d5 in memory
flh f1, 0(x2) # load 0x41ed0446c0bc84d5 from memory into f1
li x3, 0x5da40ee0d8615e7a # load x3 with value 0x5da40ee0d8615e7a
sw x3, 0(x2) # store 0x5da40ee0d8615e7a in memory
flh f12, 0(x2) # load 0x5da40ee0d8615e7a from memory into f12
fsgnjx.h f29, f1, f12 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x326762da3c98485a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d4ad28b41dd4257 # load x3 with value 0x9d4ad28b41dd4257
sw x3, 0(x2) # store 0x9d4ad28b41dd4257 in memory
flh f7, 0(x2) # load 0x9d4ad28b41dd4257 from memory into f7
li x3, 0x1d96ae80c94572dd # load x3 with value 0x1d96ae80c94572dd
sw x3, 0(x2) # store 0x1d96ae80c94572dd in memory
flh f17, 0(x2) # load 0x1d96ae80c94572dd from memory into f17
fsgnjx.h f30, f7, f17 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xcae974960d27d911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf68a08bcb272ff71 # load x3 with value 0xf68a08bcb272ff71
sw x3, 0(x2) # store 0xf68a08bcb272ff71 in memory
flh f21, 0(x2) # load 0xf68a08bcb272ff71 from memory into f21
li x3, 0xa4bfe23bfc65d607 # load x3 with value 0xa4bfe23bfc65d607
sw x3, 0(x2) # store 0xa4bfe23bfc65d607 in memory
flh f10, 0(x2) # load 0xa4bfe23bfc65d607 from memory into f10
fsgnjx.h f31, f21, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x1, 0x9697f81c2389b1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe638c6a37b16d947 # load x3 with value 0xe638c6a37b16d947
sw x3, 0(x2) # store 0xe638c6a37b16d947 in memory
flh f0, 0(x2) # load 0xe638c6a37b16d947 from memory into f0
li x3, 0xb757fb981da9298e # load x3 with value 0xb757fb981da9298e
sw x3, 0(x2) # store 0xb757fb981da9298e in memory
flh f8, 0(x2) # load 0xb757fb981da9298e from memory into f8
fsgnjx.h f1, f0, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x7, 0x64d8c475f77ee2c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaee4515a884ef9db # load x3 with value 0xaee4515a884ef9db
sw x3, 0(x2) # store 0xaee4515a884ef9db in memory
flh f1, 0(x2) # load 0xaee4515a884ef9db from memory into f1
li x3, 0xeb52fa1a608e1590 # load x3 with value 0xeb52fa1a608e1590
sw x3, 0(x2) # store 0xeb52fa1a608e1590 in memory
flh f19, 0(x2) # load 0xeb52fa1a608e1590 from memory into f19
fsgnjx.h f7, f1, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x26, 0x41f51975211b34a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x491ff2024dccf6f9 # load x3 with value 0x491ff2024dccf6f9
sw x3, 0(x2) # store 0x491ff2024dccf6f9 in memory
flh f2, 0(x2) # load 0x491ff2024dccf6f9 from memory into f2
li x3, 0xa6d96be6b8564346 # load x3 with value 0xa6d96be6b8564346
sw x3, 0(x2) # store 0xa6d96be6b8564346 in memory
flh f19, 0(x2) # load 0xa6d96be6b8564346 from memory into f19
fsgnjx.h f26, f2, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x2fdeedec9b760332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x110ef014d5d9cb2b # load x3 with value 0x110ef014d5d9cb2b
sw x3, 0(x2) # store 0x110ef014d5d9cb2b in memory
flh f3, 0(x2) # load 0x110ef014d5d9cb2b from memory into f3
li x3, 0x96a9ed600c3bb788 # load x3 with value 0x96a9ed600c3bb788
sw x3, 0(x2) # store 0x96a9ed600c3bb788 in memory
flh f21, 0(x2) # load 0x96a9ed600c3bb788 from memory into f21
fsgnjx.h f25, f3, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x3, 0x462162c421575c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa73a6dfdda34639a # load x3 with value 0xa73a6dfdda34639a
sw x3, 0(x2) # store 0xa73a6dfdda34639a in memory
flh f4, 0(x2) # load 0xa73a6dfdda34639a from memory into f4
li x3, 0xc1682eadb6abed81 # load x3 with value 0xc1682eadb6abed81
sw x3, 0(x2) # store 0xc1682eadb6abed81 in memory
flh f26, 0(x2) # load 0xc1682eadb6abed81 from memory into f26
fsgnjx.h f3, f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x6, 0xe90d2b6514d89949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11122403c54331c # load x3 with value 0x11122403c54331c
sw x3, 0(x2) # store 0x11122403c54331c in memory
flh f5, 0(x2) # load 0x11122403c54331c from memory into f5
li x3, 0x8cd67e0d8ecaf778 # load x3 with value 0x8cd67e0d8ecaf778
sw x3, 0(x2) # store 0x8cd67e0d8ecaf778 in memory
flh f21, 0(x2) # load 0x8cd67e0d8ecaf778 from memory into f21
fsgnjx.h f6, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x5, 0x0023e875bf74ff60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x639def53ff28f35 # load x3 with value 0x639def53ff28f35
sw x3, 0(x2) # store 0x639def53ff28f35 in memory
flh f6, 0(x2) # load 0x639def53ff28f35 from memory into f6
li x3, 0x745cc965e5326531 # load x3 with value 0x745cc965e5326531
sw x3, 0(x2) # store 0x745cc965e5326531 in memory
flh f31, 0(x2) # load 0x745cc965e5326531 from memory into f31
fsgnjx.h f5, f6, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x5, 0x31bef56b4d36012d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x233bba6a31b2a5ec # load x3 with value 0x233bba6a31b2a5ec
sw x3, 0(x2) # store 0x233bba6a31b2a5ec in memory
flh f7, 0(x2) # load 0x233bba6a31b2a5ec from memory into f7
li x3, 0x4f6ec85adefefdeb # load x3 with value 0x4f6ec85adefefdeb
sw x3, 0(x2) # store 0x4f6ec85adefefdeb in memory
flh f12, 0(x2) # load 0x4f6ec85adefefdeb from memory into f12
fsgnjx.h f5, f7, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x20, 0x9612344903027c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8782240b382f78f # load x3 with value 0xd8782240b382f78f
sw x3, 0(x2) # store 0xd8782240b382f78f in memory
flh f8, 0(x2) # load 0xd8782240b382f78f from memory into f8
li x3, 0xe4582063b3a832bb # load x3 with value 0xe4582063b3a832bb
sw x3, 0(x2) # store 0xe4582063b3a832bb in memory
flh f29, 0(x2) # load 0xe4582063b3a832bb from memory into f29
fsgnjx.h f20, f8, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x17, 0x1d59ee02a75d0e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2111792f4f225945 # load x3 with value 0x2111792f4f225945
sw x3, 0(x2) # store 0x2111792f4f225945 in memory
flh f9, 0(x2) # load 0x2111792f4f225945 from memory into f9
li x3, 0xad661f09bdcefe59 # load x3 with value 0xad661f09bdcefe59
sw x3, 0(x2) # store 0xad661f09bdcefe59 in memory
flh f27, 0(x2) # load 0xad661f09bdcefe59 from memory into f27
fsgnjx.h f17, f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0xd482f997f4a671a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b6d0ca1ba133e44 # load x3 with value 0x9b6d0ca1ba133e44
sw x3, 0(x2) # store 0x9b6d0ca1ba133e44 in memory
flh f10, 0(x2) # load 0x9b6d0ca1ba133e44 from memory into f10
li x3, 0x656084c2bef726c # load x3 with value 0x656084c2bef726c
sw x3, 0(x2) # store 0x656084c2bef726c in memory
flh f13, 0(x2) # load 0x656084c2bef726c from memory into f13
fsgnjx.h f28, f10, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0x177bb54e95dfb586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45b5dc1ad56ef134 # load x3 with value 0x45b5dc1ad56ef134
sw x3, 0(x2) # store 0x45b5dc1ad56ef134 in memory
flh f11, 0(x2) # load 0x45b5dc1ad56ef134 from memory into f11
li x3, 0x7261150f837ccfe2 # load x3 with value 0x7261150f837ccfe2
sw x3, 0(x2) # store 0x7261150f837ccfe2 in memory
flh f9, 0(x2) # load 0x7261150f837ccfe2 from memory into f9
fsgnjx.h f14, f11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x14, 0xc0135520f0969711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca114e002a482ef1 # load x3 with value 0xca114e002a482ef1
sw x3, 0(x2) # store 0xca114e002a482ef1 in memory
flh f12, 0(x2) # load 0xca114e002a482ef1 from memory into f12
li x3, 0xfbcea7cf0eb332e3 # load x3 with value 0xfbcea7cf0eb332e3
sw x3, 0(x2) # store 0xfbcea7cf0eb332e3 in memory
flh f13, 0(x2) # load 0xfbcea7cf0eb332e3 from memory into f13
fsgnjx.h f14, f12, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x8, 0x17a63403a4edabc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8880cdd11b6f12dc # load x3 with value 0x8880cdd11b6f12dc
sw x3, 0(x2) # store 0x8880cdd11b6f12dc in memory
flh f13, 0(x2) # load 0x8880cdd11b6f12dc from memory into f13
li x3, 0x76cad7ae0f112cc # load x3 with value 0x76cad7ae0f112cc
sw x3, 0(x2) # store 0x76cad7ae0f112cc in memory
flh f24, 0(x2) # load 0x76cad7ae0f112cc from memory into f24
fsgnjx.h f8, f13, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x27, 0x2304480997e264df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b01d3f6e91c9d82 # load x3 with value 0x5b01d3f6e91c9d82
sw x3, 0(x2) # store 0x5b01d3f6e91c9d82 in memory
flh f14, 0(x2) # load 0x5b01d3f6e91c9d82 from memory into f14
li x3, 0x8c7d499a3dc803c8 # load x3 with value 0x8c7d499a3dc803c8
sw x3, 0(x2) # store 0x8c7d499a3dc803c8 in memory
flh f29, 0(x2) # load 0x8c7d499a3dc803c8 from memory into f29
fsgnjx.h f27, f14, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x19, 0x64f2364801129c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x633014435039fd2e # load x3 with value 0x633014435039fd2e
sw x3, 0(x2) # store 0x633014435039fd2e in memory
flh f15, 0(x2) # load 0x633014435039fd2e from memory into f15
li x3, 0xb7016678bd79d295 # load x3 with value 0xb7016678bd79d295
sw x3, 0(x2) # store 0xb7016678bd79d295 in memory
flh f25, 0(x2) # load 0xb7016678bd79d295 from memory into f25
fsgnjx.h f19, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x25, 0x442ddcc03d400d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3010baf664a14eb7 # load x3 with value 0x3010baf664a14eb7
sw x3, 0(x2) # store 0x3010baf664a14eb7 in memory
flh f16, 0(x2) # load 0x3010baf664a14eb7 from memory into f16
li x3, 0x87dcd529e80d996a # load x3 with value 0x87dcd529e80d996a
sw x3, 0(x2) # store 0x87dcd529e80d996a in memory
flh f8, 0(x2) # load 0x87dcd529e80d996a from memory into f8
fsgnjx.h f25, f16, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x10, 0xcbd5c4f63a0b1f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf23ed0f5591577fe # load x3 with value 0xf23ed0f5591577fe
sw x3, 0(x2) # store 0xf23ed0f5591577fe in memory
flh f17, 0(x2) # load 0xf23ed0f5591577fe from memory into f17
li x3, 0x557f8a5c1a5ca2f8 # load x3 with value 0x557f8a5c1a5ca2f8
sw x3, 0(x2) # store 0x557f8a5c1a5ca2f8 in memory
flh f13, 0(x2) # load 0x557f8a5c1a5ca2f8 from memory into f13
fsgnjx.h f10, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x25, 0x71cf4491193c7649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff4bcde13ccbad25 # load x3 with value 0xff4bcde13ccbad25
sw x3, 0(x2) # store 0xff4bcde13ccbad25 in memory
flh f18, 0(x2) # load 0xff4bcde13ccbad25 from memory into f18
li x3, 0xa085e7b8a8dd5956 # load x3 with value 0xa085e7b8a8dd5956
sw x3, 0(x2) # store 0xa085e7b8a8dd5956 in memory
flh f21, 0(x2) # load 0xa085e7b8a8dd5956 from memory into f21
fsgnjx.h f25, f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x6, 0xfc31edc52b718aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d84b9893362d442 # load x3 with value 0x1d84b9893362d442
sw x3, 0(x2) # store 0x1d84b9893362d442 in memory
flh f19, 0(x2) # load 0x1d84b9893362d442 from memory into f19
li x3, 0xe751b283f8416508 # load x3 with value 0xe751b283f8416508
sw x3, 0(x2) # store 0xe751b283f8416508 in memory
flh f21, 0(x2) # load 0xe751b283f8416508 from memory into f21
fsgnjx.h f6, f19, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x8, 0x8255366c561f2968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff84b56e460bd16f # load x3 with value 0xff84b56e460bd16f
sw x3, 0(x2) # store 0xff84b56e460bd16f in memory
flh f20, 0(x2) # load 0xff84b56e460bd16f from memory into f20
li x3, 0xd8c2fa6f53714500 # load x3 with value 0xd8c2fa6f53714500
sw x3, 0(x2) # store 0xd8c2fa6f53714500 in memory
flh f29, 0(x2) # load 0xd8c2fa6f53714500 from memory into f29
fsgnjx.h f8, f20, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x17, 0x232bcecb38b8f6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ea3d9d952402806 # load x3 with value 0x7ea3d9d952402806
sw x3, 0(x2) # store 0x7ea3d9d952402806 in memory
flh f21, 0(x2) # load 0x7ea3d9d952402806 from memory into f21
li x3, 0xa883ef3f816b6436 # load x3 with value 0xa883ef3f816b6436
sw x3, 0(x2) # store 0xa883ef3f816b6436 in memory
flh f3, 0(x2) # load 0xa883ef3f816b6436 from memory into f3
fsgnjx.h f17, f21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x6, 0x4bbff900ead55482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28f1b37d083e18ee # load x3 with value 0x28f1b37d083e18ee
sw x3, 0(x2) # store 0x28f1b37d083e18ee in memory
flh f22, 0(x2) # load 0x28f1b37d083e18ee from memory into f22
li x3, 0x6e7b63feb1eef30 # load x3 with value 0x6e7b63feb1eef30
sw x3, 0(x2) # store 0x6e7b63feb1eef30 in memory
flh f13, 0(x2) # load 0x6e7b63feb1eef30 from memory into f13
fsgnjx.h f6, f22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0x4bf4df2e723b7733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2c445b2ac2cc961 # load x3 with value 0xa2c445b2ac2cc961
sw x3, 0(x2) # store 0xa2c445b2ac2cc961 in memory
flh f23, 0(x2) # load 0xa2c445b2ac2cc961 from memory into f23
li x3, 0xd5dcd598bff87c41 # load x3 with value 0xd5dcd598bff87c41
sw x3, 0(x2) # store 0xd5dcd598bff87c41 in memory
flh f24, 0(x2) # load 0xd5dcd598bff87c41 from memory into f24
fsgnjx.h f28, f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x7, 0xde068807d61afff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a14a6f0c05593d4 # load x3 with value 0x1a14a6f0c05593d4
sw x3, 0(x2) # store 0x1a14a6f0c05593d4 in memory
flh f24, 0(x2) # load 0x1a14a6f0c05593d4 from memory into f24
li x3, 0xe1ef1c50bbb5ac8d # load x3 with value 0xe1ef1c50bbb5ac8d
sw x3, 0(x2) # store 0xe1ef1c50bbb5ac8d in memory
flh f3, 0(x2) # load 0xe1ef1c50bbb5ac8d from memory into f3
fsgnjx.h f7, f24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x17, 0x31bfb419430598fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac65f72db2dc5b1b # load x3 with value 0xac65f72db2dc5b1b
sw x3, 0(x2) # store 0xac65f72db2dc5b1b in memory
flh f25, 0(x2) # load 0xac65f72db2dc5b1b from memory into f25
li x3, 0x80edf419eb4cae29 # load x3 with value 0x80edf419eb4cae29
sw x3, 0(x2) # store 0x80edf419eb4cae29 in memory
flh f31, 0(x2) # load 0x80edf419eb4cae29 from memory into f31
fsgnjx.h f17, f25, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x31, 0xa6e535f481e62de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca76ad09b070eaad # load x3 with value 0xca76ad09b070eaad
sw x3, 0(x2) # store 0xca76ad09b070eaad in memory
flh f26, 0(x2) # load 0xca76ad09b070eaad from memory into f26
li x3, 0xc1c9f1e6a91dbc1f # load x3 with value 0xc1c9f1e6a91dbc1f
sw x3, 0(x2) # store 0xc1c9f1e6a91dbc1f in memory
flh f21, 0(x2) # load 0xc1c9f1e6a91dbc1f from memory into f21
fsgnjx.h f31, f26, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x28, 0xd4459e54a5ffc88c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d41ad36e3dcdfe # load x3 with value 0x3d41ad36e3dcdfe
sw x3, 0(x2) # store 0x3d41ad36e3dcdfe in memory
flh f27, 0(x2) # load 0x3d41ad36e3dcdfe from memory into f27
li x3, 0x2acd9cd89983862c # load x3 with value 0x2acd9cd89983862c
sw x3, 0(x2) # store 0x2acd9cd89983862c in memory
flh f10, 0(x2) # load 0x2acd9cd89983862c from memory into f10
fsgnjx.h f28, f27, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x17, 0x3636face255fe9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x791d072b112b1a34 # load x3 with value 0x791d072b112b1a34
sw x3, 0(x2) # store 0x791d072b112b1a34 in memory
flh f28, 0(x2) # load 0x791d072b112b1a34 from memory into f28
li x3, 0xadbe151bac2e4403 # load x3 with value 0xadbe151bac2e4403
sw x3, 0(x2) # store 0xadbe151bac2e4403 in memory
flh f30, 0(x2) # load 0xadbe151bac2e4403 from memory into f30
fsgnjx.h f17, f28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x14, 0xef9c4667f5c7d153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ddaf07baa8a6f3 # load x3 with value 0x5ddaf07baa8a6f3
sw x3, 0(x2) # store 0x5ddaf07baa8a6f3 in memory
flh f29, 0(x2) # load 0x5ddaf07baa8a6f3 from memory into f29
li x3, 0xf916410bb14eea0a # load x3 with value 0xf916410bb14eea0a
sw x3, 0(x2) # store 0xf916410bb14eea0a in memory
flh f19, 0(x2) # load 0xf916410bb14eea0a from memory into f19
fsgnjx.h f14, f29, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x29, 0x7eb7e44e93f26f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x729eb815500b0c4d # load x3 with value 0x729eb815500b0c4d
sw x3, 0(x2) # store 0x729eb815500b0c4d in memory
flh f30, 0(x2) # load 0x729eb815500b0c4d from memory into f30
li x3, 0xba31496997eef052 # load x3 with value 0xba31496997eef052
sw x3, 0(x2) # store 0xba31496997eef052 in memory
flh f28, 0(x2) # load 0xba31496997eef052 from memory into f28
fsgnjx.h f29, f30, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x2, 0xf5792b13493ad4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x586f05c76dd35328 # load x3 with value 0x586f05c76dd35328
sw x3, 0(x2) # store 0x586f05c76dd35328 in memory
flh f31, 0(x2) # load 0x586f05c76dd35328 from memory into f31
li x3, 0xca7a1d34c73bea46 # load x3 with value 0xca7a1d34c73bea46
sw x3, 0(x2) # store 0xca7a1d34c73bea46 in memory
flh f11, 0(x2) # load 0xca7a1d34c73bea46 from memory into f11
fsgnjx.h f2, f31, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x13, 0x88fffa1e91540964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d92b3e7c5c35c84 # load x3 with value 0x4d92b3e7c5c35c84
sw x3, 0(x2) # store 0x4d92b3e7c5c35c84 in memory
flh f31, 0(x2) # load 0x4d92b3e7c5c35c84 from memory into f31
li x3, 0x77e070becd0f914e # load x3 with value 0x77e070becd0f914e
sw x3, 0(x2) # store 0x77e070becd0f914e in memory
flh f0, 0(x2) # load 0x77e070becd0f914e from memory into f0
fsgnjx.h f13, f31, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x9, 0x5570ec267b0ebeab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf11cc8d802364de # load x3 with value 0xdf11cc8d802364de
sw x3, 0(x2) # store 0xdf11cc8d802364de in memory
flh f21, 0(x2) # load 0xdf11cc8d802364de from memory into f21
li x3, 0x54d13729bc31e3fe # load x3 with value 0x54d13729bc31e3fe
sw x3, 0(x2) # store 0x54d13729bc31e3fe in memory
flh f1, 0(x2) # load 0x54d13729bc31e3fe from memory into f1
fsgnjx.h f9, f21, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x4, 0xc800b680e3454311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc62b308c4226194 # load x3 with value 0xc62b308c4226194
sw x3, 0(x2) # store 0xc62b308c4226194 in memory
flh f10, 0(x2) # load 0xc62b308c4226194 from memory into f10
li x3, 0xcff0414e5be7d0ee # load x3 with value 0xcff0414e5be7d0ee
sw x3, 0(x2) # store 0xcff0414e5be7d0ee in memory
flh f2, 0(x2) # load 0xcff0414e5be7d0ee from memory into f2
fsgnjx.h f4, f10, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x12, 0x20b0ea3cae530345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c447ef84b0f4788 # load x3 with value 0x2c447ef84b0f4788
sw x3, 0(x2) # store 0x2c447ef84b0f4788 in memory
flh f23, 0(x2) # load 0x2c447ef84b0f4788 from memory into f23
li x3, 0x477430a3b856e646 # load x3 with value 0x477430a3b856e646
sw x3, 0(x2) # store 0x477430a3b856e646 in memory
flh f3, 0(x2) # load 0x477430a3b856e646 from memory into f3
fsgnjx.h f12, f23, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x3, 0x7e4570199b2e5a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0ab2312a82f5747 # load x3 with value 0xa0ab2312a82f5747
sw x3, 0(x2) # store 0xa0ab2312a82f5747 in memory
flh f30, 0(x2) # load 0xa0ab2312a82f5747 from memory into f30
li x3, 0x2b70615f6caed5f # load x3 with value 0x2b70615f6caed5f
sw x3, 0(x2) # store 0x2b70615f6caed5f in memory
flh f4, 0(x2) # load 0x2b70615f6caed5f from memory into f4
fsgnjx.h f3, f30, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x22, 0x5a3a42e3f244f765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d3ae31fe31acc5d # load x3 with value 0x1d3ae31fe31acc5d
sw x3, 0(x2) # store 0x1d3ae31fe31acc5d in memory
flh f13, 0(x2) # load 0x1d3ae31fe31acc5d from memory into f13
li x3, 0x7037ad8894854d6e # load x3 with value 0x7037ad8894854d6e
sw x3, 0(x2) # store 0x7037ad8894854d6e in memory
flh f5, 0(x2) # load 0x7037ad8894854d6e from memory into f5
fsgnjx.h f22, f13, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x29, 0x83eb27134a876b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf88557e2c1d2dac3 # load x3 with value 0xf88557e2c1d2dac3
sw x3, 0(x2) # store 0xf88557e2c1d2dac3 in memory
flh f15, 0(x2) # load 0xf88557e2c1d2dac3 from memory into f15
li x3, 0xaed386977afdb81d # load x3 with value 0xaed386977afdb81d
sw x3, 0(x2) # store 0xaed386977afdb81d in memory
flh f6, 0(x2) # load 0xaed386977afdb81d from memory into f6
fsgnjx.h f29, f15, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x10, 0xc001aaf2fe888734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc413ba5b4472889d # load x3 with value 0xc413ba5b4472889d
sw x3, 0(x2) # store 0xc413ba5b4472889d in memory
flh f20, 0(x2) # load 0xc413ba5b4472889d from memory into f20
li x3, 0x137df23d5a7b28b6 # load x3 with value 0x137df23d5a7b28b6
sw x3, 0(x2) # store 0x137df23d5a7b28b6 in memory
flh f7, 0(x2) # load 0x137df23d5a7b28b6 from memory into f7
fsgnjx.h f10, f20, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x4, 0x399a24f405eb0e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9e987280510cfc4 # load x3 with value 0xe9e987280510cfc4
sw x3, 0(x2) # store 0xe9e987280510cfc4 in memory
flh f25, 0(x2) # load 0xe9e987280510cfc4 from memory into f25
li x3, 0x8671dab3f2a05b65 # load x3 with value 0x8671dab3f2a05b65
sw x3, 0(x2) # store 0x8671dab3f2a05b65 in memory
flh f8, 0(x2) # load 0x8671dab3f2a05b65 from memory into f8
fsgnjx.h f4, f25, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x23, 0x62dfe00d5fffb4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22992b7c53ce7985 # load x3 with value 0x22992b7c53ce7985
sw x3, 0(x2) # store 0x22992b7c53ce7985 in memory
flh f10, 0(x2) # load 0x22992b7c53ce7985 from memory into f10
li x3, 0x7d7f4a529a653894 # load x3 with value 0x7d7f4a529a653894
sw x3, 0(x2) # store 0x7d7f4a529a653894 in memory
flh f9, 0(x2) # load 0x7d7f4a529a653894 from memory into f9
fsgnjx.h f23, f10, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x4, 0xfc2f127bfa4a8e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x302c38aef115d85f # load x3 with value 0x302c38aef115d85f
sw x3, 0(x2) # store 0x302c38aef115d85f in memory
flh f8, 0(x2) # load 0x302c38aef115d85f from memory into f8
li x3, 0x16aa65126604e580 # load x3 with value 0x16aa65126604e580
sw x3, 0(x2) # store 0x16aa65126604e580 in memory
flh f10, 0(x2) # load 0x16aa65126604e580 from memory into f10
fsgnjx.h f4, f8, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0xe97f24ede41738fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcda381838203bd92 # load x3 with value 0xcda381838203bd92
sw x3, 0(x2) # store 0xcda381838203bd92 in memory
flh f17, 0(x2) # load 0xcda381838203bd92 from memory into f17
li x3, 0x45da75af17b4245 # load x3 with value 0x45da75af17b4245
sw x3, 0(x2) # store 0x45da75af17b4245 in memory
flh f11, 0(x2) # load 0x45da75af17b4245 from memory into f11
fsgnjx.h f4, f17, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x31, 0xa0d63130a4a7509c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a9cd0b2318f866c # load x3 with value 0x1a9cd0b2318f866c
sw x3, 0(x2) # store 0x1a9cd0b2318f866c in memory
flh f15, 0(x2) # load 0x1a9cd0b2318f866c from memory into f15
li x3, 0xccf35e6e142f01bc # load x3 with value 0xccf35e6e142f01bc
sw x3, 0(x2) # store 0xccf35e6e142f01bc in memory
flh f12, 0(x2) # load 0xccf35e6e142f01bc from memory into f12
fsgnjx.h f31, f15, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x23, 0x96c74fc9ee29773c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81c3e27b47ad4fd # load x3 with value 0x81c3e27b47ad4fd
sw x3, 0(x2) # store 0x81c3e27b47ad4fd in memory
flh f5, 0(x2) # load 0x81c3e27b47ad4fd from memory into f5
li x3, 0x32011622954971ce # load x3 with value 0x32011622954971ce
sw x3, 0(x2) # store 0x32011622954971ce in memory
flh f13, 0(x2) # load 0x32011622954971ce from memory into f13
fsgnjx.h f23, f5, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x4, 0xb2d3b2fd1ee516c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5cd77fd40b2f14f # load x3 with value 0xe5cd77fd40b2f14f
sw x3, 0(x2) # store 0xe5cd77fd40b2f14f in memory
flh f6, 0(x2) # load 0xe5cd77fd40b2f14f from memory into f6
li x3, 0x7154e756d1824f51 # load x3 with value 0x7154e756d1824f51
sw x3, 0(x2) # store 0x7154e756d1824f51 in memory
flh f14, 0(x2) # load 0x7154e756d1824f51 from memory into f14
fsgnjx.h f4, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x20, 0xbf02ac936a9d3c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9201781298f88505 # load x3 with value 0x9201781298f88505
sw x3, 0(x2) # store 0x9201781298f88505 in memory
flh f7, 0(x2) # load 0x9201781298f88505 from memory into f7
li x3, 0xf8c51a1f8ae50779 # load x3 with value 0xf8c51a1f8ae50779
sw x3, 0(x2) # store 0xf8c51a1f8ae50779 in memory
flh f15, 0(x2) # load 0xf8c51a1f8ae50779 from memory into f15
fsgnjx.h f20, f7, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x6, 0xf027e440728852a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x510ae8733b0806d # load x3 with value 0x510ae8733b0806d
sw x3, 0(x2) # store 0x510ae8733b0806d in memory
flh f12, 0(x2) # load 0x510ae8733b0806d from memory into f12
li x3, 0x324048ce2b330a4d # load x3 with value 0x324048ce2b330a4d
sw x3, 0(x2) # store 0x324048ce2b330a4d in memory
flh f16, 0(x2) # load 0x324048ce2b330a4d from memory into f16
fsgnjx.h f6, f12, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x3, 0xc4c99490c0a1a6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa734f50c42d1265 # load x3 with value 0xaa734f50c42d1265
sw x3, 0(x2) # store 0xaa734f50c42d1265 in memory
flh f31, 0(x2) # load 0xaa734f50c42d1265 from memory into f31
li x3, 0xe0c4a8bb75c8c19e # load x3 with value 0xe0c4a8bb75c8c19e
sw x3, 0(x2) # store 0xe0c4a8bb75c8c19e in memory
flh f17, 0(x2) # load 0xe0c4a8bb75c8c19e from memory into f17
fsgnjx.h f3, f31, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0xc7a73dd48d785bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0d044e363752818 # load x3 with value 0xa0d044e363752818
sw x3, 0(x2) # store 0xa0d044e363752818 in memory
flh f9, 0(x2) # load 0xa0d044e363752818 from memory into f9
li x3, 0xca02aeac2de72e51 # load x3 with value 0xca02aeac2de72e51
sw x3, 0(x2) # store 0xca02aeac2de72e51 in memory
flh f18, 0(x2) # load 0xca02aeac2de72e51 from memory into f18
fsgnjx.h f18, f9, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x24, 0x657404e3b109894f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5367a58aa2b0e62 # load x3 with value 0xf5367a58aa2b0e62
sw x3, 0(x2) # store 0xf5367a58aa2b0e62 in memory
flh f22, 0(x2) # load 0xf5367a58aa2b0e62 from memory into f22
li x3, 0x5b307542e818c318 # load x3 with value 0x5b307542e818c318
sw x3, 0(x2) # store 0x5b307542e818c318 in memory
flh f19, 0(x2) # load 0x5b307542e818c318 from memory into f19
fsgnjx.h f24, f22, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x22, 0xcb2214bc35ccdd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5903b0638fc632e5 # load x3 with value 0x5903b0638fc632e5
sw x3, 0(x2) # store 0x5903b0638fc632e5 in memory
flh f25, 0(x2) # load 0x5903b0638fc632e5 from memory into f25
li x3, 0xf65b32630eea0dab # load x3 with value 0xf65b32630eea0dab
sw x3, 0(x2) # store 0xf65b32630eea0dab in memory
flh f20, 0(x2) # load 0xf65b32630eea0dab from memory into f20
fsgnjx.h f22, f25, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x28, 0x141b2d5b5057fb55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda37bee201e78bb0 # load x3 with value 0xda37bee201e78bb0
sw x3, 0(x2) # store 0xda37bee201e78bb0 in memory
flh f4, 0(x2) # load 0xda37bee201e78bb0 from memory into f4
li x3, 0x5a12f727eea9f0ab # load x3 with value 0x5a12f727eea9f0ab
sw x3, 0(x2) # store 0x5a12f727eea9f0ab in memory
flh f21, 0(x2) # load 0x5a12f727eea9f0ab from memory into f21
fsgnjx.h f28, f4, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x27, 0xf3e19d2f08d605ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f9676bfc87d6b3 # load x3 with value 0x47f9676bfc87d6b3
sw x3, 0(x2) # store 0x47f9676bfc87d6b3 in memory
flh f9, 0(x2) # load 0x47f9676bfc87d6b3 from memory into f9
li x3, 0xace426feb73a636f # load x3 with value 0xace426feb73a636f
sw x3, 0(x2) # store 0xace426feb73a636f in memory
flh f22, 0(x2) # load 0xace426feb73a636f from memory into f22
fsgnjx.h f27, f9, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x18, 0x61c28aae1623fc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32e44839cac92c87 # load x3 with value 0x32e44839cac92c87
sw x3, 0(x2) # store 0x32e44839cac92c87 in memory
flh f7, 0(x2) # load 0x32e44839cac92c87 from memory into f7
li x3, 0x9a9139dd07b60369 # load x3 with value 0x9a9139dd07b60369
sw x3, 0(x2) # store 0x9a9139dd07b60369 in memory
flh f23, 0(x2) # load 0x9a9139dd07b60369 from memory into f23
fsgnjx.h f18, f7, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x23, 0x9534666849722bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3aa70e899b13d39 # load x3 with value 0xf3aa70e899b13d39
sw x3, 0(x2) # store 0xf3aa70e899b13d39 in memory
flh f22, 0(x2) # load 0xf3aa70e899b13d39 from memory into f22
li x3, 0x7aa9742c33624dd0 # load x3 with value 0x7aa9742c33624dd0
sw x3, 0(x2) # store 0x7aa9742c33624dd0 in memory
flh f24, 0(x2) # load 0x7aa9742c33624dd0 from memory into f24
fsgnjx.h f23, f22, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x22, 0x6b4a43a1fd14f6b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13e7f6a515e53cf # load x3 with value 0x13e7f6a515e53cf
sw x3, 0(x2) # store 0x13e7f6a515e53cf in memory
flh f23, 0(x2) # load 0x13e7f6a515e53cf from memory into f23
li x3, 0xf6935787f274f497 # load x3 with value 0xf6935787f274f497
sw x3, 0(x2) # store 0xf6935787f274f497 in memory
flh f25, 0(x2) # load 0xf6935787f274f497 from memory into f25
fsgnjx.h f22, f23, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x4, 0x642f16d580f12c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a35a3d4917c1344 # load x3 with value 0x5a35a3d4917c1344
sw x3, 0(x2) # store 0x5a35a3d4917c1344 in memory
flh f13, 0(x2) # load 0x5a35a3d4917c1344 from memory into f13
li x3, 0xfa7a1f93b158ce14 # load x3 with value 0xfa7a1f93b158ce14
sw x3, 0(x2) # store 0xfa7a1f93b158ce14 in memory
flh f26, 0(x2) # load 0xfa7a1f93b158ce14 from memory into f26
fsgnjx.h f4, f13, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x14, 0x64b9f14f980845f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6782aba42bdd09 # load x3 with value 0x6782aba42bdd09
sw x3, 0(x2) # store 0x6782aba42bdd09 in memory
flh f22, 0(x2) # load 0x6782aba42bdd09 from memory into f22
li x3, 0xdc38f1cb6e7a5bcb # load x3 with value 0xdc38f1cb6e7a5bcb
sw x3, 0(x2) # store 0xdc38f1cb6e7a5bcb in memory
flh f27, 0(x2) # load 0xdc38f1cb6e7a5bcb from memory into f27
fsgnjx.h f14, f22, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0xeea6dcb987724352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21cfe3532acf5ed # load x3 with value 0x21cfe3532acf5ed
sw x3, 0(x2) # store 0x21cfe3532acf5ed in memory
flh f22, 0(x2) # load 0x21cfe3532acf5ed from memory into f22
li x3, 0xb45686f08641ff0d # load x3 with value 0xb45686f08641ff0d
sw x3, 0(x2) # store 0xb45686f08641ff0d in memory
flh f28, 0(x2) # load 0xb45686f08641ff0d from memory into f28
fsgnjx.h f6, f22, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x8, 0x8de775c50d0ffcad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x898571302075efe5 # load x3 with value 0x898571302075efe5
sw x3, 0(x2) # store 0x898571302075efe5 in memory
flh f12, 0(x2) # load 0x898571302075efe5 from memory into f12
li x3, 0x979c6b4289ebdc6a # load x3 with value 0x979c6b4289ebdc6a
sw x3, 0(x2) # store 0x979c6b4289ebdc6a in memory
flh f29, 0(x2) # load 0x979c6b4289ebdc6a from memory into f29
fsgnjx.h f8, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x17, 0x6cf0a724119932c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x612e9c22e068753d # load x3 with value 0x612e9c22e068753d
sw x3, 0(x2) # store 0x612e9c22e068753d in memory
flh f21, 0(x2) # load 0x612e9c22e068753d from memory into f21
li x3, 0x22a85be8b192d26 # load x3 with value 0x22a85be8b192d26
sw x3, 0(x2) # store 0x22a85be8b192d26 in memory
flh f30, 0(x2) # load 0x22a85be8b192d26 from memory into f30
fsgnjx.h f17, f21, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x25, 0xaf76bde7ab28a87d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x840dbee194895e96 # load x3 with value 0x840dbee194895e96
sw x3, 0(x2) # store 0x840dbee194895e96 in memory
flh f2, 0(x2) # load 0x840dbee194895e96 from memory into f2
li x3, 0xa98d33c699b9efc5 # load x3 with value 0xa98d33c699b9efc5
sw x3, 0(x2) # store 0xa98d33c699b9efc5 in memory
flh f31, 0(x2) # load 0xa98d33c699b9efc5 from memory into f31
fsgnjx.h f25, f2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
