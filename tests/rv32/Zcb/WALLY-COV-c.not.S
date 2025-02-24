///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.not.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.800778
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x746c1adb)
li x25, 0x58021750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5ef06417 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_sign (Test source rs1 value = -0x4ee737a0)
li x12, 0xdaa0e7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb50734d0 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x37aefd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeab0df8c # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0ee20867 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd5301fce # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2786ce15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0c03f22d # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc731bbe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x46c253a6 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4b8b524d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d30fd29 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc3949387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa72011b7 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x347c6779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5ce3a2d4 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3a8c8b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f9e9479 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xf5cc85ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcf46ca41 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xb47ef719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x9530cd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x62ecb432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x763142f9 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x8d341163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xdc0fe702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xc9a39322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xafc6d907 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0xdc09f38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x5423dc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x788a53db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4ddf2d1c # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x16, 0x92a0170b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x13, 0x24a72efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x19555b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3a6f063f # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0xad333aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x69f47e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x13, 0xdf9519e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x65485d9b # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x23, 0x5a22505b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xd6893903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x1885028f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x726e0d51 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0xc957f3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x44590bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x979bbca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8d353205 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x31c64f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0x0406a5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xa1d2010c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5b267a84 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0x414ff1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0xdc199df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0xf265a74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4067a74c # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x55d422c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xbdead88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0xc6092f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5a375c7c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0x373620fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x25, 0x6c83deb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x3, 0xfb200d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa94b00c2 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0x189d02e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0x363d0afb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xcc925d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x63e618bd # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x27c938fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf16b16ce # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0xa358ecae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x100806a6 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xea767587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7e0b4d17 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0xb490d960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3d6af9ea # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x76a7afb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd659a0ad # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0xfb7964e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x772583da # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0x394452f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe20740f8 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x6a6c7615 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfbe06aab # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0xde0b356d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x82b5538b # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0x25d72578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4fe63f49 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x18, 0x08d998c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3627431a # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x16cce3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x028981b2 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x590be21b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x71bb2d9d # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0xdb28f01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8fd49919 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xe006d535 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xac5a9de9 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x68c119f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa64f37cc # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x26, 0x21392019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x14db1b5e # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x21, 0xeb624241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x81024880 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x53f94ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x72bf8bc4 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
