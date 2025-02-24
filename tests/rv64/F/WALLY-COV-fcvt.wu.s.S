///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.wu.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.713135
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
li x0, 0x016eb5e50541d31e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7aa94c23752ee9 # load x3 with value 0xe7aa94c23752ee9
sw x3, 0(x2) # store 0xe7aa94c23752ee9 in memory
flw f26, 0(x2) # load 0xe7aa94c23752ee9 from memory into f26
fcvt.wu.s x0, f26 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x14d45943b2f05a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf2fbc7d12bfa009c # load x3 with value 0xf2fbc7d12bfa009c
sw x3, 0(x2) # store 0xf2fbc7d12bfa009c in memory
flw f4, 0(x2) # load 0xf2fbc7d12bfa009c from memory into f4
fcvt.wu.s x1, f4 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x561d3d266ec3d785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2a7a013bca66aed4 # load x3 with value 0x2a7a013bca66aed4
sw x3, 0(x2) # store 0x2a7a013bca66aed4 in memory
flw f14, 0(x2) # load 0x2a7a013bca66aed4 from memory into f14
fcvt.wu.s x2, f14 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x57c1895928f29718 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd7c85b9252d5a0a5 # load x3 with value 0xd7c85b9252d5a0a5
sw x3, 0(x2) # store 0xd7c85b9252d5a0a5 in memory
flw f15, 0(x2) # load 0xd7c85b9252d5a0a5 from memory into f15
fcvt.wu.s x3, f15 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x90e3685fd07c2287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x28ec3594a9a0a757 # load x3 with value 0x28ec3594a9a0a757
sw x3, 0(x2) # store 0x28ec3594a9a0a757 in memory
flw f4, 0(x2) # load 0x28ec3594a9a0a757 from memory into f4
fcvt.wu.s x4, f4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x083130ce559626b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x494606f66015f07e # load x3 with value 0x494606f66015f07e
sw x3, 0(x2) # store 0x494606f66015f07e in memory
flw f4, 0(x2) # load 0x494606f66015f07e from memory into f4
fcvt.wu.s x5, f4 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x8ba3e743b20ed16a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ad58962f581b0b5 # load x3 with value 0x7ad58962f581b0b5
sw x3, 0(x2) # store 0x7ad58962f581b0b5 in memory
flw f3, 0(x2) # load 0x7ad58962f581b0b5 from memory into f3
fcvt.wu.s x6, f3 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x3e1e99ac6dd4680f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa31deec51753de1d # load x3 with value 0xa31deec51753de1d
sw x3, 0(x2) # store 0xa31deec51753de1d in memory
flw f26, 0(x2) # load 0xa31deec51753de1d from memory into f26
fcvt.wu.s x7, f26 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5442c44108bd470f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf754f94e26e69819 # load x3 with value 0xf754f94e26e69819
sw x3, 0(x2) # store 0xf754f94e26e69819 in memory
flw f23, 0(x2) # load 0xf754f94e26e69819 from memory into f23
fcvt.wu.s x8, f23 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe279b96494330d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x616facae624bfc25 # load x3 with value 0x616facae624bfc25
sw x3, 0(x2) # store 0x616facae624bfc25 in memory
flw f22, 0(x2) # load 0x616facae624bfc25 from memory into f22
fcvt.wu.s x9, f22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5ec83b64f8178129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc7960b89526abe2c # load x3 with value 0xc7960b89526abe2c
sw x3, 0(x2) # store 0xc7960b89526abe2c in memory
flw f4, 0(x2) # load 0xc7960b89526abe2c from memory into f4
fcvt.wu.s x10, f4 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbf45e5015aa88469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf078555abafcf7e1 # load x3 with value 0xf078555abafcf7e1
sw x3, 0(x2) # store 0xf078555abafcf7e1 in memory
flw f15, 0(x2) # load 0xf078555abafcf7e1 from memory into f15
fcvt.wu.s x11, f15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x872a7e15e30128a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x332fc6bb8359dcb8 # load x3 with value 0x332fc6bb8359dcb8
sw x3, 0(x2) # store 0x332fc6bb8359dcb8 in memory
flw f26, 0(x2) # load 0x332fc6bb8359dcb8 from memory into f26
fcvt.wu.s x12, f26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7f22bb43ecf9dd86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9caa777020bdfa9b # load x3 with value 0x9caa777020bdfa9b
sw x3, 0(x2) # store 0x9caa777020bdfa9b in memory
flw f30, 0(x2) # load 0x9caa777020bdfa9b from memory into f30
fcvt.wu.s x13, f30 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x67cc2fbaed1bc75e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc42ddef3d53f2928 # load x3 with value 0xc42ddef3d53f2928
sw x3, 0(x2) # store 0xc42ddef3d53f2928 in memory
flw f22, 0(x2) # load 0xc42ddef3d53f2928 from memory into f22
fcvt.wu.s x14, f22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x25eda991f34346e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc0deca2bf1fa84f # load x3 with value 0xdc0deca2bf1fa84f
sw x3, 0(x2) # store 0xdc0deca2bf1fa84f in memory
flw f29, 0(x2) # load 0xdc0deca2bf1fa84f from memory into f29
fcvt.wu.s x15, f29 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x309feef9e91c7908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7174eaf160de83c8 # load x3 with value 0x7174eaf160de83c8
sw x3, 0(x2) # store 0x7174eaf160de83c8 in memory
flw f17, 0(x2) # load 0x7174eaf160de83c8 from memory into f17
fcvt.wu.s x16, f17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xac39e415b3425081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdaa3bb6cbec8e49f # load x3 with value 0xdaa3bb6cbec8e49f
sw x3, 0(x2) # store 0xdaa3bb6cbec8e49f in memory
flw f1, 0(x2) # load 0xdaa3bb6cbec8e49f from memory into f1
fcvt.wu.s x17, f1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd54909e6f2c33c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7007c06eb6a5dd2d # load x3 with value 0x7007c06eb6a5dd2d
sw x3, 0(x2) # store 0x7007c06eb6a5dd2d in memory
flw f1, 0(x2) # load 0x7007c06eb6a5dd2d from memory into f1
fcvt.wu.s x18, f1 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x1527db98ba75fdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8fbe389748520746 # load x3 with value 0x8fbe389748520746
sw x3, 0(x2) # store 0x8fbe389748520746 in memory
flw f31, 0(x2) # load 0x8fbe389748520746 from memory into f31
fcvt.wu.s x19, f31 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x9290ebb0557c407a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc7f305b46793421c # load x3 with value 0xc7f305b46793421c
sw x3, 0(x2) # store 0xc7f305b46793421c in memory
flw f19, 0(x2) # load 0xc7f305b46793421c from memory into f19
fcvt.wu.s x20, f19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xac4bb53fbb097492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x121a6950c2e81c67 # load x3 with value 0x121a6950c2e81c67
sw x3, 0(x2) # store 0x121a6950c2e81c67 in memory
flw f5, 0(x2) # load 0x121a6950c2e81c67 from memory into f5
fcvt.wu.s x21, f5 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x400720cd5cef297e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x25512422d8e0e665 # load x3 with value 0x25512422d8e0e665
sw x3, 0(x2) # store 0x25512422d8e0e665 in memory
flw f24, 0(x2) # load 0x25512422d8e0e665 from memory into f24
fcvt.wu.s x22, f24 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5d56a45cd9a5f8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7a14aee6a4cccafb # load x3 with value 0x7a14aee6a4cccafb
sw x3, 0(x2) # store 0x7a14aee6a4cccafb in memory
flw f22, 0(x2) # load 0x7a14aee6a4cccafb from memory into f22
fcvt.wu.s x23, f22 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x775dcba9393ccd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x441d8e1361cfe81d # load x3 with value 0x441d8e1361cfe81d
sw x3, 0(x2) # store 0x441d8e1361cfe81d in memory
flw f30, 0(x2) # load 0x441d8e1361cfe81d from memory into f30
fcvt.wu.s x24, f30 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf5b8e9f516889ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a0504a77eb31714 # load x3 with value 0x6a0504a77eb31714
sw x3, 0(x2) # store 0x6a0504a77eb31714 in memory
flw f22, 0(x2) # load 0x6a0504a77eb31714 from memory into f22
fcvt.wu.s x25, f22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc57807a9f35634ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa46a67669e483b65 # load x3 with value 0xa46a67669e483b65
sw x3, 0(x2) # store 0xa46a67669e483b65 in memory
flw f17, 0(x2) # load 0xa46a67669e483b65 from memory into f17
fcvt.wu.s x26, f17 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x39ed6c83a103bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x188a586de948fcd5 # load x3 with value 0x188a586de948fcd5
sw x3, 0(x2) # store 0x188a586de948fcd5 in memory
flw f24, 0(x2) # load 0x188a586de948fcd5 from memory into f24
fcvt.wu.s x27, f24 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb97031ec99a26af0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x420837b17fc1c88d # load x3 with value 0x420837b17fc1c88d
sw x3, 0(x2) # store 0x420837b17fc1c88d in memory
flw f19, 0(x2) # load 0x420837b17fc1c88d from memory into f19
fcvt.wu.s x28, f19 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2aea0b24696f7b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8073c66fa9bfe48f # load x3 with value 0x8073c66fa9bfe48f
sw x3, 0(x2) # store 0x8073c66fa9bfe48f in memory
flw f11, 0(x2) # load 0x8073c66fa9bfe48f from memory into f11
fcvt.wu.s x29, f11 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6f2468305bf21990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3a610f01710b9a17 # load x3 with value 0x3a610f01710b9a17
sw x3, 0(x2) # store 0x3a610f01710b9a17 in memory
flw f9, 0(x2) # load 0x3a610f01710b9a17 from memory into f9
fcvt.wu.s x30, f9 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x85a3ed1db0f44209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e08aa6bacac74d9 # load x3 with value 0x5e08aa6bacac74d9
sw x3, 0(x2) # store 0x5e08aa6bacac74d9 in memory
flw f28, 0(x2) # load 0x5e08aa6bacac74d9 from memory into f28
fcvt.wu.s x31, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x31, 0x0819cb732a225d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fcvt.wu.s x31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x12, 0xf4097bf62eb8bec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fcvt.wu.s x12, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x14, 0xff10e14b6ea8a538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fcvt.wu.s x14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x9, 0xf77bdbea02c65874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fcvt.wu.s x9, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x1, 0xac76973fc71d1282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fcvt.wu.s x1, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x8, 0x141b101367cabdf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fcvt.wu.s x8, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x17, 0x6c40843788ee91ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fcvt.wu.s x17, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x11, 0x03405892815f30b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fcvt.wu.s x11, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x30, 0xa38283c3bea45138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fcvt.wu.s x30, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x28, 0xf0ba4c103ec11f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fcvt.wu.s x28, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x30, 0x4c131958134c2266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fcvt.wu.s x30, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x4, 0x2196785ffa93b0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fcvt.wu.s x4, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x21, 0xb914329ba36c9da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fcvt.wu.s x21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x15, 0xafe59d317d52ccd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fcvt.wu.s x15, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x12, 0x6f19331b92245fba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fcvt.wu.s x12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x12, 0x6c3ae2edfe2e7fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fcvt.wu.s x12, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x14, 0x0d382aae6ae35253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fcvt.wu.s x14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x20, 0xe75966073938f8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fcvt.wu.s x20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x19, 0x0c0f579d06b0014b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fcvt.wu.s x19, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x13, 0x28d5b66733108472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fcvt.wu.s x13, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x8, 0xa328472caf9e4148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fcvt.wu.s x8, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x16, 0xc51cc79a007474c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fcvt.wu.s x16, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x11, 0x43869fd28a71e15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fcvt.wu.s x11, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x4, 0xb561b7e16c00699f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fcvt.wu.s x4, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x20, 0x973e80e9fac7acaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fcvt.wu.s x20, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x18, 0xe8f689b627a1c5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fcvt.wu.s x18, f28 # perform operation

