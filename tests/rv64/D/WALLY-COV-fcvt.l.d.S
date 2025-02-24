///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.l.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.504817
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
li x0, 0xf1fd417cbe6036a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa92b69eca6f713d0 # load x3 with value 0xa92b69eca6f713d0
sd x3, 0(x2) # store 0xa92b69eca6f713d0 in memory
fld f17, 0(x2) # load 0xa92b69eca6f713d0 from memory into f17
fcvt.l.d x0, f17 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x104aa29e3198183d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8fc815465ca3dc39 # load x3 with value 0x8fc815465ca3dc39
sd x3, 0(x2) # store 0x8fc815465ca3dc39 in memory
fld f21, 0(x2) # load 0x8fc815465ca3dc39 from memory into f21
fcvt.l.d x1, f21 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xfecc0987185cfa27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x50e7da04f1b79cd3 # load x3 with value 0x50e7da04f1b79cd3
sd x3, 0(x2) # store 0x50e7da04f1b79cd3 in memory
fld f21, 0(x2) # load 0x50e7da04f1b79cd3 from memory into f21
fcvt.l.d x2, f21 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb64bdd90c54e3087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0c1cb3581586c5a2 # load x3 with value 0x0c1cb3581586c5a2
sd x3, 0(x2) # store 0x0c1cb3581586c5a2 in memory
fld f19, 0(x2) # load 0x0c1cb3581586c5a2 from memory into f19
fcvt.l.d x3, f19 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x2e40bcab2cc888eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa06aab4f89f21465 # load x3 with value 0xa06aab4f89f21465
sd x3, 0(x2) # store 0xa06aab4f89f21465 in memory
fld f25, 0(x2) # load 0xa06aab4f89f21465 from memory into f25
fcvt.l.d x4, f25 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x2eda97ccb11ff7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc83a38ebf2823500 # load x3 with value 0xc83a38ebf2823500
sd x3, 0(x2) # store 0xc83a38ebf2823500 in memory
fld f29, 0(x2) # load 0xc83a38ebf2823500 from memory into f29
fcvt.l.d x5, f29 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x970ca50573b26398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86674f6d982d7bf5 # load x3 with value 0x86674f6d982d7bf5
sd x3, 0(x2) # store 0x86674f6d982d7bf5 in memory
fld f20, 0(x2) # load 0x86674f6d982d7bf5 from memory into f20
fcvt.l.d x6, f20 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xdbdb855211307698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf66cfcd2e0047ddf # load x3 with value 0xf66cfcd2e0047ddf
sd x3, 0(x2) # store 0xf66cfcd2e0047ddf in memory
fld f12, 0(x2) # load 0xf66cfcd2e0047ddf from memory into f12
fcvt.l.d x7, f12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xabb8a2ca3df8d2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdfe28cbbdb4ccccc # load x3 with value 0xdfe28cbbdb4ccccc
sd x3, 0(x2) # store 0xdfe28cbbdb4ccccc in memory
fld f15, 0(x2) # load 0xdfe28cbbdb4ccccc from memory into f15
fcvt.l.d x8, f15 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x88451657377608c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f2934dca7346bb4 # load x3 with value 0x6f2934dca7346bb4
sd x3, 0(x2) # store 0x6f2934dca7346bb4 in memory
fld f2, 0(x2) # load 0x6f2934dca7346bb4 from memory into f2
fcvt.l.d x9, f2 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe635d9f5dd53a204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x56549b3a1ff4e360 # load x3 with value 0x56549b3a1ff4e360
sd x3, 0(x2) # store 0x56549b3a1ff4e360 in memory
fld f21, 0(x2) # load 0x56549b3a1ff4e360 from memory into f21
fcvt.l.d x10, f21 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb9008eda12ec69bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16031aba569ba618 # load x3 with value 0x16031aba569ba618
sd x3, 0(x2) # store 0x16031aba569ba618 in memory
fld f2, 0(x2) # load 0x16031aba569ba618 from memory into f2
fcvt.l.d x11, f2 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa1ab3b005c96339e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4b201fba31ca7bf9 # load x3 with value 0x4b201fba31ca7bf9
sd x3, 0(x2) # store 0x4b201fba31ca7bf9 in memory
fld f31, 0(x2) # load 0x4b201fba31ca7bf9 from memory into f31
fcvt.l.d x12, f31 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x603ca3e16eba1436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc072752b32a1ebac # load x3 with value 0xc072752b32a1ebac
sd x3, 0(x2) # store 0xc072752b32a1ebac in memory
fld f31, 0(x2) # load 0xc072752b32a1ebac from memory into f31
fcvt.l.d x13, f31 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x61d42c67a4c732b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2bed669b6f7509c # load x3 with value 0xb2bed669b6f7509c
sd x3, 0(x2) # store 0xb2bed669b6f7509c in memory
fld f28, 0(x2) # load 0xb2bed669b6f7509c from memory into f28
fcvt.l.d x14, f28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xb4e99fb28303bda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0c5efd3ac07fb815 # load x3 with value 0x0c5efd3ac07fb815
sd x3, 0(x2) # store 0x0c5efd3ac07fb815 in memory
fld f30, 0(x2) # load 0x0c5efd3ac07fb815 from memory into f30
fcvt.l.d x15, f30 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x06aaa3dcef98118b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x763b5683d3010468 # load x3 with value 0x763b5683d3010468
sd x3, 0(x2) # store 0x763b5683d3010468 in memory
fld f6, 0(x2) # load 0x763b5683d3010468 from memory into f6
fcvt.l.d x16, f6 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x887aad2d43c06854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27f647728d1ab94b # load x3 with value 0x27f647728d1ab94b
sd x3, 0(x2) # store 0x27f647728d1ab94b in memory
fld f18, 0(x2) # load 0x27f647728d1ab94b from memory into f18
fcvt.l.d x17, f18 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4503d72f150d7563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x92b3c174b8c313cf # load x3 with value 0x92b3c174b8c313cf
sd x3, 0(x2) # store 0x92b3c174b8c313cf in memory
fld f28, 0(x2) # load 0x92b3c174b8c313cf from memory into f28
fcvt.l.d x18, f28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x484e8b07b56405d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae2ee139989cdebe # load x3 with value 0xae2ee139989cdebe
sd x3, 0(x2) # store 0xae2ee139989cdebe in memory
fld f4, 0(x2) # load 0xae2ee139989cdebe from memory into f4
fcvt.l.d x19, f4 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdd6d0c71473271cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa458ea8e60d87714 # load x3 with value 0xa458ea8e60d87714
sd x3, 0(x2) # store 0xa458ea8e60d87714 in memory
fld f19, 0(x2) # load 0xa458ea8e60d87714 from memory into f19
fcvt.l.d x20, f19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x9f39bc9495ec6b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4382e02d1b484e01 # load x3 with value 0x4382e02d1b484e01
sd x3, 0(x2) # store 0x4382e02d1b484e01 in memory
fld f29, 0(x2) # load 0x4382e02d1b484e01 from memory into f29
fcvt.l.d x21, f29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4d6b3059444794e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb62de45fb96ad823 # load x3 with value 0xb62de45fb96ad823
sd x3, 0(x2) # store 0xb62de45fb96ad823 in memory
fld f24, 0(x2) # load 0xb62de45fb96ad823 from memory into f24
fcvt.l.d x22, f24 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x3c85b37e48687f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x128004528e67a084 # load x3 with value 0x128004528e67a084
sd x3, 0(x2) # store 0x128004528e67a084 in memory
fld f19, 0(x2) # load 0x128004528e67a084 from memory into f19
fcvt.l.d x23, f19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x07bdf462be1a815d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3177b2fd5f97b8c0 # load x3 with value 0x3177b2fd5f97b8c0
sd x3, 0(x2) # store 0x3177b2fd5f97b8c0 in memory
fld f24, 0(x2) # load 0x3177b2fd5f97b8c0 from memory into f24
fcvt.l.d x24, f24 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd4a5c187c1d12db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x83e24132f94b5d65 # load x3 with value 0x83e24132f94b5d65
sd x3, 0(x2) # store 0x83e24132f94b5d65 in memory
fld f16, 0(x2) # load 0x83e24132f94b5d65 from memory into f16
fcvt.l.d x25, f16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb537f1f56d426133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78e11fe4caac9ea6 # load x3 with value 0x78e11fe4caac9ea6
sd x3, 0(x2) # store 0x78e11fe4caac9ea6 in memory
fld f16, 0(x2) # load 0x78e11fe4caac9ea6 from memory into f16
fcvt.l.d x26, f16 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x93c9ea6e741679e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x358e92a56751cf44 # load x3 with value 0x358e92a56751cf44
sd x3, 0(x2) # store 0x358e92a56751cf44 in memory
fld f16, 0(x2) # load 0x358e92a56751cf44 from memory into f16
fcvt.l.d x27, f16 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0c4a0aa5dd361460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87a2adb2869a01fe # load x3 with value 0x87a2adb2869a01fe
sd x3, 0(x2) # store 0x87a2adb2869a01fe in memory
fld f14, 0(x2) # load 0x87a2adb2869a01fe from memory into f14
fcvt.l.d x28, f14 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfdfc81e836d2d097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3046aa63ca7ffe8 # load x3 with value 0xf3046aa63ca7ffe8
sd x3, 0(x2) # store 0xf3046aa63ca7ffe8 in memory
fld f1, 0(x2) # load 0xf3046aa63ca7ffe8 from memory into f1
fcvt.l.d x29, f1 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf01fcef5c7b4b4eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1d31a3f726834262 # load x3 with value 0x1d31a3f726834262
sd x3, 0(x2) # store 0x1d31a3f726834262 in memory
fld f3, 0(x2) # load 0x1d31a3f726834262 from memory into f3
fcvt.l.d x30, f3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7b7e8c67f42ee051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e068248ca7101a1 # load x3 with value 0x0e068248ca7101a1
sd x3, 0(x2) # store 0x0e068248ca7101a1 in memory
fld f7, 0(x2) # load 0x0e068248ca7101a1 from memory into f7
fcvt.l.d x31, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x11, 0x9fa62c7f7e4b313e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fcvt.l.d x11, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x3, 0x7c207bbf26bc577a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
fcvt.l.d x3, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x15, 0x549f23fdcaa72349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fcvt.l.d x15, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x7, 0xe39204542971189d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fcvt.l.d x7, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x17, 0x55ec48bd00a21b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fcvt.l.d x17, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x3, 0x7f54a422c363e8d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fcvt.l.d x3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x23, 0x82fc82b9a6299661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f17, 0(x2) # load 0x4000000000000000 from memory into f17
fcvt.l.d x23, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x21, 0x1be10121ee62ecac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fcvt.l.d x21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x25, 0x5739b3b31129ee1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fcvt.l.d x25, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x22, 0xdcfc8fddc06644d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fcvt.l.d x22, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x29, 0x3fb9fb7ee5c12645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
fcvt.l.d x29, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x2, 0x4b89de99e061b6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fcvt.l.d x2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x16, 0x43f91b0285c08339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fcvt.l.d x16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x16, 0x8ce5c60cc14567a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fcvt.l.d x16, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x2, 0xc23ca78289188e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fcvt.l.d x2, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x6, 0x5db27b959a189db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fcvt.l.d x6, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x6, 0x823afa2b7b79149b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fcvt.l.d x6, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x25, 0x419baf9f5c1a575f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fcvt.l.d x25, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x5, 0xc6d6c82e23a2963c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fcvt.l.d x5, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x8, 0x1ae42bb1398e77ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
fcvt.l.d x8, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x24, 0xb86abf27912f1d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fcvt.l.d x24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x5, 0x2d634e8ebb9683fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fcvt.l.d x5, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x27, 0x9cf8280eaec4b919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fcvt.l.d x27, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x13, 0x4ba9f00ee20121fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fcvt.l.d x13, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x4, 0x5f11966cb7e593d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fcvt.l.d x4, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x21, 0xf0260b2cdca4b584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fcvt.l.d x21, f31 # perform operation

