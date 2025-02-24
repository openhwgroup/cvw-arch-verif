///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fsd.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.015735
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


# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0xebe119bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc8cd3fe4 # load x3 with 32 MSBs 0x00000000c8cd3fe4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c8cd3fe4
sw x3, 0(x2) # store x3 (0xc8cd3fe4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c8cd3fe4 from memory into f4
la x1, scratch # base address
addi x1, x1, -1204 # sub immediate from rs1 to counter offset
fsd f4, 1204(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0x7ffe7425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe83f6311 # load x3 with 32 MSBs 0x00000000e83f6311
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e83f6311
sw x3, 0(x2) # store x3 (0xe83f6311) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000e83f6311 from memory into f12
la x2, scratch # base address
addi x2, x2, 924 # sub immediate from rs1 to counter offset
fsd f12, -924(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0xefb30af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xae89e496 # load x3 with 32 MSBs 0x00000000ae89e496
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae89e496
sw x3, 0(x2) # store x3 (0xae89e496) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ae89e496 from memory into f6
la x3, scratch # base address
addi x3, x3, 1261 # sub immediate from rs1 to counter offset
fsd f6, -1261(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x16, 0x82352377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9124269f # load x3 with 32 MSBs 0x000000009124269f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009124269f
sw x3, 0(x2) # store x3 (0x9124269f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009124269f from memory into f15
la x4, scratch # base address
addi x4, x4, -2017 # sub immediate from rs1 to counter offset
fsd f15, 2017(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0x19f0922b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xfdf3d9ca # load x3 with 32 MSBs 0x00000000fdf3d9ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fdf3d9ca
sw x3, 0(x2) # store x3 (0xfdf3d9ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000fdf3d9ca from memory into f16
la x5, scratch # base address
addi x5, x5, 2019 # sub immediate from rs1 to counter offset
fsd f16, -2019(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0xc23f8229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x333a594c # load x3 with 32 MSBs 0x00000000333a594c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000333a594c
sw x3, 0(x2) # store x3 (0x333a594c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000333a594c from memory into f4
la x6, scratch # base address
addi x6, x6, 1424 # sub immediate from rs1 to counter offset
fsd f4, -1424(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0xce5fe717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xaf14caeb # load x3 with 32 MSBs 0x00000000af14caeb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af14caeb
sw x3, 0(x2) # store x3 (0xaf14caeb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000af14caeb from memory into f27
la x7, scratch # base address
addi x7, x7, 1044 # sub immediate from rs1 to counter offset
fsd f27, -1044(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x65d7b953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe2949876 # load x3 with 32 MSBs 0x00000000e2949876
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2949876
sw x3, 0(x2) # store x3 (0xe2949876) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e2949876 from memory into f11
la x8, scratch # base address
addi x8, x8, -212 # sub immediate from rs1 to counter offset
fsd f11, 212(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0x3e2a72ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7acb60a2 # load x3 with 32 MSBs 0x000000007acb60a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007acb60a2
sw x3, 0(x2) # store x3 (0x7acb60a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000007acb60a2 from memory into f6
la x9, scratch # base address
addi x9, x9, 222 # sub immediate from rs1 to counter offset
fsd f6, -222(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x928486d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2de5e6e9 # load x3 with 32 MSBs 0x000000002de5e6e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002de5e6e9
sw x3, 0(x2) # store x3 (0x2de5e6e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000002de5e6e9 from memory into f4
la x10, scratch # base address
addi x10, x10, 787 # sub immediate from rs1 to counter offset
fsd f4, -787(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0xfe17b5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc15d85d4 # load x3 with 32 MSBs 0x00000000c15d85d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c15d85d4
sw x3, 0(x2) # store x3 (0xc15d85d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000c15d85d4 from memory into f5
la x11, scratch # base address
addi x11, x11, -273 # sub immediate from rs1 to counter offset
fsd f5, 273(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x163227e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x40566991 # load x3 with 32 MSBs 0x0000000040566991
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040566991
sw x3, 0(x2) # store x3 (0x40566991) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000040566991 from memory into f8
la x12, scratch # base address
addi x12, x12, -87 # sub immediate from rs1 to counter offset
fsd f8, 87(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0x37439dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x01fd47ea # load x3 with 32 MSBs 0x0000000001fd47ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000001fd47ea
sw x3, 0(x2) # store x3 (0x01fd47ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000001fd47ea from memory into f21
la x13, scratch # base address
addi x13, x13, 1595 # sub immediate from rs1 to counter offset
fsd f21, -1595(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x62de9711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5daa2d81 # load x3 with 32 MSBs 0x000000005daa2d81
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005daa2d81
sw x3, 0(x2) # store x3 (0x5daa2d81) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005daa2d81 from memory into f19
la x14, scratch # base address
addi x14, x14, 1022 # sub immediate from rs1 to counter offset
fsd f19, -1022(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0xba06c7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xee0ade43 # load x3 with 32 MSBs 0x00000000ee0ade43
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ee0ade43
sw x3, 0(x2) # store x3 (0xee0ade43) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ee0ade43 from memory into f23
la x15, scratch # base address
addi x15, x15, 1750 # sub immediate from rs1 to counter offset
fsd f23, -1750(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0x0b1f90b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6ae7caf1 # load x3 with 32 MSBs 0x000000006ae7caf1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ae7caf1
sw x3, 0(x2) # store x3 (0x6ae7caf1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000006ae7caf1 from memory into f20
la x16, scratch # base address
addi x16, x16, 214 # sub immediate from rs1 to counter offset
fsd f20, -214(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0x5612493b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4c45cadd # load x3 with 32 MSBs 0x000000004c45cadd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004c45cadd
sw x3, 0(x2) # store x3 (0x4c45cadd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004c45cadd from memory into f16
la x17, scratch # base address
addi x17, x17, 1523 # sub immediate from rs1 to counter offset
fsd f16, -1523(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xe0d23388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2a10b732 # load x3 with 32 MSBs 0x000000002a10b732
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002a10b732
sw x3, 0(x2) # store x3 (0x2a10b732) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000002a10b732 from memory into f16
la x18, scratch # base address
addi x18, x18, -1765 # sub immediate from rs1 to counter offset
fsd f16, 1765(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0xc1480d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x94c3277f # load x3 with 32 MSBs 0x0000000094c3277f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000094c3277f
sw x3, 0(x2) # store x3 (0x94c3277f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000094c3277f from memory into f28
la x19, scratch # base address
addi x19, x19, -377 # sub immediate from rs1 to counter offset
fsd f28, 377(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x28, 0x21e9828d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9f8feffd # load x3 with 32 MSBs 0x000000009f8feffd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009f8feffd
sw x3, 0(x2) # store x3 (0x9f8feffd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000009f8feffd from memory into f6
la x20, scratch # base address
addi x20, x20, 1246 # sub immediate from rs1 to counter offset
fsd f6, -1246(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0x54d16e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x02714a36 # load x3 with 32 MSBs 0x0000000002714a36
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002714a36
sw x3, 0(x2) # store x3 (0x02714a36) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000002714a36 from memory into f18
la x21, scratch # base address
addi x21, x21, -1601 # sub immediate from rs1 to counter offset
fsd f18, 1601(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x23, 0x08d1237a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1272c881 # load x3 with 32 MSBs 0x000000001272c881
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001272c881
sw x3, 0(x2) # store x3 (0x1272c881) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001272c881 from memory into f27
la x22, scratch # base address
addi x22, x22, 943 # sub immediate from rs1 to counter offset
fsd f27, -943(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x37a3937b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9bcab7cf # load x3 with 32 MSBs 0x000000009bcab7cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009bcab7cf
sw x3, 0(x2) # store x3 (0x9bcab7cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000009bcab7cf from memory into f24
la x23, scratch # base address
addi x23, x23, -590 # sub immediate from rs1 to counter offset
fsd f24, 590(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0x653aeb5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x880dc56b # load x3 with 32 MSBs 0x00000000880dc56b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000880dc56b
sw x3, 0(x2) # store x3 (0x880dc56b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000880dc56b from memory into f10
la x24, scratch # base address
addi x24, x24, 1622 # sub immediate from rs1 to counter offset
fsd f10, -1622(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0xbdefbdfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd6a58c65 # load x3 with 32 MSBs 0x00000000d6a58c65
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6a58c65
sw x3, 0(x2) # store x3 (0xd6a58c65) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d6a58c65 from memory into f22
la x25, scratch # base address
addi x25, x25, 1191 # sub immediate from rs1 to counter offset
fsd f22, -1191(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0xf168df4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x52a1f8a1 # load x3 with 32 MSBs 0x0000000052a1f8a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000052a1f8a1
sw x3, 0(x2) # store x3 (0x52a1f8a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000052a1f8a1 from memory into f18
la x26, scratch # base address
addi x26, x26, -824 # sub immediate from rs1 to counter offset
fsd f18, 824(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x500bf2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8bec433c # load x3 with 32 MSBs 0x000000008bec433c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008bec433c
sw x3, 0(x2) # store x3 (0x8bec433c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000008bec433c from memory into f17
la x27, scratch # base address
addi x27, x27, 417 # sub immediate from rs1 to counter offset
fsd f17, -417(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x3c435b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x20053dd9 # load x3 with 32 MSBs 0x0000000020053dd9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000020053dd9
sw x3, 0(x2) # store x3 (0x20053dd9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000020053dd9 from memory into f24
la x28, scratch # base address
addi x28, x28, -1715 # sub immediate from rs1 to counter offset
fsd f24, 1715(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0xeeefb9af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1a152770 # load x3 with 32 MSBs 0x000000001a152770
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a152770
sw x3, 0(x2) # store x3 (0x1a152770) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000001a152770 from memory into f26
la x29, scratch # base address
addi x29, x29, 1209 # sub immediate from rs1 to counter offset
fsd f26, -1209(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0x3f12ca7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdafa5cc1 # load x3 with 32 MSBs 0x00000000dafa5cc1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dafa5cc1
sw x3, 0(x2) # store x3 (0xdafa5cc1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000dafa5cc1 from memory into f24
la x30, scratch # base address
addi x30, x30, -535 # sub immediate from rs1 to counter offset
fsd f24, 535(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x15, 0xbf8afb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe1407d2a # load x3 with 32 MSBs 0x00000000e1407d2a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1407d2a
sw x3, 0(x2) # store x3 (0xe1407d2a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e1407d2a from memory into f20
la x31, scratch # base address
addi x31, x31, 584 # sub immediate from rs1 to counter offset
fsd f20, -584(x31) # perform operation

# Testcase cp_imm_zero
li x6, 0x056dc611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x744c2421 # load x3 with 32 MSBs 0x00000000744c2421
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000744c2421
sw x3, 0(x2) # store x3 (0x744c2421) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000744c2421 from memory into f7
la x15, scratch # base address
addi x15, x15, 0 # sub immediate from rs1 to counter offset
fsd f7, 0(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x1, 0xc4de813f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
la x28, scratch # base address
addi x28, x28, -822 # sub immediate from rs1 to counter offset
fsd f4, 822(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x3, 0xec242ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000000 # load x3 with 32 MSBs 0x0000000080000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000080000000 from memory into f29
la x27, scratch # base address
addi x27, x27, -1904 # sub immediate from rs1 to counter offset
fsd f29, 1904(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x4, 0xc720e628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000003f800000 from memory into f5
la x22, scratch # base address
addi x22, x22, 1000 # sub immediate from rs1 to counter offset
fsd f5, -1000(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x24, 0x852cd004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbf800000 # load x3 with 32 MSBs 0x00000000bf800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000bf800000 from memory into f19
la x6, scratch # base address
addi x6, x6, -923 # sub immediate from rs1 to counter offset
fsd f19, 923(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x28, 0x62eb9d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3fc00000 # load x3 with 32 MSBs 0x000000003fc00000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003fc00000
sw x3, 0(x2) # store x3 (0x3fc00000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003fc00000 from memory into f16
la x23, scratch # base address
addi x23, x23, 1432 # sub immediate from rs1 to counter offset
fsd f16, -1432(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x23, 0x1b2b57cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbfc00000 # load x3 with 32 MSBs 0x00000000bfc00000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bfc00000
sw x3, 0(x2) # store x3 (0xbfc00000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000bfc00000 from memory into f3
la x31, scratch # base address
addi x31, x31, -1732 # sub immediate from rs1 to counter offset
fsd f3, 1732(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x7, 0x01e0f623 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x40000000 # load x3 with 32 MSBs 0x0000000040000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040000000
sw x3, 0(x2) # store x3 (0x40000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000040000000 from memory into f11
la x20, scratch # base address
addi x20, x20, 345 # sub immediate from rs1 to counter offset
fsd f11, -345(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x27, 0x29f608a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc0000000 # load x3 with 32 MSBs 0x00000000c0000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c0000000
sw x3, 0(x2) # store x3 (0xc0000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000c0000000 from memory into f10
la x8, scratch # base address
addi x8, x8, -514 # sub immediate from rs1 to counter offset
fsd f10, 514(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x22, 0xf5fd1bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00800000 # load x3 with 32 MSBs 0x0000000000800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000800000 from memory into f26
la x8, scratch # base address
addi x8, x8, 1209 # sub immediate from rs1 to counter offset
fsd f26, -1209(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x17, 0xd2aae97c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80800000 # load x3 with 32 MSBs 0x0000000080800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000080800000 from memory into f25
la x9, scratch # base address
addi x9, x9, -1151 # sub immediate from rs1 to counter offset
fsd f25, 1151(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x8, 0x924df2d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f7fffff # load x3 with 32 MSBs 0x000000007f7fffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000007f7fffff from memory into f23
la x12, scratch # base address
addi x12, x12, 1701 # sub immediate from rs1 to counter offset
fsd f23, -1701(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0x77a268a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff7fffff # load x3 with 32 MSBs 0x00000000ff7fffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ff7fffff from memory into f23
la x11, scratch # base address
addi x11, x11, -2047 # sub immediate from rs1 to counter offset
fsd f23, 2047(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x22, 0x15d831b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x007fffff # load x3 with 32 MSBs 0x00000000007fffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000007fffff
sw x3, 0(x2) # store x3 (0x007fffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000007fffff from memory into f30
la x2, scratch # base address
addi x2, x2, 461 # sub immediate from rs1 to counter offset
fsd f30, -461(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x13, 0x90ac9e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x807fffff # load x3 with 32 MSBs 0x00000000807fffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000807fffff
sw x3, 0(x2) # store x3 (0x807fffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000807fffff from memory into f9
la x24, scratch # base address
addi x24, x24, -730 # sub immediate from rs1 to counter offset
fsd f9, 730(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x7, 0x300f5da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00400000 # load x3 with 32 MSBs 0x0000000000400000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000400000
sw x3, 0(x2) # store x3 (0x00400000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000400000 from memory into f19
la x25, scratch # base address
addi x25, x25, 1207 # sub immediate from rs1 to counter offset
fsd f19, -1207(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x28, 0x0e99c6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80400000 # load x3 with 32 MSBs 0x0000000080400000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080400000
sw x3, 0(x2) # store x3 (0x80400000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000080400000 from memory into f25
la x18, scratch # base address
addi x18, x18, -1952 # sub immediate from rs1 to counter offset
fsd f25, 1952(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x28, 0x6a848ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
la x29, scratch # base address
addi x29, x29, 496 # sub immediate from rs1 to counter offset
fsd f6, -496(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x23, 0xa00164e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000001 # load x3 with 32 MSBs 0x0000000080000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080000001
sw x3, 0(x2) # store x3 (0x80000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000080000001 from memory into f19
la x4, scratch # base address
addi x4, x4, -1457 # sub immediate from rs1 to counter offset
fsd f19, 1457(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x4, 0xa88a61f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800000 # load x3 with 32 MSBs 0x000000007f800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000007f800000 from memory into f8
la x19, scratch # base address
addi x19, x19, 1341 # sub immediate from rs1 to counter offset
fsd f8, -1341(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x1, 0xaef26e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff800000 # load x3 with 32 MSBs 0x00000000ff800000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ff800000 from memory into f27
la x19, scratch # base address
addi x19, x19, 532 # sub immediate from rs1 to counter offset
fsd f27, -532(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x22, 0x50b953c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fc00000 # load x3 with 32 MSBs 0x000000007fc00000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000007fc00000 from memory into f10
la x1, scratch # base address
addi x1, x1, -337 # sub immediate from rs1 to counter offset
fsd f10, 337(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x13, 0x8d8626de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fffffff # load x3 with 32 MSBs 0x000000007fffffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000007fffffff from memory into f18
la x8, scratch # base address
addi x8, x8, -444 # sub immediate from rs1 to counter offset
fsd f18, 444(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x17, 0x9917bed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800001 # load x3 with 32 MSBs 0x000000007f800001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007f800001 from memory into f3
la x1, scratch # base address
addi x1, x1, 1186 # sub immediate from rs1 to counter offset
fsd f3, -1186(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x6, 0x762c2446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fbfffff # load x3 with 32 MSBs 0x000000007fbfffff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007fbfffff from memory into f12
la x7, scratch # base address
addi x7, x7, 1943 # sub immediate from rs1 to counter offset
fsd f12, -1943(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0x2aea38a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7ef8654f # load x3 with 32 MSBs 0x000000007ef8654f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007ef8654f
sw x3, 0(x2) # store x3 (0x7ef8654f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007ef8654f from memory into f1
la x27, scratch # base address
addi x27, x27, 942 # sub immediate from rs1 to counter offset
fsd f1, -942(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x10, 0x3cde4789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x813d9ab0 # load x3 with 32 MSBs 0x00000000813d9ab0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000813d9ab0
sw x3, 0(x2) # store x3 (0x813d9ab0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000813d9ab0 from memory into f20
la x22, scratch # base address
addi x22, x22, 1844 # sub immediate from rs1 to counter offset
fsd f20, -1844(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x27, 0x34e73c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80e44acd # load x3 with 32 MSBs 0x0000000080e44acd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080e44acd
sw x3, 0(x2) # store x3 (0x80e44acd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x0000000080e44acd from memory into f0
la x20, scratch # base address
addi x20, x20, 238 # sub immediate from rs1 to counter offset
fsd f0, -238(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x22, 0x194ee4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2516fada # load x3 with 32 MSBs 0x000000002516fada
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002516fada
sw x3, 0(x2) # store x3 (0x2516fada) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000002516fada from memory into f1
la x23, scratch # base address
addi x23, x23, 214 # sub immediate from rs1 to counter offset
fsd f1, -214(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x5, 0x55ef32b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x672f2ad2 # load x3 with 32 MSBs 0x00000000672f2ad2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000672f2ad2
sw x3, 0(x2) # store x3 (0x672f2ad2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000672f2ad2 from memory into f2
la x25, scratch # base address
addi x25, x25, 1836 # sub immediate from rs1 to counter offset
fsd f2, -1836(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x12, 0x73faa4eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6c6e12cd # load x3 with 32 MSBs 0x000000006c6e12cd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c6e12cd
sw x3, 0(x2) # store x3 (0x6c6e12cd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000006c6e12cd from memory into f3
la x7, scratch # base address
addi x7, x7, 905 # sub immediate from rs1 to counter offset
fsd f3, -905(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x19, 0x6d279ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x66815c2d # load x3 with 32 MSBs 0x0000000066815c2d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066815c2d
sw x3, 0(x2) # store x3 (0x66815c2d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000066815c2d from memory into f4
la x29, scratch # base address
addi x29, x29, -1133 # sub immediate from rs1 to counter offset
fsd f4, 1133(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x9, 0xd05295fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4326a4c7 # load x3 with 32 MSBs 0x000000004326a4c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004326a4c7
sw x3, 0(x2) # store x3 (0x4326a4c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004326a4c7 from memory into f5
la x8, scratch # base address
addi x8, x8, 1388 # sub immediate from rs1 to counter offset
fsd f5, -1388(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x20, 0x61b9ca66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3d780f82 # load x3 with 32 MSBs 0x000000003d780f82
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003d780f82
sw x3, 0(x2) # store x3 (0x3d780f82) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003d780f82 from memory into f6
la x4, scratch # base address
addi x4, x4, 272 # sub immediate from rs1 to counter offset
fsd f6, -272(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x2, 0x3c6b6db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x24d04a12 # load x3 with 32 MSBs 0x0000000024d04a12
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000024d04a12
sw x3, 0(x2) # store x3 (0x24d04a12) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000024d04a12 from memory into f7
la x27, scratch # base address
addi x27, x27, -1593 # sub immediate from rs1 to counter offset
fsd f7, 1593(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x13, 0xf9c17c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xac46ef44 # load x3 with 32 MSBs 0x00000000ac46ef44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac46ef44
sw x3, 0(x2) # store x3 (0xac46ef44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000ac46ef44 from memory into f8
la x30, scratch # base address
addi x30, x30, -1945 # sub immediate from rs1 to counter offset
fsd f8, 1945(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x14, 0xcdf82fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x99996107 # load x3 with 32 MSBs 0x0000000099996107
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099996107
sw x3, 0(x2) # store x3 (0x99996107) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000099996107 from memory into f9
la x3, scratch # base address
addi x3, x3, 21 # sub immediate from rs1 to counter offset
fsd f9, -21(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x6, 0xdc17bedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x852a8392 # load x3 with 32 MSBs 0x00000000852a8392
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000852a8392
sw x3, 0(x2) # store x3 (0x852a8392) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000852a8392 from memory into f10
la x13, scratch # base address
addi x13, x13, -1051 # sub immediate from rs1 to counter offset
fsd f10, 1051(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0x370369d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6c4ab3e0 # load x3 with 32 MSBs 0x000000006c4ab3e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c4ab3e0
sw x3, 0(x2) # store x3 (0x6c4ab3e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000006c4ab3e0 from memory into f11
la x29, scratch # base address
addi x29, x29, 1008 # sub immediate from rs1 to counter offset
fsd f11, -1008(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x6, 0x89590733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd413128e # load x3 with 32 MSBs 0x00000000d413128e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d413128e
sw x3, 0(x2) # store x3 (0xd413128e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d413128e from memory into f12
la x7, scratch # base address
addi x7, x7, 101 # sub immediate from rs1 to counter offset
fsd f12, -101(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x16, 0x788c20e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xfa88fa05 # load x3 with 32 MSBs 0x00000000fa88fa05
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa88fa05
sw x3, 0(x2) # store x3 (0xfa88fa05) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000fa88fa05 from memory into f13
la x17, scratch # base address
addi x17, x17, -1747 # sub immediate from rs1 to counter offset
fsd f13, 1747(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x27, 0xf005bd2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc39725c6 # load x3 with 32 MSBs 0x00000000c39725c6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c39725c6
sw x3, 0(x2) # store x3 (0xc39725c6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000c39725c6 from memory into f14
la x12, scratch # base address
addi x12, x12, -664 # sub immediate from rs1 to counter offset
fsd f14, 664(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x16, 0xd3d8c660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1490f6ca # load x3 with 32 MSBs 0x000000001490f6ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001490f6ca
sw x3, 0(x2) # store x3 (0x1490f6ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001490f6ca from memory into f15
la x4, scratch # base address
addi x4, x4, -780 # sub immediate from rs1 to counter offset
fsd f15, 780(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x7, 0x17b14359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xceddd878 # load x3 with 32 MSBs 0x00000000ceddd878
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ceddd878
sw x3, 0(x2) # store x3 (0xceddd878) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ceddd878 from memory into f16
la x1, scratch # base address
addi x1, x1, 53 # sub immediate from rs1 to counter offset
fsd f16, -53(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x30, 0xfa50ebeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x53c5cd6a # load x3 with 32 MSBs 0x0000000053c5cd6a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000053c5cd6a
sw x3, 0(x2) # store x3 (0x53c5cd6a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000053c5cd6a from memory into f17
la x25, scratch # base address
addi x25, x25, -1807 # sub immediate from rs1 to counter offset
fsd f17, 1807(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x27, 0xb4144cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x03840071 # load x3 with 32 MSBs 0x0000000003840071
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000003840071
sw x3, 0(x2) # store x3 (0x03840071) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000003840071 from memory into f18
la x1, scratch # base address
addi x1, x1, 1205 # sub immediate from rs1 to counter offset
fsd f18, -1205(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x7, 0x003f329b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa3434f57 # load x3 with 32 MSBs 0x00000000a3434f57
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a3434f57
sw x3, 0(x2) # store x3 (0xa3434f57) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a3434f57 from memory into f19
la x8, scratch # base address
addi x8, x8, -1577 # sub immediate from rs1 to counter offset
fsd f19, 1577(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x5, 0x65048f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe089ed44 # load x3 with 32 MSBs 0x00000000e089ed44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e089ed44
sw x3, 0(x2) # store x3 (0xe089ed44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e089ed44 from memory into f20
la x4, scratch # base address
addi x4, x4, -1867 # sub immediate from rs1 to counter offset
fsd f20, 1867(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x18, 0xfa918856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0f65c7a0 # load x3 with 32 MSBs 0x000000000f65c7a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f65c7a0
sw x3, 0(x2) # store x3 (0x0f65c7a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000f65c7a0 from memory into f21
la x25, scratch # base address
addi x25, x25, 1672 # sub immediate from rs1 to counter offset
fsd f21, -1672(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x12, 0x6433b3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x03c61cfd # load x3 with 32 MSBs 0x0000000003c61cfd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000003c61cfd
sw x3, 0(x2) # store x3 (0x03c61cfd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000003c61cfd from memory into f22
la x10, scratch # base address
addi x10, x10, 740 # sub immediate from rs1 to counter offset
fsd f22, -740(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x8, 0xba0bbf80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x419a86ce # load x3 with 32 MSBs 0x00000000419a86ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000419a86ce
sw x3, 0(x2) # store x3 (0x419a86ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000419a86ce from memory into f23
la x11, scratch # base address
addi x11, x11, -334 # sub immediate from rs1 to counter offset
fsd f23, 334(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x12, 0x69f4879c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbb906475 # load x3 with 32 MSBs 0x00000000bb906475
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb906475
sw x3, 0(x2) # store x3 (0xbb906475) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000bb906475 from memory into f24
la x11, scratch # base address
addi x11, x11, 182 # sub immediate from rs1 to counter offset
fsd f24, -182(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x8, 0x6ab9bd54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xafd76e5e # load x3 with 32 MSBs 0x00000000afd76e5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000afd76e5e
sw x3, 0(x2) # store x3 (0xafd76e5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000afd76e5e from memory into f25
la x17, scratch # base address
addi x17, x17, -949 # sub immediate from rs1 to counter offset
fsd f25, 949(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0x4c6f17eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x32d28f58 # load x3 with 32 MSBs 0x0000000032d28f58
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000032d28f58
sw x3, 0(x2) # store x3 (0x32d28f58) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000032d28f58 from memory into f26
la x9, scratch # base address
addi x9, x9, -966 # sub immediate from rs1 to counter offset
fsd f26, 966(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x5, 0xd707ab3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x74fb598e # load x3 with 32 MSBs 0x0000000074fb598e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074fb598e
sw x3, 0(x2) # store x3 (0x74fb598e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000074fb598e from memory into f27
la x30, scratch # base address
addi x30, x30, 239 # sub immediate from rs1 to counter offset
fsd f27, -239(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x15, 0x5daabae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4a44fe51 # load x3 with 32 MSBs 0x000000004a44fe51
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a44fe51
sw x3, 0(x2) # store x3 (0x4a44fe51) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004a44fe51 from memory into f28
la x26, scratch # base address
addi x26, x26, 1039 # sub immediate from rs1 to counter offset
fsd f28, -1039(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x2, 0x0d078337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6d531ac2 # load x3 with 32 MSBs 0x000000006d531ac2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006d531ac2
sw x3, 0(x2) # store x3 (0x6d531ac2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006d531ac2 from memory into f29
la x10, scratch # base address
addi x10, x10, -1036 # sub immediate from rs1 to counter offset
fsd f29, 1036(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x2, 0x892ab839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x29cc7181 # load x3 with 32 MSBs 0x0000000029cc7181
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029cc7181
sw x3, 0(x2) # store x3 (0x29cc7181) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000029cc7181 from memory into f30
la x13, scratch # base address
addi x13, x13, 1045 # sub immediate from rs1 to counter offset
fsd f30, -1045(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x29, 0x9e4f64cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xebcaeea9 # load x3 with 32 MSBs 0x00000000ebcaeea9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ebcaeea9
sw x3, 0(x2) # store x3 (0xebcaeea9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ebcaeea9 from memory into f31
la x28, scratch # base address
addi x28, x28, -1307 # sub immediate from rs1 to counter offset
fsd f31, 1307(x28) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