# Testcase cp_frm
li x21, 0x97aaf570debf2417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf935c3cf4781c423 # load x3 with value 0xf935c3cf4781c423
sw x3, 0(x2) # store 0xf935c3cf4781c423 in memory
flw f17, 0(x2) # load 0xf935c3cf4781c423 from memory into f17
fcvt.wu.s x21, f17, dyn # perform operation
fcvt.wu.s x21, f17, rdn # perform operation
fcvt.wu.s x21, f17, rmm # perform operation
fcvt.wu.s x21, f17, rne # perform operation
fcvt.wu.s x21, f17, rtz # perform operation
fcvt.wu.s x21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x21, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x10, 0x8eb75d6d8783ad5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6eca3fe44cf04d23 # load x3 with value 0x6eca3fe44cf04d23
sw x3, 0(x2) # store 0x6eca3fe44cf04d23 in memory
flw f0, 0(x2) # load 0x6eca3fe44cf04d23 from memory into f0
fcvt.wu.s x10, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x8fc02317d2c9dd75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdcf968cf40b8d9ff # load x3 with value 0xdcf968cf40b8d9ff
sw x3, 0(x2) # store 0xdcf968cf40b8d9ff in memory
flw f1, 0(x2) # load 0xdcf968cf40b8d9ff from memory into f1
fcvt.wu.s x15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x4, 0x759dd9a4fdbf1db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc391bdb30f47b54f # load x3 with value 0xc391bdb30f47b54f
sw x3, 0(x2) # store 0xc391bdb30f47b54f in memory
flw f2, 0(x2) # load 0xc391bdb30f47b54f from memory into f2
fcvt.wu.s x4, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x12, 0xb20a16f9d07da3d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9825df81ecf543a0 # load x3 with value 0x9825df81ecf543a0
sw x3, 0(x2) # store 0x9825df81ecf543a0 in memory
flw f3, 0(x2) # load 0x9825df81ecf543a0 from memory into f3
fcvt.wu.s x12, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x18, 0x5441ffb35f42be78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ea8ebf812f2fc25 # load x3 with value 0x3ea8ebf812f2fc25
sw x3, 0(x2) # store 0x3ea8ebf812f2fc25 in memory
flw f4, 0(x2) # load 0x3ea8ebf812f2fc25 from memory into f4
fcvt.wu.s x18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x11, 0xc1410e01c9a38cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80e1f297b0886ecc # load x3 with value 0x80e1f297b0886ecc
sw x3, 0(x2) # store 0x80e1f297b0886ecc in memory
flw f5, 0(x2) # load 0x80e1f297b0886ecc from memory into f5
fcvt.wu.s x11, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x7, 0x63dc14dbf8c5ce51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a893a5794d30a26 # load x3 with value 0x8a893a5794d30a26
sw x3, 0(x2) # store 0x8a893a5794d30a26 in memory
flw f6, 0(x2) # load 0x8a893a5794d30a26 from memory into f6
fcvt.wu.s x7, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x13, 0xc7a493dc96b12527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc4af15b8f442fa5 # load x3 with value 0xdc4af15b8f442fa5
sw x3, 0(x2) # store 0xdc4af15b8f442fa5 in memory
flw f7, 0(x2) # load 0xdc4af15b8f442fa5 from memory into f7
fcvt.wu.s x13, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x30, 0x5f6bd504058884f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x425f70a75c6c1f9c # load x3 with value 0x425f70a75c6c1f9c
sw x3, 0(x2) # store 0x425f70a75c6c1f9c in memory
flw f8, 0(x2) # load 0x425f70a75c6c1f9c from memory into f8
fcvt.wu.s x30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x30, 0x1a41aa1c0822d44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1cd2a801b1f794fb # load x3 with value 0x1cd2a801b1f794fb
sw x3, 0(x2) # store 0x1cd2a801b1f794fb in memory
flw f9, 0(x2) # load 0x1cd2a801b1f794fb from memory into f9
fcvt.wu.s x30, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x27, 0x711fbcd9c0e31513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc2006d427d143cf2 # load x3 with value 0xc2006d427d143cf2
sw x3, 0(x2) # store 0xc2006d427d143cf2 in memory
flw f10, 0(x2) # load 0xc2006d427d143cf2 from memory into f10
fcvt.wu.s x27, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x9, 0x93e452d646c600c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8ea5341dd29ce20 # load x3 with value 0xd8ea5341dd29ce20
sw x3, 0(x2) # store 0xd8ea5341dd29ce20 in memory
flw f11, 0(x2) # load 0xd8ea5341dd29ce20 from memory into f11
fcvt.wu.s x9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x28, 0x74ed3b2e24bf91ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc9b38c693bc8210 # load x3 with value 0xdc9b38c693bc8210
sw x3, 0(x2) # store 0xdc9b38c693bc8210 in memory
flw f12, 0(x2) # load 0xdc9b38c693bc8210 from memory into f12
fcvt.wu.s x28, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x14, 0x7b9bc68f60028c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd5a4e0db091a7ecd # load x3 with value 0xd5a4e0db091a7ecd
sw x3, 0(x2) # store 0xd5a4e0db091a7ecd in memory
flw f13, 0(x2) # load 0xd5a4e0db091a7ecd from memory into f13
fcvt.wu.s x14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0x3e693b13ef3274c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xefe1b361e0a9d524 # load x3 with value 0xefe1b361e0a9d524
sw x3, 0(x2) # store 0xefe1b361e0a9d524 in memory
flw f14, 0(x2) # load 0xefe1b361e0a9d524 from memory into f14
fcvt.wu.s x23, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x22, 0x3d6e54bfdf612ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80cce986149621a3 # load x3 with value 0x80cce986149621a3
sw x3, 0(x2) # store 0x80cce986149621a3 in memory
flw f15, 0(x2) # load 0x80cce986149621a3 from memory into f15
fcvt.wu.s x22, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x12, 0xbe9d9c530288afe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc22e4380a8911e10 # load x3 with value 0xc22e4380a8911e10
sw x3, 0(x2) # store 0xc22e4380a8911e10 in memory
flw f16, 0(x2) # load 0xc22e4380a8911e10 from memory into f16
fcvt.wu.s x12, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x19, 0xa5e8854550ba3397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x25214864d3bee66d # load x3 with value 0x25214864d3bee66d
sw x3, 0(x2) # store 0x25214864d3bee66d in memory
flw f17, 0(x2) # load 0x25214864d3bee66d from memory into f17
fcvt.wu.s x19, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0x1bdff2e75902ea4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x315ed68ce7bf1d72 # load x3 with value 0x315ed68ce7bf1d72
sw x3, 0(x2) # store 0x315ed68ce7bf1d72 in memory
flw f18, 0(x2) # load 0x315ed68ce7bf1d72 from memory into f18
fcvt.wu.s x27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x11, 0x940cb26aedec7a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xddfaad684959ab9 # load x3 with value 0xddfaad684959ab9
sw x3, 0(x2) # store 0xddfaad684959ab9 in memory
flw f19, 0(x2) # load 0xddfaad684959ab9 from memory into f19
fcvt.wu.s x11, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x16, 0xda9831da97584041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x64ce71115ef92bdf # load x3 with value 0x64ce71115ef92bdf
sw x3, 0(x2) # store 0x64ce71115ef92bdf in memory
flw f20, 0(x2) # load 0x64ce71115ef92bdf from memory into f20
fcvt.wu.s x16, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0x5de9a84b006b27f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9a06e4215bc45eaf # load x3 with value 0x9a06e4215bc45eaf
sw x3, 0(x2) # store 0x9a06e4215bc45eaf in memory
flw f21, 0(x2) # load 0x9a06e4215bc45eaf from memory into f21
fcvt.wu.s x21, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x6, 0x285d857c1adfc50b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x343176861ef6c6c5 # load x3 with value 0x343176861ef6c6c5
sw x3, 0(x2) # store 0x343176861ef6c6c5 in memory
flw f22, 0(x2) # load 0x343176861ef6c6c5 from memory into f22
fcvt.wu.s x6, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x22, 0xfd160f38add1fe4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d583fb73f70675d # load x3 with value 0x5d583fb73f70675d
sw x3, 0(x2) # store 0x5d583fb73f70675d in memory
flw f23, 0(x2) # load 0x5d583fb73f70675d from memory into f23
fcvt.wu.s x22, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x31, 0xc41c0ca4cc61950b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f20d95127311aaa # load x3 with value 0x3f20d95127311aaa
sw x3, 0(x2) # store 0x3f20d95127311aaa in memory
flw f24, 0(x2) # load 0x3f20d95127311aaa from memory into f24
fcvt.wu.s x31, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x17, 0xbd172deaed0b5dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e8d2a671a5c4988 # load x3 with value 0x2e8d2a671a5c4988
sw x3, 0(x2) # store 0x2e8d2a671a5c4988 in memory
flw f25, 0(x2) # load 0x2e8d2a671a5c4988 from memory into f25
fcvt.wu.s x17, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x26, 0xf21b9a16ded552fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea08f5c08789a540 # load x3 with value 0xea08f5c08789a540
sw x3, 0(x2) # store 0xea08f5c08789a540 in memory
flw f26, 0(x2) # load 0xea08f5c08789a540 from memory into f26
fcvt.wu.s x26, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x8, 0xcc541a4f2c7875e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87103286dc30ea8e # load x3 with value 0x87103286dc30ea8e
sw x3, 0(x2) # store 0x87103286dc30ea8e in memory
flw f27, 0(x2) # load 0x87103286dc30ea8e from memory into f27
fcvt.wu.s x8, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0xf6bbd7549a97a590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x33cedef03db0530a # load x3 with value 0x33cedef03db0530a
sw x3, 0(x2) # store 0x33cedef03db0530a in memory
flw f28, 0(x2) # load 0x33cedef03db0530a from memory into f28
fcvt.wu.s x7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x9, 0xf3ab81861de0b43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x37d446a747df9e1d # load x3 with value 0x37d446a747df9e1d
sw x3, 0(x2) # store 0x37d446a747df9e1d in memory
flw f29, 0(x2) # load 0x37d446a747df9e1d from memory into f29
fcvt.wu.s x9, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x30, 0xd749b9d162b07566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff6d84c61a85837 # load x3 with value 0xff6d84c61a85837
sw x3, 0(x2) # store 0xff6d84c61a85837 in memory
flw f30, 0(x2) # load 0xff6d84c61a85837 from memory into f30
fcvt.wu.s x30, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x13, 0xb21d21c2d98c421f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a70be75b4689610 # load x3 with value 0x6a70be75b4689610
sw x3, 0(x2) # store 0x6a70be75b4689610 in memory
flw f31, 0(x2) # load 0x6a70be75b4689610 from memory into f31
fcvt.wu.s x13, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
