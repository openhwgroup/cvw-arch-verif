///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.li.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.985817
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x1b49cd764ca060e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x0, 9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x557b1aedc0f982e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 8 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x140cdd7d08e7a7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x1db6b1baa1227b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 11 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xb0036ca414787cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x4, 29 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x43fe43a9d3b86894 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 7 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x2b29a11fa69090e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, -32 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe1f54048f33e3b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, -30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb3b1e8a99b2f5fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -18 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x068d484832c3704c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, 28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xece544d506d4ec85 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4088234448e4658d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, 30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x178a38c809555209 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x45205ccb7eb18313 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x13, 5 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2bb2b2e190ba73af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xaa75875b4a619b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -6 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0e7443f3621265b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6e5415e202ef64f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, -24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9bd70f40a304a154 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9ced79534542351c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, -23 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x219620ac7a7ed426 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, -5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x89e006efa321ca29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, 27 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xddd5a80c693ba7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 6 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5282f131d74b8854 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -4 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa315272642de4778 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, 13 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x45a3d29578d99ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, -1 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb1e56a6a60a8fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, 30 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x8a21e1089b15d766 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x3870aab791ac4cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -12 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x59629eb2b293d43f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc3772ce93cbded24 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, 31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x15ab571c346eb87d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 9 # perform operation

# Testcase cp_imm_zero
li x31, 0x0cccaac4e7d9aa66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x2531126e42d85dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0xb3080dacfed4fd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xda17b816850569ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xd779c2aca684a893 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x3efadb75e4346673 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x0402984875cc5e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0xd6d83d1f8413926a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0x158663bf66e5cb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x71141a2dbb83a978 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x29, 0xbdb5e5596afcdc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x9, 0xe2fcd948edcbcece # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, -32 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x26, 0x635f768260144392 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x28, 0xff1a7bc2b3146801 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x12, 0x370714afb2e689e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x29, 0x92fa75648c633ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x16, 0x8afb4147b976c914 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x7, 0xa44669cc7b3045a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x29, 0x65a0ca779d747b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x7, 0xbf7f0e19fbb7dae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x18, 0x087e973e94c87e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x8, 0x2cd2a09915b320d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x6, 0x05ffdc3e7f2fe64d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0xef2e6eb5bd33f3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x30, 0xe9ce2057fe621388 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x5, 0xa69d8bcf6d9bdf12 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x1, 0x44a2b5af7fdbb83c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x10, 0x1176ca2165d27c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x9, 0x265c03b789213207 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x14, 0x911a85ba4c8b71b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x2, 0xd3fd3f1b1267afa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x14, 0x29c68825a81859f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x16, 0x0375b6beb511068f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x28, 0xbeaf4e4cbf73b8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x14, 0x526164c6e6bbedcb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x29, 0x558c5fbc59a6dd6d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x16, 0x8af84c164cbf5789 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
