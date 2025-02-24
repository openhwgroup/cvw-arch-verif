///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fmv.x.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.802959
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
li x0, 0x6f23f24f7d57acb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x896604558b5f7a5a # load x3 with value 0x896604558b5f7a5a
sw x3, 0(x2) # store 0x896604558b5f7a5a in memory
flw f2, 0(x2) # load 0x896604558b5f7a5a from memory into f2
fmv.x.s x0, f2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0af5eb3e51355240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe2f71d2fb79db383 # load x3 with value 0xe2f71d2fb79db383
sw x3, 0(x2) # store 0xe2f71d2fb79db383 in memory
flw f14, 0(x2) # load 0xe2f71d2fb79db383 from memory into f14
fmv.x.s x1, f14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3dd8a81034deb680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c7696574abd3795 # load x3 with value 0x4c7696574abd3795
sw x3, 0(x2) # store 0x4c7696574abd3795 in memory
flw f16, 0(x2) # load 0x4c7696574abd3795 from memory into f16
fmv.x.s x2, f16 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc4afe9e9cbb425da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb898b39d2c240711 # load x3 with value 0xb898b39d2c240711
sw x3, 0(x2) # store 0xb898b39d2c240711 in memory
flw f11, 0(x2) # load 0xb898b39d2c240711 from memory into f11
fmv.x.s x3, f11 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x801939c413b94ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x591d5ea8f58c289 # load x3 with value 0x591d5ea8f58c289
sw x3, 0(x2) # store 0x591d5ea8f58c289 in memory
flw f21, 0(x2) # load 0x591d5ea8f58c289 from memory into f21
fmv.x.s x4, f21 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x6b70c13443f1c5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2f1c98db4045dbaf # load x3 with value 0x2f1c98db4045dbaf
sw x3, 0(x2) # store 0x2f1c98db4045dbaf in memory
flw f26, 0(x2) # load 0x2f1c98db4045dbaf from memory into f26
fmv.x.s x5, f26 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x8bbe3661d2f05a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8f0444bf976fd794 # load x3 with value 0x8f0444bf976fd794
sw x3, 0(x2) # store 0x8f0444bf976fd794 in memory
flw f4, 0(x2) # load 0x8f0444bf976fd794 from memory into f4
fmv.x.s x6, f4 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x7bab9c344eaeed0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc1cd1b23ba9615a3 # load x3 with value 0xc1cd1b23ba9615a3
sw x3, 0(x2) # store 0xc1cd1b23ba9615a3 in memory
flw f2, 0(x2) # load 0xc1cd1b23ba9615a3 from memory into f2
fmv.x.s x7, f2 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf8ea525914e06225 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x778444172d9c77dd # load x3 with value 0x778444172d9c77dd
sw x3, 0(x2) # store 0x778444172d9c77dd in memory
flw f17, 0(x2) # load 0x778444172d9c77dd from memory into f17
fmv.x.s x8, f17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x4b7ee63cc96c9659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd3e11d13cc659f82 # load x3 with value 0xd3e11d13cc659f82
sw x3, 0(x2) # store 0xd3e11d13cc659f82 in memory
flw f22, 0(x2) # load 0xd3e11d13cc659f82 from memory into f22
fmv.x.s x9, f22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x21f6c673896bb204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5277cd1477864786 # load x3 with value 0x5277cd1477864786
sw x3, 0(x2) # store 0x5277cd1477864786 in memory
flw f30, 0(x2) # load 0x5277cd1477864786 from memory into f30
fmv.x.s x10, f30 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x03c407fe5eccbdc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x93eb9038cf4f6e7d # load x3 with value 0x93eb9038cf4f6e7d
sw x3, 0(x2) # store 0x93eb9038cf4f6e7d in memory
flw f6, 0(x2) # load 0x93eb9038cf4f6e7d from memory into f6
fmv.x.s x11, f6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb8a7c0526f77c6b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcf886f97b70c0fe6 # load x3 with value 0xcf886f97b70c0fe6
sw x3, 0(x2) # store 0xcf886f97b70c0fe6 in memory
flw f7, 0(x2) # load 0xcf886f97b70c0fe6 from memory into f7
fmv.x.s x12, f7 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd526a37d966a9f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf2a40ddfd79e86ba # load x3 with value 0xf2a40ddfd79e86ba
sw x3, 0(x2) # store 0xf2a40ddfd79e86ba in memory
flw f6, 0(x2) # load 0xf2a40ddfd79e86ba from memory into f6
fmv.x.s x13, f6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5af897b6da8a62ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeb1f766324a390f1 # load x3 with value 0xeb1f766324a390f1
sw x3, 0(x2) # store 0xeb1f766324a390f1 in memory
flw f26, 0(x2) # load 0xeb1f766324a390f1 from memory into f26
fmv.x.s x14, f26 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x547b40d7871436f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc3756414b1cf2ca1 # load x3 with value 0xc3756414b1cf2ca1
sw x3, 0(x2) # store 0xc3756414b1cf2ca1 in memory
flw f31, 0(x2) # load 0xc3756414b1cf2ca1 from memory into f31
fmv.x.s x15, f31 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1138d4c731919798 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99199c457d901e0 # load x3 with value 0x99199c457d901e0
sw x3, 0(x2) # store 0x99199c457d901e0 in memory
flw f9, 0(x2) # load 0x99199c457d901e0 from memory into f9
fmv.x.s x16, f9 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5ac64c2f64bbe6f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x995868b3b7743f28 # load x3 with value 0x995868b3b7743f28
sw x3, 0(x2) # store 0x995868b3b7743f28 in memory
flw f16, 0(x2) # load 0x995868b3b7743f28 from memory into f16
fmv.x.s x17, f16 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4a200ec4ebf5f1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xefc7565cf2af2c19 # load x3 with value 0xefc7565cf2af2c19
sw x3, 0(x2) # store 0xefc7565cf2af2c19 in memory
flw f24, 0(x2) # load 0xefc7565cf2af2c19 from memory into f24
fmv.x.s x18, f24 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xac3979c83f1babbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b00482f738e0f53 # load x3 with value 0x3b00482f738e0f53
sw x3, 0(x2) # store 0x3b00482f738e0f53 in memory
flw f31, 0(x2) # load 0x3b00482f738e0f53 from memory into f31
fmv.x.s x19, f31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x0711e74a0066f91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x95e54de20a8423f2 # load x3 with value 0x95e54de20a8423f2
sw x3, 0(x2) # store 0x95e54de20a8423f2 in memory
flw f19, 0(x2) # load 0x95e54de20a8423f2 from memory into f19
fmv.x.s x20, f19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8d7e1b5553c500f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d9a820bd4d7674a # load x3 with value 0x5d9a820bd4d7674a
sw x3, 0(x2) # store 0x5d9a820bd4d7674a in memory
flw f29, 0(x2) # load 0x5d9a820bd4d7674a from memory into f29
fmv.x.s x21, f29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4a6da1da10edf519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1b2e534fb402e729 # load x3 with value 0x1b2e534fb402e729
sw x3, 0(x2) # store 0x1b2e534fb402e729 in memory
flw f11, 0(x2) # load 0x1b2e534fb402e729 from memory into f11
fmv.x.s x22, f11 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe0c786ddc8b91dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8247c993174fa70 # load x3 with value 0xe8247c993174fa70
sw x3, 0(x2) # store 0xe8247c993174fa70 in memory
flw f13, 0(x2) # load 0xe8247c993174fa70 from memory into f13
fmv.x.s x23, f13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x62a92c0c1b0186d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fa18ddcd0ed8ae2 # load x3 with value 0x3fa18ddcd0ed8ae2
sw x3, 0(x2) # store 0x3fa18ddcd0ed8ae2 in memory
flw f15, 0(x2) # load 0x3fa18ddcd0ed8ae2 from memory into f15
fmv.x.s x24, f15 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x17802f1f08bf43d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbd5295ad992ce1bc # load x3 with value 0xbd5295ad992ce1bc
sw x3, 0(x2) # store 0xbd5295ad992ce1bc in memory
flw f3, 0(x2) # load 0xbd5295ad992ce1bc from memory into f3
fmv.x.s x25, f3 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x473ccb52b8b65b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3948155f7ac4572 # load x3 with value 0xf3948155f7ac4572
sw x3, 0(x2) # store 0xf3948155f7ac4572 in memory
flw f19, 0(x2) # load 0xf3948155f7ac4572 from memory into f19
fmv.x.s x26, f19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x2835d9303e0e7fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf634aeae5e14313e # load x3 with value 0xf634aeae5e14313e
sw x3, 0(x2) # store 0xf634aeae5e14313e in memory
flw f4, 0(x2) # load 0xf634aeae5e14313e from memory into f4
fmv.x.s x27, f4 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x4305a40a7d0a1a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x57f932d849716210 # load x3 with value 0x57f932d849716210
sw x3, 0(x2) # store 0x57f932d849716210 in memory
flw f1, 0(x2) # load 0x57f932d849716210 from memory into f1
fmv.x.s x28, f1 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xcbbff809d55aca73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0c4e37104bcc8a # load x3 with value 0xc0c4e37104bcc8a
sw x3, 0(x2) # store 0xc0c4e37104bcc8a in memory
flw f5, 0(x2) # load 0xc0c4e37104bcc8a from memory into f5
fmv.x.s x29, f5 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x940825461b2ea0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfa3d7f9bddc0503c # load x3 with value 0xfa3d7f9bddc0503c
sw x3, 0(x2) # store 0xfa3d7f9bddc0503c in memory
flw f7, 0(x2) # load 0xfa3d7f9bddc0503c from memory into f7
fmv.x.s x30, f7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x11ee99936b0b146d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a54174612814679 # load x3 with value 0x5a54174612814679
sw x3, 0(x2) # store 0x5a54174612814679 in memory
flw f29, 0(x2) # load 0x5a54174612814679 from memory into f29
fmv.x.s x31, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x18, 0xda63e630c5023330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fmv.x.s x18, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x26, 0xaeea2878e723ddbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmv.x.s x26, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x24, 0xdc5b2717b385e2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fmv.x.s x24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x8, 0x76133a15d73b6a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fmv.x.s x8, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x4, 0x13ff539591b1483c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fmv.x.s x4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x24, 0xeef2487862e4a86c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmv.x.s x24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x7, 0x1ad740581de5bba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmv.x.s x7, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x17, 0xf2d4910dc404582b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fmv.x.s x17, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x29, 0x52edff9ac677e8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fmv.x.s x29, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x14, 0x28839b57a88d23df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fmv.x.s x14, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x6, 0xaae4bf765c0a047e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmv.x.s x6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x25, 0x9e7f0f2d2abf40f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmv.x.s x25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x11, 0x22983687097a20ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmv.x.s x11, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x25, 0xc07e46c62fe1997b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmv.x.s x25, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x11, 0xd0e532d05cfbac82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmv.x.s x11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x25, 0x1c2f1eb6ca6abc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fmv.x.s x25, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x25, 0x523a48d1d7e5fc48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmv.x.s x25, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0xf1a2e169c517bffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmv.x.s x14, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x27, 0x6fdfd6b455d7bd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmv.x.s x27, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x27, 0x9e59823eb9cdf53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmv.x.s x27, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x25, 0xa06de15e073c973c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmv.x.s x25, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x23, 0x4bce26d89929d8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmv.x.s x23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x18, 0x0e181af12e194b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmv.x.s x18, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x9, 0x1cc86d61d335b699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmv.x.s x9, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x30, 0x1c29dd0d0917d0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmv.x.s x30, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x25, 0x1b804dae69d939e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fmv.x.s x25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x7, 0xe8712b69daa8bccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x67c91da0cfcadb40 # load x3 with value 0x67c91da0cfcadb40
sw x3, 0(x2) # store 0x67c91da0cfcadb40 in memory
flw f0, 0(x2) # load 0x67c91da0cfcadb40 from memory into f0
fmv.x.s x7, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x12, 0x9dcdeca8c2596ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf9578676def1dc77 # load x3 with value 0xf9578676def1dc77
sw x3, 0(x2) # store 0xf9578676def1dc77 in memory
flw f1, 0(x2) # load 0xf9578676def1dc77 from memory into f1
fmv.x.s x12, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x15, 0xdd82ba13abc3ed52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x57da775361e0f79d # load x3 with value 0x57da775361e0f79d
sw x3, 0(x2) # store 0x57da775361e0f79d in memory
flw f2, 0(x2) # load 0x57da775361e0f79d from memory into f2
fmv.x.s x15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0x833466eb9dc35c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc3791cf263840004 # load x3 with value 0xc3791cf263840004
sw x3, 0(x2) # store 0xc3791cf263840004 in memory
flw f3, 0(x2) # load 0xc3791cf263840004 from memory into f3
fmv.x.s x6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0x95190bb398137b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x15e6a960d288e04f # load x3 with value 0x15e6a960d288e04f
sw x3, 0(x2) # store 0x15e6a960d288e04f in memory
flw f4, 0(x2) # load 0x15e6a960d288e04f from memory into f4
fmv.x.s x25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x26, 0x07bc6da0b4709dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f90d159b85ad154 # load x3 with value 0x6f90d159b85ad154
sw x3, 0(x2) # store 0x6f90d159b85ad154 in memory
flw f5, 0(x2) # load 0x6f90d159b85ad154 from memory into f5
fmv.x.s x26, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x24, 0x39f5c37fed8cc42a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f51fd8d4484ae6 # load x3 with value 0x9f51fd8d4484ae6
sw x3, 0(x2) # store 0x9f51fd8d4484ae6 in memory
flw f6, 0(x2) # load 0x9f51fd8d4484ae6 from memory into f6
fmv.x.s x24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x25, 0x6a6022121058cfac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d98e2ce702cee2c # load x3 with value 0x2d98e2ce702cee2c
sw x3, 0(x2) # store 0x2d98e2ce702cee2c in memory
flw f7, 0(x2) # load 0x2d98e2ce702cee2c from memory into f7
fmv.x.s x25, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x25, 0x0296493487388098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18b073e7d89fac0b # load x3 with value 0x18b073e7d89fac0b
sw x3, 0(x2) # store 0x18b073e7d89fac0b in memory
flw f8, 0(x2) # load 0x18b073e7d89fac0b from memory into f8
fmv.x.s x25, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x30, 0x13aa2dbfda38c1a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d679abfc322abb6 # load x3 with value 0x2d679abfc322abb6
sw x3, 0(x2) # store 0x2d679abfc322abb6 in memory
flw f9, 0(x2) # load 0x2d679abfc322abb6 from memory into f9
fmv.x.s x30, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x12, 0xb787b7af957b52d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x62ce9856146596fc # load x3 with value 0x62ce9856146596fc
sw x3, 0(x2) # store 0x62ce9856146596fc in memory
flw f10, 0(x2) # load 0x62ce9856146596fc from memory into f10
fmv.x.s x12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x15, 0xc7b884e96e363ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7516cc70d049fa15 # load x3 with value 0x7516cc70d049fa15
sw x3, 0(x2) # store 0x7516cc70d049fa15 in memory
flw f11, 0(x2) # load 0x7516cc70d049fa15 from memory into f11
fmv.x.s x15, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0xd29c51ef41b88b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x61e278d09470b78a # load x3 with value 0x61e278d09470b78a
sw x3, 0(x2) # store 0x61e278d09470b78a in memory
flw f12, 0(x2) # load 0x61e278d09470b78a from memory into f12
fmv.x.s x21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x11, 0xd5a1ba3059aa4628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f692dda1c516d0b # load x3 with value 0x5f692dda1c516d0b
sw x3, 0(x2) # store 0x5f692dda1c516d0b in memory
flw f13, 0(x2) # load 0x5f692dda1c516d0b from memory into f13
fmv.x.s x11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x9, 0xc62dfc9d58f356ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xad6423668f1d6315 # load x3 with value 0xad6423668f1d6315
sw x3, 0(x2) # store 0xad6423668f1d6315 in memory
flw f14, 0(x2) # load 0xad6423668f1d6315 from memory into f14
fmv.x.s x9, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x36b48cfd8ff64918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x21effc60a9de25d9 # load x3 with value 0x21effc60a9de25d9
sw x3, 0(x2) # store 0x21effc60a9de25d9 in memory
flw f15, 0(x2) # load 0x21effc60a9de25d9 from memory into f15
fmv.x.s x7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x18, 0x1f348dedfeed43b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x479528d46f7db171 # load x3 with value 0x479528d46f7db171
sw x3, 0(x2) # store 0x479528d46f7db171 in memory
flw f16, 0(x2) # load 0x479528d46f7db171 from memory into f16
fmv.x.s x18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x28, 0xc56d83619dfdb47e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80cd30dceb57412a # load x3 with value 0x80cd30dceb57412a
sw x3, 0(x2) # store 0x80cd30dceb57412a in memory
flw f17, 0(x2) # load 0x80cd30dceb57412a from memory into f17
fmv.x.s x28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x29, 0x49ec2fef287ed0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x412ef7558dd9adc5 # load x3 with value 0x412ef7558dd9adc5
sw x3, 0(x2) # store 0x412ef7558dd9adc5 in memory
flw f18, 0(x2) # load 0x412ef7558dd9adc5 from memory into f18
fmv.x.s x29, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x24, 0x0f118b6add589be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4f31e0ac2511f7aa # load x3 with value 0x4f31e0ac2511f7aa
sw x3, 0(x2) # store 0x4f31e0ac2511f7aa in memory
flw f19, 0(x2) # load 0x4f31e0ac2511f7aa from memory into f19
fmv.x.s x24, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x11, 0xab185fc04b9ba7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc3fcf354dbacfc82 # load x3 with value 0xc3fcf354dbacfc82
sw x3, 0(x2) # store 0xc3fcf354dbacfc82 in memory
flw f20, 0(x2) # load 0xc3fcf354dbacfc82 from memory into f20
fmv.x.s x11, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0x2e86cf2456e54cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x500577481c5d40b9 # load x3 with value 0x500577481c5d40b9
sw x3, 0(x2) # store 0x500577481c5d40b9 in memory
flw f21, 0(x2) # load 0x500577481c5d40b9 from memory into f21
fmv.x.s x8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x31, 0x517c1b737a55dbef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3bf18aa582d98568 # load x3 with value 0x3bf18aa582d98568
sw x3, 0(x2) # store 0x3bf18aa582d98568 in memory
flw f22, 0(x2) # load 0x3bf18aa582d98568 from memory into f22
fmv.x.s x31, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x25, 0xaf1e5e3345f533b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x339182017ef8035a # load x3 with value 0x339182017ef8035a
sw x3, 0(x2) # store 0x339182017ef8035a in memory
flw f23, 0(x2) # load 0x339182017ef8035a from memory into f23
fmv.x.s x25, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0x2728ddbb15a6e096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x544c2ff159cf3da3 # load x3 with value 0x544c2ff159cf3da3
sw x3, 0(x2) # store 0x544c2ff159cf3da3 in memory
flw f24, 0(x2) # load 0x544c2ff159cf3da3 from memory into f24
fmv.x.s x14, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0x70d137c2e4b910cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7dd7a0eb7c06f2f1 # load x3 with value 0x7dd7a0eb7c06f2f1
sw x3, 0(x2) # store 0x7dd7a0eb7c06f2f1 in memory
flw f25, 0(x2) # load 0x7dd7a0eb7c06f2f1 from memory into f25
fmv.x.s x30, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x4, 0x3233f7bebd416d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1789a3883e618f5e # load x3 with value 0x1789a3883e618f5e
sw x3, 0(x2) # store 0x1789a3883e618f5e in memory
flw f26, 0(x2) # load 0x1789a3883e618f5e from memory into f26
fmv.x.s x4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x27, 0x1a373fe9a2836384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x305d55f425ee0a94 # load x3 with value 0x305d55f425ee0a94
sw x3, 0(x2) # store 0x305d55f425ee0a94 in memory
flw f27, 0(x2) # load 0x305d55f425ee0a94 from memory into f27
fmv.x.s x27, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x31, 0x4af3ee5be8e2c6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa03be29a035bc71c # load x3 with value 0xa03be29a035bc71c
sw x3, 0(x2) # store 0xa03be29a035bc71c in memory
flw f28, 0(x2) # load 0xa03be29a035bc71c from memory into f28
fmv.x.s x31, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x19, 0x9655870b18086bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x254821f36e034c91 # load x3 with value 0x254821f36e034c91
sw x3, 0(x2) # store 0x254821f36e034c91 in memory
flw f29, 0(x2) # load 0x254821f36e034c91 from memory into f29
fmv.x.s x19, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0xcfce0566095f1858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18310ccd757206bd # load x3 with value 0x18310ccd757206bd
sw x3, 0(x2) # store 0x18310ccd757206bd in memory
flw f30, 0(x2) # load 0x18310ccd757206bd from memory into f30
fmv.x.s x19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0x6b75983eb4246f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a23eb0b7c9f7f62 # load x3 with value 0x6a23eb0b7c9f7f62
sw x3, 0(x2) # store 0x6a23eb0b7c9f7f62 in memory
flw f31, 0(x2) # load 0x6a23eb0b7c9f7f62 from memory into f31
fmv.x.s x25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
