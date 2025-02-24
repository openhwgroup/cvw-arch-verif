///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fclass.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.138610
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
li x0, 0xce9837eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc748bbaf # load x3 with value 0xc748bbaf
sw x3, 0(x2) # store 0xc748bbaf in memory
flw f24, 0(x2) # load 0xc748bbaf from memory into f24
fclass.s x0, f24 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb7fdf750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fa90944 # load x3 with value 0x3fa90944
sw x3, 0(x2) # store 0x3fa90944 in memory
flw f14, 0(x2) # load 0x3fa90944 from memory into f14
fclass.s x1, f14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x190916d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65096c8f # load x3 with value 0x65096c8f
sw x3, 0(x2) # store 0x65096c8f in memory
flw f25, 0(x2) # load 0x65096c8f from memory into f25
fclass.s x2, f25 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb92e6d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5681f5f7 # load x3 with value 0x5681f5f7
sw x3, 0(x2) # store 0x5681f5f7 in memory
flw f14, 0(x2) # load 0x5681f5f7 from memory into f14
fclass.s x3, f14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x88cf3689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0e1cc05 # load x3 with value 0xe0e1cc05
sw x3, 0(x2) # store 0xe0e1cc05 in memory
flw f31, 0(x2) # load 0xe0e1cc05 from memory into f31
fclass.s x4, f31 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x1fa55609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d415fb6 # load x3 with value 0x4d415fb6
sw x3, 0(x2) # store 0x4d415fb6 in memory
flw f28, 0(x2) # load 0x4d415fb6 from memory into f28
fclass.s x5, f28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf3cd6681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4899144b # load x3 with value 0x4899144b
sw x3, 0(x2) # store 0x4899144b in memory
flw f8, 0(x2) # load 0x4899144b from memory into f8
fclass.s x6, f8 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x63f9d3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee6df9fa # load x3 with value 0xee6df9fa
sw x3, 0(x2) # store 0xee6df9fa in memory
flw f4, 0(x2) # load 0xee6df9fa from memory into f4
fclass.s x7, f4 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x337e33d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8223b819 # load x3 with value 0x8223b819
sw x3, 0(x2) # store 0x8223b819 in memory
flw f21, 0(x2) # load 0x8223b819 from memory into f21
fclass.s x8, f21 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xaba12027 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0f9c8bd # load x3 with value 0xc0f9c8bd
sw x3, 0(x2) # store 0xc0f9c8bd in memory
flw f23, 0(x2) # load 0xc0f9c8bd from memory into f23
fclass.s x9, f23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf4d0cbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb659f16d # load x3 with value 0xb659f16d
sw x3, 0(x2) # store 0xb659f16d in memory
flw f10, 0(x2) # load 0xb659f16d from memory into f10
fclass.s x10, f10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x3cbd34cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa55f7473 # load x3 with value 0xa55f7473
sw x3, 0(x2) # store 0xa55f7473 in memory
flw f29, 0(x2) # load 0xa55f7473 from memory into f29
fclass.s x11, f29 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8a9f5fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa698eaf1 # load x3 with value 0xa698eaf1
sw x3, 0(x2) # store 0xa698eaf1 in memory
flw f18, 0(x2) # load 0xa698eaf1 from memory into f18
fclass.s x12, f18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xdd36f4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4e564d9 # load x3 with value 0xb4e564d9
sw x3, 0(x2) # store 0xb4e564d9 in memory
flw f20, 0(x2) # load 0xb4e564d9 from memory into f20
fclass.s x13, f20 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xaed46567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9a2b023 # load x3 with value 0xa9a2b023
sw x3, 0(x2) # store 0xa9a2b023 in memory
flw f10, 0(x2) # load 0xa9a2b023 from memory into f10
fclass.s x14, f10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xaccdd7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf40788c5 # load x3 with value 0xf40788c5
sw x3, 0(x2) # store 0xf40788c5 in memory
flw f13, 0(x2) # load 0xf40788c5 from memory into f13
fclass.s x15, f13 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xebbaba3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63ce325a # load x3 with value 0x63ce325a
sw x3, 0(x2) # store 0x63ce325a in memory
flw f16, 0(x2) # load 0x63ce325a from memory into f16
fclass.s x16, f16 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x0d144843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12adad40 # load x3 with value 0x12adad40
sw x3, 0(x2) # store 0x12adad40 in memory
flw f27, 0(x2) # load 0x12adad40 from memory into f27
fclass.s x17, f27 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd1432ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa308d791 # load x3 with value 0xa308d791
sw x3, 0(x2) # store 0xa308d791 in memory
flw f28, 0(x2) # load 0xa308d791 from memory into f28
fclass.s x18, f28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x27ebcb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ed9fd2e # load x3 with value 0x9ed9fd2e
sw x3, 0(x2) # store 0x9ed9fd2e in memory
flw f11, 0(x2) # load 0x9ed9fd2e from memory into f11
fclass.s x19, f11 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5b4fb247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28fe4d4e # load x3 with value 0x28fe4d4e
sw x3, 0(x2) # store 0x28fe4d4e in memory
flw f26, 0(x2) # load 0x28fe4d4e from memory into f26
fclass.s x20, f26 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x869abf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x338134ac # load x3 with value 0x338134ac
sw x3, 0(x2) # store 0x338134ac in memory
flw f23, 0(x2) # load 0x338134ac from memory into f23
fclass.s x21, f23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x9dea9773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdecd81b2 # load x3 with value 0xdecd81b2
sw x3, 0(x2) # store 0xdecd81b2 in memory
flw f21, 0(x2) # load 0xdecd81b2 from memory into f21
fclass.s x22, f21 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5d5f8960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e2ad242 # load x3 with value 0x6e2ad242
sw x3, 0(x2) # store 0x6e2ad242 in memory
flw f12, 0(x2) # load 0x6e2ad242 from memory into f12
fclass.s x23, f12 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x93174bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff82bb27 # load x3 with value 0xff82bb27
sw x3, 0(x2) # store 0xff82bb27 in memory
flw f16, 0(x2) # load 0xff82bb27 from memory into f16
fclass.s x24, f16 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x40f11f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6499c5c4 # load x3 with value 0x6499c5c4
sw x3, 0(x2) # store 0x6499c5c4 in memory
flw f5, 0(x2) # load 0x6499c5c4 from memory into f5
fclass.s x25, f5 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0391e52f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a6d4eb4 # load x3 with value 0x2a6d4eb4
sw x3, 0(x2) # store 0x2a6d4eb4 in memory
flw f9, 0(x2) # load 0x2a6d4eb4 from memory into f9
fclass.s x26, f9 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe02fde26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2269286 # load x3 with value 0xd2269286
sw x3, 0(x2) # store 0xd2269286 in memory
flw f21, 0(x2) # load 0xd2269286 from memory into f21
fclass.s x27, f21 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x56fcf9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x357aba39 # load x3 with value 0x357aba39
sw x3, 0(x2) # store 0x357aba39 in memory
flw f20, 0(x2) # load 0x357aba39 from memory into f20
fclass.s x28, f20 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xb56bd13a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ddc8729 # load x3 with value 0x7ddc8729
sw x3, 0(x2) # store 0x7ddc8729 in memory
flw f21, 0(x2) # load 0x7ddc8729 from memory into f21
fclass.s x29, f21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xac594f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ce46e4b # load x3 with value 0x1ce46e4b
sw x3, 0(x2) # store 0x1ce46e4b in memory
flw f17, 0(x2) # load 0x1ce46e4b from memory into f17
fclass.s x30, f17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf38e7bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16ee659a # load x3 with value 0x16ee659a
sw x3, 0(x2) # store 0x16ee659a in memory
flw f21, 0(x2) # load 0x16ee659a from memory into f21
fclass.s x31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x2, 0x5045d55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fclass.s x2, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x13, 0x9ba3ac54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fclass.s x13, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x14, 0x03e8f82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fclass.s x14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x30, 0xad9f85c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fclass.s x30, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x4, 0x3470fc50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fclass.s x4, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x17, 0xa9f0e2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fclass.s x17, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x31, 0x5adb4f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fclass.s x31, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x11, 0xb26c716b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fclass.s x11, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x19, 0x7adcb401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fclass.s x19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x8, 0xfc00789f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fclass.s x8, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x17, 0xf46789e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fclass.s x17, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x26, 0x7dce8f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fclass.s x26, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x8, 0xbcfeb020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fclass.s x8, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x11, 0x5ea0f265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fclass.s x11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x18, 0x1e6cdf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fclass.s x18, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x25, 0x07fda724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fclass.s x25, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x28, 0x515d96db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fclass.s x28, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x31, 0x470e6d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fclass.s x31, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x12, 0xb45e253b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fclass.s x12, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x2, 0xfdb5de49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fclass.s x2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x5, 0xd91fdeab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fclass.s x5, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x18, 0x9b40d3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fclass.s x18, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x26, 0x9eaa3e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fclass.s x26, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x26, 0x36ba75d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fclass.s x26, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x1, 0x9645415c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fclass.s x1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x24, 0x73e6f821 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fclass.s x24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x24, 0xf2bc8df2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda709cfd # load x3 with value 0xda709cfd
sw x3, 0(x2) # store 0xda709cfd in memory
flw f0, 0(x2) # load 0xda709cfd from memory into f0
fclass.s x24, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x23, 0x12afb10e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72283fa5 # load x3 with value 0x72283fa5
sw x3, 0(x2) # store 0x72283fa5 in memory
flw f1, 0(x2) # load 0x72283fa5 from memory into f1
fclass.s x23, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0xbefe9e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83d5e318 # load x3 with value 0x83d5e318
sw x3, 0(x2) # store 0x83d5e318 in memory
flw f2, 0(x2) # load 0x83d5e318 from memory into f2
fclass.s x18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x5, 0xa7bf90e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15aff322 # load x3 with value 0x15aff322
sw x3, 0(x2) # store 0x15aff322 in memory
flw f3, 0(x2) # load 0x15aff322 from memory into f3
fclass.s x5, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0x22b99bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e8fcf22 # load x3 with value 0x4e8fcf22
sw x3, 0(x2) # store 0x4e8fcf22 in memory
flw f4, 0(x2) # load 0x4e8fcf22 from memory into f4
fclass.s x19, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x18, 0xf0b4a4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb289dbf5 # load x3 with value 0xb289dbf5
sw x3, 0(x2) # store 0xb289dbf5 in memory
flw f5, 0(x2) # load 0xb289dbf5 from memory into f5
fclass.s x18, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x26, 0xbaaa8039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa85e8306 # load x3 with value 0xa85e8306
sw x3, 0(x2) # store 0xa85e8306 in memory
flw f6, 0(x2) # load 0xa85e8306 from memory into f6
fclass.s x26, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x8, 0xc1b59755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc69a22cb # load x3 with value 0xc69a22cb
sw x3, 0(x2) # store 0xc69a22cb in memory
flw f7, 0(x2) # load 0xc69a22cb from memory into f7
fclass.s x8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x14, 0xa039c5e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d73d198 # load x3 with value 0x3d73d198
sw x3, 0(x2) # store 0x3d73d198 in memory
flw f8, 0(x2) # load 0x3d73d198 from memory into f8
fclass.s x14, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0xa0e8e37f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29fe5280 # load x3 with value 0x29fe5280
sw x3, 0(x2) # store 0x29fe5280 in memory
flw f9, 0(x2) # load 0x29fe5280 from memory into f9
fclass.s x13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x9, 0xb5e9767e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8da31ce8 # load x3 with value 0x8da31ce8
sw x3, 0(x2) # store 0x8da31ce8 in memory
flw f10, 0(x2) # load 0x8da31ce8 from memory into f10
fclass.s x9, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x4, 0xa35bb046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f9933eb # load x3 with value 0x0f9933eb
sw x3, 0(x2) # store 0x0f9933eb in memory
flw f11, 0(x2) # load 0x0f9933eb from memory into f11
fclass.s x4, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x10, 0x323f3e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6ddcd75 # load x3 with value 0xb6ddcd75
sw x3, 0(x2) # store 0xb6ddcd75 in memory
flw f12, 0(x2) # load 0xb6ddcd75 from memory into f12
fclass.s x10, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0x6b554ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedb1f283 # load x3 with value 0xedb1f283
sw x3, 0(x2) # store 0xedb1f283 in memory
flw f13, 0(x2) # load 0xedb1f283 from memory into f13
fclass.s x23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x10, 0xcb8ffe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab2e0553 # load x3 with value 0xab2e0553
sw x3, 0(x2) # store 0xab2e0553 in memory
flw f14, 0(x2) # load 0xab2e0553 from memory into f14
fclass.s x10, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x15c38e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd88adffd # load x3 with value 0xd88adffd
sw x3, 0(x2) # store 0xd88adffd in memory
flw f15, 0(x2) # load 0xd88adffd from memory into f15
fclass.s x12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x10, 0x81de22ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25f251af # load x3 with value 0x25f251af
sw x3, 0(x2) # store 0x25f251af in memory
flw f16, 0(x2) # load 0x25f251af from memory into f16
fclass.s x10, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0x90486700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51e716fb # load x3 with value 0x51e716fb
sw x3, 0(x2) # store 0x51e716fb in memory
flw f17, 0(x2) # load 0x51e716fb from memory into f17
fclass.s x16, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x13, 0xcdf8f95e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafaa07d4 # load x3 with value 0xafaa07d4
sw x3, 0(x2) # store 0xafaa07d4 in memory
flw f18, 0(x2) # load 0xafaa07d4 from memory into f18
fclass.s x13, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x16, 0xd5f33e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d3d48c6 # load x3 with value 0x5d3d48c6
sw x3, 0(x2) # store 0x5d3d48c6 in memory
flw f19, 0(x2) # load 0x5d3d48c6 from memory into f19
fclass.s x16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x3, 0xbc00f2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc83400f # load x3 with value 0xbc83400f
sw x3, 0(x2) # store 0xbc83400f in memory
flw f20, 0(x2) # load 0xbc83400f from memory into f20
fclass.s x3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x26, 0x908c3916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5a57aaf # load x3 with value 0xa5a57aaf
sw x3, 0(x2) # store 0xa5a57aaf in memory
flw f21, 0(x2) # load 0xa5a57aaf from memory into f21
fclass.s x26, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x23, 0x46595689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd3b34da # load x3 with value 0xcd3b34da
sw x3, 0(x2) # store 0xcd3b34da in memory
flw f22, 0(x2) # load 0xcd3b34da from memory into f22
fclass.s x23, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0xc6f183e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x456cc843 # load x3 with value 0x456cc843
sw x3, 0(x2) # store 0x456cc843 in memory
flw f23, 0(x2) # load 0x456cc843 from memory into f23
fclass.s x30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x4, 0x52e33c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1428ca84 # load x3 with value 0x1428ca84
sw x3, 0(x2) # store 0x1428ca84 in memory
flw f24, 0(x2) # load 0x1428ca84 from memory into f24
fclass.s x4, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x10, 0xbd06b0f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5900909a # load x3 with value 0x5900909a
sw x3, 0(x2) # store 0x5900909a in memory
flw f25, 0(x2) # load 0x5900909a from memory into f25
fclass.s x10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x4, 0xe83093a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0668e6c2 # load x3 with value 0x0668e6c2
sw x3, 0(x2) # store 0x0668e6c2 in memory
flw f26, 0(x2) # load 0x0668e6c2 from memory into f26
fclass.s x4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x17, 0x3532cc58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x670cc2c4 # load x3 with value 0x670cc2c4
sw x3, 0(x2) # store 0x670cc2c4 in memory
flw f27, 0(x2) # load 0x670cc2c4 from memory into f27
fclass.s x17, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x19, 0x75f2f1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec1e9ec8 # load x3 with value 0xec1e9ec8
sw x3, 0(x2) # store 0xec1e9ec8 in memory
flw f28, 0(x2) # load 0xec1e9ec8 from memory into f28
fclass.s x19, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x24, 0x01118afd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x640d3dbb # load x3 with value 0x640d3dbb
sw x3, 0(x2) # store 0x640d3dbb in memory
flw f29, 0(x2) # load 0x640d3dbb from memory into f29
fclass.s x24, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x8, 0x63f7ef1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd393796 # load x3 with value 0xfd393796
sw x3, 0(x2) # store 0xfd393796 in memory
flw f30, 0(x2) # load 0xfd393796 from memory into f30
fclass.s x8, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0xd30fb894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57969904 # load x3 with value 0x57969904
sw x3, 0(x2) # store 0x57969904 in memory
flw f31, 0(x2) # load 0x57969904 from memory into f31
fclass.s x18, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
