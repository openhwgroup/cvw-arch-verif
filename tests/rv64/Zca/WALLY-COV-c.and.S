///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.and.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.979760
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x754d0d717d2edb8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x43e55a2ebac823cf # initialize leagalized rd to a random value that should get changed
li x9, 0x82959644bc3c9932 # initialize rs2
c.and x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x910174c55898612d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5f47b06a2f70f7fc # initialize leagalized rd to a random value that should get changed
li x14, 0x681a2b3214d0f480 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3efe07c7f001a931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1bae1212107ffd57 # initialize leagalized rd to a random value that should get changed
li x11, 0xe094343de5a5647d # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x91369c3313997a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x63f9578b26276057 # initialize leagalized rd to a random value that should get changed
li x9, 0x4e407a23a56e0514 # initialize rs2
c.and x11, x9 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb03c638a48c94625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb6506489a0d4ddea # initialize leagalized rd to a random value that should get changed
li x13, 0x19c0df336f39fd80 # initialize rs2
c.and x12, x13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x075ae9bedbc3daf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0ee738c45f210a3 # initialize leagalized rd to a random value that should get changed
li x14, 0xf5dff921355dd96c # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x418b3694ae539d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf09df51a6860d2ba # initialize leagalized rd to a random value that should get changed
li x9, 0xc65a97534fb002ce # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0ce54ff3b907d9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8e09bceb0e5b5e35 # initialize leagalized rd to a random value that should get changed
li x13, 0xcdcae2262ca7e413 # initialize rs2
c.and x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0x08f9c68ba07d60cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8b6d40ffaad393ed # initialize leagalized rd to a random value that should get changed
li x8, 0x8964d9289938d1b6 # initialize rs2
c.and x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x56d6f36ed86578a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f24e92928e00aba # initialize leagalized rd to a random value that should get changed
li x9, 0x197f9b94ce5fdbe2 # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x09977f56c066efb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa9e46cd55cb55bf7 # initialize leagalized rd to a random value that should get changed
li x10, 0x5364862a7bb308c9 # initialize rs2
c.and x10, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x5b6c0106a5f80fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3cb6d3e0e565e5c6 # initialize leagalized rd to a random value that should get changed
li x11, 0xee61b7c8c1b6b2a8 # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x5babcfe28c81a58a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x21319f37f0139462 # initialize leagalized rd to a random value that should get changed
li x12, 0x0afaf204befb8b8f # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x8f36debad02f66dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdb65c46e0a9dc5c3 # initialize leagalized rd to a random value that should get changed
li x13, 0x294473cc4aed15ba # initialize rs2
c.and x14, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x27b5f19fc9189d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x368c84b2624f9b3e # initialize leagalized rd to a random value that should get changed
li x14, 0x16b64a8ba6700322 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0x0a8258eecb7f8114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ff896fcc3f4f948 # initialize leagalized rd to a random value that should get changed
li x15, 0x00602df375b01b3b # initialize rs2
c.and x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xa9bf355b8516839e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x21, 0x214e61631ea4289b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000001 # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x837b3ffb07639d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000002 # initialize rs2
c.and x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x10, 0x5d9a668ef9c09f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000000 # initialize rs2
c.and x10, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x15, 0xe080aad9416584fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000001 # initialize rs2
c.and x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xe6f55f0847a0d0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x7fffffffffffffff # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x18, 0x29fbd9181e20bb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffffffffffe # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0xf6ef66335cb69a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.and x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x10, 0xff96bad14f861fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xfffffffffffffffe # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x11, 0xd55cc21efcd3a078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x5bbc887763ae86f7 # initialize rs2
c.and x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xa8b1b6692763db43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.and x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x20, 0x95ff05e5ef1e0e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x5a6fb1ffd82ab337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0x3ee105bd4684c1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x27, 0xc7bd96d5335efc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000000 # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x6, 0x70595fe9f9a0d3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.and x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x1e617abcb44e782d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ddd3c1570eacf22 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000000 # initialize rs2
c.and x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0xecb4435320f71470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1c41183b43a85774 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000001 # initialize rs2
c.and x15, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x1d9fbd5b92f4ace7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd1f3eb913ad6e3fd # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000002 # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0xdae8796d25c03ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeaf663c7e813cbcb # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000000 # initialize rs2
c.and x13, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x7dba48ad69e2702c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa02021ff272799cf # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000001 # initialize rs2
c.and x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0xaea664012361ff68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa6ee7c63f59d5cbd # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.and x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x4, 0x908176b1138a8c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9c9da7038a5fb72d # initialize leagalized rd to a random value that should get changed
li x14, 0x7ffffffffffffffe # initialize rs2
c.and x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0xba03f6f29d2a1e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1e9ad611fecc5ce6 # initialize leagalized rd to a random value that should get changed
li x9, 0xffffffffffffffff # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0x6d39da911bf084b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeb25ae5d8f726500 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.and x8, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x22, 0xd4afd63a861334f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdbe387eb0061be08 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc887763ae86f7 # initialize rs2
c.and x14, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x477e1bc9d42f0de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd4eaa55999195b30 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.and x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x4, 0x3f14963ef807dcae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x71d1b6c54baea365 # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.and x12, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0x059c51bb009e231a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x649b2cd0601d2772 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x528f91b6cc12be40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4749c57e91c2c91e # initialize leagalized rd to a random value that should get changed
li x8, 0x00000000fffffffe # initialize rs2
c.and x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x2fc1a496b964a3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x10b42d3e68580c2f # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000100000000 # initialize rs2
c.and x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x32b1fc497cd56abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd4ae265cf045921 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.and x11, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
