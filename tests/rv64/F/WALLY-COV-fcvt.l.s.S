///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.l.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.708953
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
li x0, 0xf65d1b8f5b7205ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbd9c02e8a670b4e2 # load x3 with value 0xbd9c02e8a670b4e2
sw x3, 0(x2) # store 0xbd9c02e8a670b4e2 in memory
flw f21, 0(x2) # load 0xbd9c02e8a670b4e2 from memory into f21
fcvt.l.s x0, f21 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0524cf441387ace7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x24e8629679b6b7db # load x3 with value 0x24e8629679b6b7db
sw x3, 0(x2) # store 0x24e8629679b6b7db in memory
flw f15, 0(x2) # load 0x24e8629679b6b7db from memory into f15
fcvt.l.s x1, f15 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x42b6d8fed90b240d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9d58d27d5a885aa1 # load x3 with value 0x9d58d27d5a885aa1
sw x3, 0(x2) # store 0x9d58d27d5a885aa1 in memory
flw f21, 0(x2) # load 0x9d58d27d5a885aa1 from memory into f21
fcvt.l.s x2, f21 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3f9383492487cade # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf54a208239a53d80 # load x3 with value 0xf54a208239a53d80
sw x3, 0(x2) # store 0xf54a208239a53d80 in memory
flw f16, 0(x2) # load 0xf54a208239a53d80 from memory into f16
fcvt.l.s x3, f16 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x2fcda2f924bc0198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc4b6474d187fde8c # load x3 with value 0xc4b6474d187fde8c
sw x3, 0(x2) # store 0xc4b6474d187fde8c in memory
flw f13, 0(x2) # load 0xc4b6474d187fde8c from memory into f13
fcvt.l.s x4, f13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf2a9c6ffbeabb043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc6c442b9c557c5c5 # load x3 with value 0xc6c442b9c557c5c5
sw x3, 0(x2) # store 0xc6c442b9c557c5c5 in memory
flw f13, 0(x2) # load 0xc6c442b9c557c5c5 from memory into f13
fcvt.l.s x5, f13 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb9767c31bc45f54c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1a5d6ba3566a5d88 # load x3 with value 0x1a5d6ba3566a5d88
sw x3, 0(x2) # store 0x1a5d6ba3566a5d88 in memory
flw f4, 0(x2) # load 0x1a5d6ba3566a5d88 from memory into f4
fcvt.l.s x6, f4 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb94dd625679a1041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fdbd9a2dbb136b0 # load x3 with value 0x7fdbd9a2dbb136b0
sw x3, 0(x2) # store 0x7fdbd9a2dbb136b0 in memory
flw f27, 0(x2) # load 0x7fdbd9a2dbb136b0 from memory into f27
fcvt.l.s x7, f27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x129c4ecc26d4d1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5bb9db46bc6851b9 # load x3 with value 0x5bb9db46bc6851b9
sw x3, 0(x2) # store 0x5bb9db46bc6851b9 in memory
flw f27, 0(x2) # load 0x5bb9db46bc6851b9 from memory into f27
fcvt.l.s x8, f27 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdfefadb163b4c071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc47293cab1ac88a # load x3 with value 0xbc47293cab1ac88a
sw x3, 0(x2) # store 0xbc47293cab1ac88a in memory
flw f6, 0(x2) # load 0xbc47293cab1ac88a from memory into f6
fcvt.l.s x9, f6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x33d55f17bdc10aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7b96d7b17d11d0bb # load x3 with value 0x7b96d7b17d11d0bb
sw x3, 0(x2) # store 0x7b96d7b17d11d0bb in memory
flw f19, 0(x2) # load 0x7b96d7b17d11d0bb from memory into f19
fcvt.l.s x10, f19 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x499fce2c7634bcf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cd7c2ed895b7dcf # load x3 with value 0x2cd7c2ed895b7dcf
sw x3, 0(x2) # store 0x2cd7c2ed895b7dcf in memory
flw f31, 0(x2) # load 0x2cd7c2ed895b7dcf from memory into f31
fcvt.l.s x11, f31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb2cc395f6b5c2333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f25e8fef2dcc651 # load x3 with value 0x7f25e8fef2dcc651
sw x3, 0(x2) # store 0x7f25e8fef2dcc651 in memory
flw f21, 0(x2) # load 0x7f25e8fef2dcc651 from memory into f21
fcvt.l.s x12, f21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x972f2694b004f2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x71aa724087b7eb54 # load x3 with value 0x71aa724087b7eb54
sw x3, 0(x2) # store 0x71aa724087b7eb54 in memory
flw f16, 0(x2) # load 0x71aa724087b7eb54 from memory into f16
fcvt.l.s x13, f16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9e17d46df2fba80c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4f86beabbe72b4a6 # load x3 with value 0x4f86beabbe72b4a6
sw x3, 0(x2) # store 0x4f86beabbe72b4a6 in memory
flw f10, 0(x2) # load 0x4f86beabbe72b4a6 from memory into f10
fcvt.l.s x14, f10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9dd6c3d766ae8b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb60dba93fd03d067 # load x3 with value 0xb60dba93fd03d067
sw x3, 0(x2) # store 0xb60dba93fd03d067 in memory
flw f6, 0(x2) # load 0xb60dba93fd03d067 from memory into f6
fcvt.l.s x15, f6 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfa450e236a0799d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf738b96a3f8af52 # load x3 with value 0xf738b96a3f8af52
sw x3, 0(x2) # store 0xf738b96a3f8af52 in memory
flw f17, 0(x2) # load 0xf738b96a3f8af52 from memory into f17
fcvt.l.s x16, f17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfa8b553f7b935492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ca3bdfeda089aab # load x3 with value 0x7ca3bdfeda089aab
sw x3, 0(x2) # store 0x7ca3bdfeda089aab in memory
flw f25, 0(x2) # load 0x7ca3bdfeda089aab from memory into f25
fcvt.l.s x17, f25 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0522b7d827681b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40faa8fa3396e9fe # load x3 with value 0x40faa8fa3396e9fe
sw x3, 0(x2) # store 0x40faa8fa3396e9fe in memory
flw f5, 0(x2) # load 0x40faa8fa3396e9fe from memory into f5
fcvt.l.s x18, f5 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbab541ac15c862bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x454ceaed895dfea0 # load x3 with value 0x454ceaed895dfea0
sw x3, 0(x2) # store 0x454ceaed895dfea0 in memory
flw f30, 0(x2) # load 0x454ceaed895dfea0 from memory into f30
fcvt.l.s x19, f30 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x2ebc91bd4ccab45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc779abb5aa82981c # load x3 with value 0xc779abb5aa82981c
sw x3, 0(x2) # store 0xc779abb5aa82981c in memory
flw f29, 0(x2) # load 0xc779abb5aa82981c from memory into f29
fcvt.l.s x20, f29 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x52665f96c131a258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6d4e115e3135a745 # load x3 with value 0x6d4e115e3135a745
sw x3, 0(x2) # store 0x6d4e115e3135a745 in memory
flw f24, 0(x2) # load 0x6d4e115e3135a745 from memory into f24
fcvt.l.s x21, f24 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8af3b9f8bb80b34b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7a1925d1a07d2eec # load x3 with value 0x7a1925d1a07d2eec
sw x3, 0(x2) # store 0x7a1925d1a07d2eec in memory
flw f28, 0(x2) # load 0x7a1925d1a07d2eec from memory into f28
fcvt.l.s x22, f28 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf2740b1ac3e25191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc2fc9cb8a34c8ed # load x3 with value 0xcc2fc9cb8a34c8ed
sw x3, 0(x2) # store 0xcc2fc9cb8a34c8ed in memory
flw f2, 0(x2) # load 0xcc2fc9cb8a34c8ed from memory into f2
fcvt.l.s x23, f2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd0335248e44ff6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x528f5e367674a3e3 # load x3 with value 0x528f5e367674a3e3
sw x3, 0(x2) # store 0x528f5e367674a3e3 in memory
flw f11, 0(x2) # load 0x528f5e367674a3e3 from memory into f11
fcvt.l.s x24, f11 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb26a4ed1b39573e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8dbfb711a929a57 # load x3 with value 0xd8dbfb711a929a57
sw x3, 0(x2) # store 0xd8dbfb711a929a57 in memory
flw f16, 0(x2) # load 0xd8dbfb711a929a57 from memory into f16
fcvt.l.s x25, f16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb3fae0ad31876cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa85c84b9504e888e # load x3 with value 0xa85c84b9504e888e
sw x3, 0(x2) # store 0xa85c84b9504e888e in memory
flw f28, 0(x2) # load 0xa85c84b9504e888e from memory into f28
fcvt.l.s x26, f28 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa5e6a6c726034d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfae991a438d30d9a # load x3 with value 0xfae991a438d30d9a
sw x3, 0(x2) # store 0xfae991a438d30d9a in memory
flw f24, 0(x2) # load 0xfae991a438d30d9a from memory into f24
fcvt.l.s x27, f24 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc53bccb94c7d6a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8330648b9a7d11b7 # load x3 with value 0x8330648b9a7d11b7
sw x3, 0(x2) # store 0x8330648b9a7d11b7 in memory
flw f8, 0(x2) # load 0x8330648b9a7d11b7 from memory into f8
fcvt.l.s x28, f8 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7c02d7f256145b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x314b829a98f119cd # load x3 with value 0x314b829a98f119cd
sw x3, 0(x2) # store 0x314b829a98f119cd in memory
flw f26, 0(x2) # load 0x314b829a98f119cd from memory into f26
fcvt.l.s x29, f26 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6af2a2919d24d09d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc7e39f0af2b950f1 # load x3 with value 0xc7e39f0af2b950f1
sw x3, 0(x2) # store 0xc7e39f0af2b950f1 in memory
flw f25, 0(x2) # load 0xc7e39f0af2b950f1 from memory into f25
fcvt.l.s x30, f25 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9e8ce8637d92d17b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x804d0136145ac7f6 # load x3 with value 0x804d0136145ac7f6
sw x3, 0(x2) # store 0x804d0136145ac7f6 in memory
flw f12, 0(x2) # load 0x804d0136145ac7f6 from memory into f12
fcvt.l.s x31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0x366234f577531e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fcvt.l.s x27, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x4, 0x80596396924456da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fcvt.l.s x4, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x11, 0x20682d5cb6f976e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fcvt.l.s x11, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x18, 0xcbc539c551894e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fcvt.l.s x18, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x30, 0xa96b1df73616682d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fcvt.l.s x30, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x24, 0xe38b6e9469c450f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fcvt.l.s x24, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x7, 0x55a187462dc255ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fcvt.l.s x7, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x20, 0xc9989e7ead9f20df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fcvt.l.s x20, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x22, 0x7494bc8cf7c39f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fcvt.l.s x22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x9, 0x94d891345ae4872e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fcvt.l.s x9, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x15, 0xb372f3b13b48d9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fcvt.l.s x15, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x14, 0xb3677ac7e8d56c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fcvt.l.s x14, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x10, 0xec71ffb9a4b12317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fcvt.l.s x10, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x2, 0x0483607476619503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fcvt.l.s x2, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x7, 0x5e9cc571dfd4b3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fcvt.l.s x7, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x11, 0xa35b39f30cc84796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
fcvt.l.s x11, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x9, 0x4fbdb73ebd9e8599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fcvt.l.s x9, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x30, 0xdf2604bb59df1f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fcvt.l.s x30, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x24, 0x5a4d8a855167fe83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fcvt.l.s x24, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x18, 0xde6374d5f35f3220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fcvt.l.s x18, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x12, 0x2b319e582f83de24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fcvt.l.s x12, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x11, 0xcc5ce1057e03f426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fcvt.l.s x11, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x11, 0x80b8f4cea8e0f5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fcvt.l.s x11, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x6, 0xa7fe3a098cd002fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fcvt.l.s x6, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x29, 0x46c0e938bac07ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fcvt.l.s x29, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x3, 0xae00bb24cc55c28e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fcvt.l.s x3, f20 # perform operation