# Testcase cp_frm
li x19, 0x09fd9e2f047d8706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf34bb3caac8cfe6a # load x3 with value 0xf34bb3caac8cfe6a
sd x3, 0(x2) # store 0xf34bb3caac8cfe6a in memory
fld f9, 0(x2) # load 0xf34bb3caac8cfe6a from memory into f9
fcvt.l.d x19, f9, dyn # perform operation
fcvt.l.d x19, f9, rdn # perform operation
fcvt.l.d x19, f9, rmm # perform operation
fcvt.l.d x19, f9, rne # perform operation
fcvt.l.d x19, f9, rtz # perform operation
fcvt.l.d x19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.d x19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.d x19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.d x19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.d x19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.d x19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x7, 0x7e0e01a0d2245901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x20d55f028cfe5004 # load x3 with value 0x20d55f028cfe5004
sd x3, 0(x2) # store 0x20d55f028cfe5004 in memory
fld f0, 0(x2) # load 0x20d55f028cfe5004 from memory into f0
fcvt.l.d x7, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x1, 0xf5ee8c5693b356d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4f9365a31ac5b17a # load x3 with value 0x4f9365a31ac5b17a
sd x3, 0(x2) # store 0x4f9365a31ac5b17a in memory
fld f1, 0(x2) # load 0x4f9365a31ac5b17a from memory into f1
fcvt.l.d x1, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0xf207fc21ccf1b7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaf27561934e3428d # load x3 with value 0xaf27561934e3428d
sd x3, 0(x2) # store 0xaf27561934e3428d in memory
fld f2, 0(x2) # load 0xaf27561934e3428d from memory into f2
fcvt.l.d x23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0xcbb77d727bfa9c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x204e598756f33abd # load x3 with value 0x204e598756f33abd
sd x3, 0(x2) # store 0x204e598756f33abd in memory
fld f3, 0(x2) # load 0x204e598756f33abd from memory into f3
fcvt.l.d x29, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x5, 0x71333a33fb3c23b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x50e18d5cf99dd11d # load x3 with value 0x50e18d5cf99dd11d
sd x3, 0(x2) # store 0x50e18d5cf99dd11d in memory
fld f4, 0(x2) # load 0x50e18d5cf99dd11d from memory into f4
fcvt.l.d x5, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x31, 0x8d9f1a215b770804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d10de71698e5251 # load x3 with value 0x2d10de71698e5251
sd x3, 0(x2) # store 0x2d10de71698e5251 in memory
fld f5, 0(x2) # load 0x2d10de71698e5251 from memory into f5
fcvt.l.d x31, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x18, 0x6c21e1773cadb393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x296b38e933a764af # load x3 with value 0x296b38e933a764af
sd x3, 0(x2) # store 0x296b38e933a764af in memory
fld f6, 0(x2) # load 0x296b38e933a764af from memory into f6
fcvt.l.d x18, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x46df819a057f8f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa3a5bf5a59af2bdb # load x3 with value 0xa3a5bf5a59af2bdb
sd x3, 0(x2) # store 0xa3a5bf5a59af2bdb in memory
fld f7, 0(x2) # load 0xa3a5bf5a59af2bdb from memory into f7
fcvt.l.d x23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0xf793892cfe0bdeec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1e257be7f33f585a # load x3 with value 0x1e257be7f33f585a
sd x3, 0(x2) # store 0x1e257be7f33f585a in memory
fld f8, 0(x2) # load 0x1e257be7f33f585a from memory into f8
fcvt.l.d x22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x14, 0x088fe7452354618b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x98aa8ec90830ded6 # load x3 with value 0x98aa8ec90830ded6
sd x3, 0(x2) # store 0x98aa8ec90830ded6 in memory
fld f9, 0(x2) # load 0x98aa8ec90830ded6 from memory into f9
fcvt.l.d x14, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x14, 0x0c432a278b7fb6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80753e18ac94fe6a # load x3 with value 0x80753e18ac94fe6a
sd x3, 0(x2) # store 0x80753e18ac94fe6a in memory
fld f10, 0(x2) # load 0x80753e18ac94fe6a from memory into f10
fcvt.l.d x14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x5, 0x5f4a5d45e1f51518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xca8f6c914b0ee475 # load x3 with value 0xca8f6c914b0ee475
sd x3, 0(x2) # store 0xca8f6c914b0ee475 in memory
fld f11, 0(x2) # load 0xca8f6c914b0ee475 from memory into f11
fcvt.l.d x5, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x15, 0x7c57bd45d5ac7137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b8cbc212f2b4e4d # load x3 with value 0x3b8cbc212f2b4e4d
sd x3, 0(x2) # store 0x3b8cbc212f2b4e4d in memory
fld f12, 0(x2) # load 0x3b8cbc212f2b4e4d from memory into f12
fcvt.l.d x15, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0xef2a392c0b6a3e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0b47a34b2f36856f # load x3 with value 0x0b47a34b2f36856f
sd x3, 0(x2) # store 0x0b47a34b2f36856f in memory
fld f13, 0(x2) # load 0x0b47a34b2f36856f from memory into f13
fcvt.l.d x23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x17, 0x363305ed118c1e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb416ded8454e0567 # load x3 with value 0xb416ded8454e0567
sd x3, 0(x2) # store 0xb416ded8454e0567 in memory
fld f14, 0(x2) # load 0xb416ded8454e0567 from memory into f14
fcvt.l.d x17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x715033ed65f03d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ba102d779ee4e94 # load x3 with value 0x6ba102d779ee4e94
sd x3, 0(x2) # store 0x6ba102d779ee4e94 in memory
fld f15, 0(x2) # load 0x6ba102d779ee4e94 from memory into f15
fcvt.l.d x12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x6, 0xf0111e80f8c51c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb61bb5534b912e4 # load x3 with value 0xdb61bb5534b912e4
sd x3, 0(x2) # store 0xdb61bb5534b912e4 in memory
fld f16, 0(x2) # load 0xdb61bb5534b912e4 from memory into f16
fcvt.l.d x6, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0xbb05eff1de7e1f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x700eb9dd32776280 # load x3 with value 0x700eb9dd32776280
sd x3, 0(x2) # store 0x700eb9dd32776280 in memory
fld f17, 0(x2) # load 0x700eb9dd32776280 from memory into f17
fcvt.l.d x16, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x4, 0xabe96b7289ab76d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe3359d4104cc2b5b # load x3 with value 0xe3359d4104cc2b5b
sd x3, 0(x2) # store 0xe3359d4104cc2b5b in memory
fld f18, 0(x2) # load 0xe3359d4104cc2b5b from memory into f18
fcvt.l.d x4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x28, 0x5c8b008e44a37360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdcfa4284a7606dca # load x3 with value 0xdcfa4284a7606dca
sd x3, 0(x2) # store 0xdcfa4284a7606dca in memory
fld f19, 0(x2) # load 0xdcfa4284a7606dca from memory into f19
fcvt.l.d x28, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x8, 0x9c4f90b72f1674ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x054c71b6bb14348e # load x3 with value 0x054c71b6bb14348e
sd x3, 0(x2) # store 0x054c71b6bb14348e in memory
fld f20, 0(x2) # load 0x054c71b6bb14348e from memory into f20
fcvt.l.d x8, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x19, 0x7b8914daa26b1ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x88eb367abac6562b # load x3 with value 0x88eb367abac6562b
sd x3, 0(x2) # store 0x88eb367abac6562b in memory
fld f21, 0(x2) # load 0x88eb367abac6562b from memory into f21
fcvt.l.d x19, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x23, 0x673cdf5d44317475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7937f2caafcb6e5b # load x3 with value 0x7937f2caafcb6e5b
sd x3, 0(x2) # store 0x7937f2caafcb6e5b in memory
fld f22, 0(x2) # load 0x7937f2caafcb6e5b from memory into f22
fcvt.l.d x23, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x7, 0x1a0b2bef75baa73d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x138bbfd6c36d3202 # load x3 with value 0x138bbfd6c36d3202
sd x3, 0(x2) # store 0x138bbfd6c36d3202 in memory
fld f23, 0(x2) # load 0x138bbfd6c36d3202 from memory into f23
fcvt.l.d x7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x1, 0xad2805c049e45347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6cfc8235e35f8897 # load x3 with value 0x6cfc8235e35f8897
sd x3, 0(x2) # store 0x6cfc8235e35f8897 in memory
fld f24, 0(x2) # load 0x6cfc8235e35f8897 from memory into f24
fcvt.l.d x1, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0x421b6da5fd79e448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x512ba48322c58604 # load x3 with value 0x512ba48322c58604
sd x3, 0(x2) # store 0x512ba48322c58604 in memory
fld f25, 0(x2) # load 0x512ba48322c58604 from memory into f25
fcvt.l.d x11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x27, 0x6d8b4f55982290e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa194c7e7b18ca6f4 # load x3 with value 0xa194c7e7b18ca6f4
sd x3, 0(x2) # store 0xa194c7e7b18ca6f4 in memory
fld f26, 0(x2) # load 0xa194c7e7b18ca6f4 from memory into f26
fcvt.l.d x27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x28, 0x74f958e0d9a70b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb83249727405cfc2 # load x3 with value 0xb83249727405cfc2
sd x3, 0(x2) # store 0xb83249727405cfc2 in memory
fld f27, 0(x2) # load 0xb83249727405cfc2 from memory into f27
fcvt.l.d x28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x9, 0x25d4038a5e2d8caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa73724e0c0c4b117 # load x3 with value 0xa73724e0c0c4b117
sd x3, 0(x2) # store 0xa73724e0c0c4b117 in memory
fld f28, 0(x2) # load 0xa73724e0c0c4b117 from memory into f28
fcvt.l.d x9, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x27, 0x4f16e1b998e6bd90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x179f2e5e4d9e4f27 # load x3 with value 0x179f2e5e4d9e4f27
sd x3, 0(x2) # store 0x179f2e5e4d9e4f27 in memory
fld f29, 0(x2) # load 0x179f2e5e4d9e4f27 from memory into f29
fcvt.l.d x27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0xc93a3e4dfc32043c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf801eba3f2c5d3f # load x3 with value 0xbf801eba3f2c5d3f
sd x3, 0(x2) # store 0xbf801eba3f2c5d3f in memory
fld f30, 0(x2) # load 0xbf801eba3f2c5d3f from memory into f30
fcvt.l.d x11, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x20, 0x6cced9c46447cc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x63773ba6cb215db3 # load x3 with value 0x63773ba6cb215db3
sd x3, 0(x2) # store 0x63773ba6cb215db3 in memory
fld f31, 0(x2) # load 0x63773ba6cb215db3 from memory into f31
fcvt.l.d x20, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