# Testcase cp_frm
li x21, 0xaa29b56daa92dd74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf755a5a436c11894 # load x3 with value 0xf755a5a436c11894
sw x3, 0(x2) # store 0xf755a5a436c11894 in memory
flw f22, 0(x2) # load 0xf755a5a436c11894 from memory into f22
fcvt.l.s x21, f22, dyn # perform operation
fcvt.l.s x21, f22, rdn # perform operation
fcvt.l.s x21, f22, rmm # perform operation
fcvt.l.s x21, f22, rne # perform operation
fcvt.l.s x21, f22, rtz # perform operation
fcvt.l.s x21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.s x21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.s x21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.s x21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.s x21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.s x21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x19, 0xd6325481fcf688b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8fb8da0fd805413 # load x3 with value 0xe8fb8da0fd805413
sw x3, 0(x2) # store 0xe8fb8da0fd805413 in memory
flw f0, 0(x2) # load 0xe8fb8da0fd805413 from memory into f0
fcvt.l.s x19, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x23, 0x975f4eebdbe86fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc80e561e604e54ea # load x3 with value 0xc80e561e604e54ea
sw x3, 0(x2) # store 0xc80e561e604e54ea in memory
flw f1, 0(x2) # load 0xc80e561e604e54ea from memory into f1
fcvt.l.s x23, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x20, 0x3e9f9971dd0bc9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7e0d0d2e137cd0f2 # load x3 with value 0x7e0d0d2e137cd0f2
sw x3, 0(x2) # store 0x7e0d0d2e137cd0f2 in memory
flw f2, 0(x2) # load 0x7e0d0d2e137cd0f2 from memory into f2
fcvt.l.s x20, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x11, 0xf9a14f4a7374e291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x510b874b43c34807 # load x3 with value 0x510b874b43c34807
sw x3, 0(x2) # store 0x510b874b43c34807 in memory
flw f3, 0(x2) # load 0x510b874b43c34807 from memory into f3
fcvt.l.s x11, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x7, 0x43e87dcc3999f326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc89c402f28edb4d8 # load x3 with value 0xc89c402f28edb4d8
sw x3, 0(x2) # store 0xc89c402f28edb4d8 in memory
flw f4, 0(x2) # load 0xc89c402f28edb4d8 from memory into f4
fcvt.l.s x7, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x2, 0x7c17933b3ee649fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xacbd27f58885f571 # load x3 with value 0xacbd27f58885f571
sw x3, 0(x2) # store 0xacbd27f58885f571 in memory
flw f5, 0(x2) # load 0xacbd27f58885f571 from memory into f5
fcvt.l.s x2, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x2, 0xb8be7a73aea7e1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb8b2fdd4c488f75 # load x3 with value 0xbb8b2fdd4c488f75
sw x3, 0(x2) # store 0xbb8b2fdd4c488f75 in memory
flw f6, 0(x2) # load 0xbb8b2fdd4c488f75 from memory into f6
fcvt.l.s x2, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x11, 0x3e6f8dca950fa207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x848751ba83882cac # load x3 with value 0x848751ba83882cac
sw x3, 0(x2) # store 0x848751ba83882cac in memory
flw f7, 0(x2) # load 0x848751ba83882cac from memory into f7
fcvt.l.s x11, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0x67a4a0b0ae3c826d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec4d8c3d2fc739b1 # load x3 with value 0xec4d8c3d2fc739b1
sw x3, 0(x2) # store 0xec4d8c3d2fc739b1 in memory
flw f8, 0(x2) # load 0xec4d8c3d2fc739b1 from memory into f8
fcvt.l.s x10, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x21, 0x6a127d5793d4cbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2886848244923668 # load x3 with value 0x2886848244923668
sw x3, 0(x2) # store 0x2886848244923668 in memory
flw f9, 0(x2) # load 0x2886848244923668 from memory into f9
fcvt.l.s x21, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x14, 0xb145ec2bd5228108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8d03344cbf2543af # load x3 with value 0x8d03344cbf2543af
sw x3, 0(x2) # store 0x8d03344cbf2543af in memory
flw f10, 0(x2) # load 0x8d03344cbf2543af from memory into f10
fcvt.l.s x14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x18, 0x62a61205a64df31d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9e2ae187a1c086b2 # load x3 with value 0x9e2ae187a1c086b2
sw x3, 0(x2) # store 0x9e2ae187a1c086b2 in memory
flw f11, 0(x2) # load 0x9e2ae187a1c086b2 from memory into f11
fcvt.l.s x18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0xcb2d55d8e0d241a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1cbb4ed08eb195fa # load x3 with value 0x1cbb4ed08eb195fa
sw x3, 0(x2) # store 0x1cbb4ed08eb195fa in memory
flw f12, 0(x2) # load 0x1cbb4ed08eb195fa from memory into f12
fcvt.l.s x11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0x520cf1114feb16d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3207a759d88b0a94 # load x3 with value 0x3207a759d88b0a94
sw x3, 0(x2) # store 0x3207a759d88b0a94 in memory
flw f13, 0(x2) # load 0x3207a759d88b0a94 from memory into f13
fcvt.l.s x5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0x57882f6f7bc52e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa7bb1ba8667db050 # load x3 with value 0xa7bb1ba8667db050
sw x3, 0(x2) # store 0xa7bb1ba8667db050 in memory
flw f14, 0(x2) # load 0xa7bb1ba8667db050 from memory into f14
fcvt.l.s x13, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x16, 0x35e090c48164f11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdaa8eb731ea4e4ea # load x3 with value 0xdaa8eb731ea4e4ea
sw x3, 0(x2) # store 0xdaa8eb731ea4e4ea in memory
flw f15, 0(x2) # load 0xdaa8eb731ea4e4ea from memory into f15
fcvt.l.s x16, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x10, 0x3ae059de5d0764fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb644799065281b5f # load x3 with value 0xb644799065281b5f
sw x3, 0(x2) # store 0xb644799065281b5f in memory
flw f16, 0(x2) # load 0xb644799065281b5f from memory into f16
fcvt.l.s x10, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x3, 0x02c87d192a6112a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x983543c774aa6d2 # load x3 with value 0x983543c774aa6d2
sw x3, 0(x2) # store 0x983543c774aa6d2 in memory
flw f17, 0(x2) # load 0x983543c774aa6d2 from memory into f17
fcvt.l.s x3, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x5, 0x58e68bfb418e473a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x71c1d94fa0663dac # load x3 with value 0x71c1d94fa0663dac
sw x3, 0(x2) # store 0x71c1d94fa0663dac in memory
flw f18, 0(x2) # load 0x71c1d94fa0663dac from memory into f18
fcvt.l.s x5, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x15, 0x36fc3e96baae5ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc07f8dadc9f40838 # load x3 with value 0xc07f8dadc9f40838
sw x3, 0(x2) # store 0xc07f8dadc9f40838 in memory
flw f19, 0(x2) # load 0xc07f8dadc9f40838 from memory into f19
fcvt.l.s x15, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0x7ac903f84d2295b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xca49b0698693edc1 # load x3 with value 0xca49b0698693edc1
sw x3, 0(x2) # store 0xca49b0698693edc1 in memory
flw f20, 0(x2) # load 0xca49b0698693edc1 from memory into f20
fcvt.l.s x2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x24, 0x534e0df8228fee2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf31031778bf5e9c5 # load x3 with value 0xf31031778bf5e9c5
sw x3, 0(x2) # store 0xf31031778bf5e9c5 in memory
flw f21, 0(x2) # load 0xf31031778bf5e9c5 from memory into f21
fcvt.l.s x24, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x16, 0xb969842303260a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa78592f52acae6c # load x3 with value 0xa78592f52acae6c
sw x3, 0(x2) # store 0xa78592f52acae6c in memory
flw f22, 0(x2) # load 0xa78592f52acae6c from memory into f22
fcvt.l.s x16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x9, 0x41f1b2f2a59a1329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4626ebf2d34e4a1e # load x3 with value 0x4626ebf2d34e4a1e
sw x3, 0(x2) # store 0x4626ebf2d34e4a1e in memory
flw f23, 0(x2) # load 0x4626ebf2d34e4a1e from memory into f23
fcvt.l.s x9, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x3, 0xe595900e064e5afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x73bda887db03bd75 # load x3 with value 0x73bda887db03bd75
sw x3, 0(x2) # store 0x73bda887db03bd75 in memory
flw f24, 0(x2) # load 0x73bda887db03bd75 from memory into f24
fcvt.l.s x3, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x16, 0x42bebe29a582ae7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb71c56c4ef5bc26f # load x3 with value 0xb71c56c4ef5bc26f
sw x3, 0(x2) # store 0xb71c56c4ef5bc26f in memory
flw f25, 0(x2) # load 0xb71c56c4ef5bc26f from memory into f25
fcvt.l.s x16, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x7, 0x40c87646ed029c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed158c0f03f6c56b # load x3 with value 0xed158c0f03f6c56b
sw x3, 0(x2) # store 0xed158c0f03f6c56b in memory
flw f26, 0(x2) # load 0xed158c0f03f6c56b from memory into f26
fcvt.l.s x7, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x27, 0x7b92bdbc63027ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcf8848d995c5c969 # load x3 with value 0xcf8848d995c5c969
sw x3, 0(x2) # store 0xcf8848d995c5c969 in memory
flw f27, 0(x2) # load 0xcf8848d995c5c969 from memory into f27
fcvt.l.s x27, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x1, 0xf568d2d8d26dbe9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4288e42a1f146a49 # load x3 with value 0x4288e42a1f146a49
sw x3, 0(x2) # store 0x4288e42a1f146a49 in memory
flw f28, 0(x2) # load 0x4288e42a1f146a49 from memory into f28
fcvt.l.s x1, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x11, 0xbbf6cdc00d5947b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe65b5646620ccb83 # load x3 with value 0xe65b5646620ccb83
sw x3, 0(x2) # store 0xe65b5646620ccb83 in memory
flw f29, 0(x2) # load 0xe65b5646620ccb83 from memory into f29
fcvt.l.s x11, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x4, 0x45ef12034344fb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc62d0ea295d94846 # load x3 with value 0xc62d0ea295d94846
sw x3, 0(x2) # store 0xc62d0ea295d94846 in memory
flw f30, 0(x2) # load 0xc62d0ea295d94846 from memory into f30
fcvt.l.s x4, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x6, 0x291b07ea7ceafd80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb88e6b913637f99a # load x3 with value 0xb88e6b913637f99a
sw x3, 0(x2) # store 0xb88e6b913637f99a in memory
flw f31, 0(x2) # load 0xb88e6b913637f99a from memory into f31
fcvt.l.s x6, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
