///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fclass.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.037412
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
li x0, 0x2019680c3feb6352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x273cec35b1985e55 # load x3 with value 0x273cec35b1985e55
sw x3, 0(x2) # store 0x273cec35b1985e55 in memory
flh f29, 0(x2) # load 0x273cec35b1985e55 from memory into f29
fclass.h x0, f29 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1cc255d6cd8f880f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed5e06302b6252b8 # load x3 with value 0xed5e06302b6252b8
sw x3, 0(x2) # store 0xed5e06302b6252b8 in memory
flh f18, 0(x2) # load 0xed5e06302b6252b8 from memory into f18
fclass.h x1, f18 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb75f9317d83826e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b0cef50f338fb35 # load x3 with value 0x1b0cef50f338fb35
sw x3, 0(x2) # store 0x1b0cef50f338fb35 in memory
flh f8, 0(x2) # load 0x1b0cef50f338fb35 from memory into f8
fclass.h x2, f8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xebb5803735c02f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41e4aa7866df932d # load x3 with value 0x41e4aa7866df932d
sw x3, 0(x2) # store 0x41e4aa7866df932d in memory
flh f15, 0(x2) # load 0x41e4aa7866df932d from memory into f15
fclass.h x3, f15 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x08a799fba674d765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99453d05d6e06977 # load x3 with value 0x99453d05d6e06977
sw x3, 0(x2) # store 0x99453d05d6e06977 in memory
flh f13, 0(x2) # load 0x99453d05d6e06977 from memory into f13
fclass.h x4, f13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3eef3055203c51a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd1e3e2854d18a34 # load x3 with value 0xfd1e3e2854d18a34
sw x3, 0(x2) # store 0xfd1e3e2854d18a34 in memory
flh f12, 0(x2) # load 0xfd1e3e2854d18a34 from memory into f12
fclass.h x5, f12 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x5d95435e2b9c0b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43c3f98475fd959 # load x3 with value 0x43c3f98475fd959
sw x3, 0(x2) # store 0x43c3f98475fd959 in memory
flh f16, 0(x2) # load 0x43c3f98475fd959 from memory into f16
fclass.h x6, f16 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x3a49005480284ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d21034a94e7401 # load x3 with value 0x7d21034a94e7401
sw x3, 0(x2) # store 0x7d21034a94e7401 in memory
flh f15, 0(x2) # load 0x7d21034a94e7401 from memory into f15
fclass.h x7, f15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x34da13e447b0bfbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7901150fed2d4e76 # load x3 with value 0x7901150fed2d4e76
sw x3, 0(x2) # store 0x7901150fed2d4e76 in memory
flh f5, 0(x2) # load 0x7901150fed2d4e76 from memory into f5
fclass.h x8, f5 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xeb72f4c83c99b829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fbfc9ba3909c833 # load x3 with value 0x9fbfc9ba3909c833
sw x3, 0(x2) # store 0x9fbfc9ba3909c833 in memory
flh f16, 0(x2) # load 0x9fbfc9ba3909c833 from memory into f16
fclass.h x9, f16 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb7680de4905e2933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabe05e896d0a87bd # load x3 with value 0xabe05e896d0a87bd
sw x3, 0(x2) # store 0xabe05e896d0a87bd in memory
flh f26, 0(x2) # load 0xabe05e896d0a87bd from memory into f26
fclass.h x10, f26 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x51db8b6828db089f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc570e3a14df47d0e # load x3 with value 0xc570e3a14df47d0e
sw x3, 0(x2) # store 0xc570e3a14df47d0e in memory
flh f22, 0(x2) # load 0xc570e3a14df47d0e from memory into f22
fclass.h x11, f22 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdc808285c0d5533f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc78f3d1f316f21c # load x3 with value 0xcc78f3d1f316f21c
sw x3, 0(x2) # store 0xcc78f3d1f316f21c in memory
flh f3, 0(x2) # load 0xcc78f3d1f316f21c from memory into f3
fclass.h x12, f3 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9567ce07f9996a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66c56962834c8727 # load x3 with value 0x66c56962834c8727
sw x3, 0(x2) # store 0x66c56962834c8727 in memory
flh f29, 0(x2) # load 0x66c56962834c8727 from memory into f29
fclass.h x13, f29 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xff6ea21beb61fe56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x842867ea311c0d3 # load x3 with value 0x842867ea311c0d3
sw x3, 0(x2) # store 0x842867ea311c0d3 in memory
flh f28, 0(x2) # load 0x842867ea311c0d3 from memory into f28
fclass.h x14, f28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3a75e835438ea143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28c187ed2e65afa1 # load x3 with value 0x28c187ed2e65afa1
sw x3, 0(x2) # store 0x28c187ed2e65afa1 in memory
flh f2, 0(x2) # load 0x28c187ed2e65afa1 from memory into f2
fclass.h x15, f2 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x779076a88ac7bb0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa04361ae3c280d47 # load x3 with value 0xa04361ae3c280d47
sw x3, 0(x2) # store 0xa04361ae3c280d47 in memory
flh f26, 0(x2) # load 0xa04361ae3c280d47 from memory into f26
fclass.h x16, f26 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x70d7852538d4d273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5ea41ad83d30319 # load x3 with value 0xb5ea41ad83d30319
sw x3, 0(x2) # store 0xb5ea41ad83d30319 in memory
flh f7, 0(x2) # load 0xb5ea41ad83d30319 from memory into f7
fclass.h x17, f7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xbabcb4c1a2d8e173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd30d3ba14db94a9 # load x3 with value 0xfd30d3ba14db94a9
sw x3, 0(x2) # store 0xfd30d3ba14db94a9 in memory
flh f27, 0(x2) # load 0xfd30d3ba14db94a9 from memory into f27
fclass.h x18, f27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc464691b654633de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80ffcd6ac96b5146 # load x3 with value 0x80ffcd6ac96b5146
sw x3, 0(x2) # store 0x80ffcd6ac96b5146 in memory
flh f24, 0(x2) # load 0x80ffcd6ac96b5146 from memory into f24
fclass.h x19, f24 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf8671235af6c303a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x566317a1f82d2ec6 # load x3 with value 0x566317a1f82d2ec6
sw x3, 0(x2) # store 0x566317a1f82d2ec6 in memory
flh f21, 0(x2) # load 0x566317a1f82d2ec6 from memory into f21
fclass.h x20, f21 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb92a1e6f1ac70cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9db889578f03 # load x3 with value 0xd9db889578f03
sw x3, 0(x2) # store 0xd9db889578f03 in memory
flh f5, 0(x2) # load 0xd9db889578f03 from memory into f5
fclass.h x21, f5 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfbdec804b132092d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2f6e1f9f8e28d5a # load x3 with value 0xb2f6e1f9f8e28d5a
sw x3, 0(x2) # store 0xb2f6e1f9f8e28d5a in memory
flh f7, 0(x2) # load 0xb2f6e1f9f8e28d5a from memory into f7
fclass.h x22, f7 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xe6f2be034aade2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ba9be3258428f1c # load x3 with value 0x1ba9be3258428f1c
sw x3, 0(x2) # store 0x1ba9be3258428f1c in memory
flh f31, 0(x2) # load 0x1ba9be3258428f1c from memory into f31
fclass.h x23, f31 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x3f038318256fa543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8cb37cb94861ad6 # load x3 with value 0xd8cb37cb94861ad6
sw x3, 0(x2) # store 0xd8cb37cb94861ad6 in memory
flh f28, 0(x2) # load 0xd8cb37cb94861ad6 from memory into f28
fclass.h x24, f28 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb7db46a62b11da54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb820062e1e61b8c # load x3 with value 0xdb820062e1e61b8c
sw x3, 0(x2) # store 0xdb820062e1e61b8c in memory
flh f12, 0(x2) # load 0xdb820062e1e61b8c from memory into f12
fclass.h x25, f12 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2332de1c63a5e5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd225ae98f029d00c # load x3 with value 0xd225ae98f029d00c
sw x3, 0(x2) # store 0xd225ae98f029d00c in memory
flh f13, 0(x2) # load 0xd225ae98f029d00c from memory into f13
fclass.h x26, f13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe35c3bdf8bf2cc30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x228194ec2115a348 # load x3 with value 0x228194ec2115a348
sw x3, 0(x2) # store 0x228194ec2115a348 in memory
flh f7, 0(x2) # load 0x228194ec2115a348 from memory into f7
fclass.h x27, f7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x00dd5a77d31fdda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c87434d43226420 # load x3 with value 0x3c87434d43226420
sw x3, 0(x2) # store 0x3c87434d43226420 in memory
flh f25, 0(x2) # load 0x3c87434d43226420 from memory into f25
fclass.h x28, f25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x85c44c83e087fd9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4789e8c7cf4a5a0 # load x3 with value 0xa4789e8c7cf4a5a0
sw x3, 0(x2) # store 0xa4789e8c7cf4a5a0 in memory
flh f20, 0(x2) # load 0xa4789e8c7cf4a5a0 from memory into f20
fclass.h x29, f20 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2c06b3ef5640cf12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d83cf39705261a6 # load x3 with value 0x7d83cf39705261a6
sw x3, 0(x2) # store 0x7d83cf39705261a6 in memory
flh f3, 0(x2) # load 0x7d83cf39705261a6 from memory into f3
fclass.h x30, f3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xfd8a07d95dbd22a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x469b31cd07bc0aea # load x3 with value 0x469b31cd07bc0aea
sw x3, 0(x2) # store 0x469b31cd07bc0aea in memory
flh f17, 0(x2) # load 0x469b31cd07bc0aea from memory into f17
fclass.h x31, f17 # perform operation

# Testcase cmp_gpr_hazard raw test
fclass.h x28, f24 # perform first operation
fclass.h x8, f28 # perform second operation

# Testcase cmp_gpr_hazard raw test
fclass.h x26, f6 # perform first operation
fclass.h x13, f25 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.h x12, f29 # perform first operation
fclass.h x12, f23 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.h x10, f7 # perform first operation
fclass.h x10, f7 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.h x27, f3 # perform first operation
fclass.h x3, f28 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.h x7, f17 # perform first operation
fclass.h x3, f20 # perform second operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x13, 0xb60495bb70d150ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fclass.h x13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x27, 0x4fa51eaf543b69f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fclass.h x27, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x5, 0xe3060c5b60a22760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fclass.h x5, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x8, 0xf2cfa62c2035fa09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fclass.h x8, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x18, 0x3523fd401c1e2ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fclass.h x18, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x13, 0xf40d3e431946daad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fclass.h x13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x17, 0xdc06f2455299ce6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fclass.h x17, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x11, 0x012fff81150b343a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fclass.h x11, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x5, 0x54cf754e2fea171d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fclass.h x5, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x29, 0x88508816c48ac4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fclass.h x29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x29, 0x37faf247768dbe76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fclass.h x29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x31, 0xba644b6ea63a7c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fclass.h x31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x2, 0x46ee1b77a8c44e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fclass.h x2, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x10, 0xe5c8cba42db645ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fclass.h x10, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x22, 0x6f1549295a92d2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fclass.h x22, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x21, 0xffc49edabdbeaea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fclass.h x21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x4, 0x2c76cfebcec74724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fclass.h x4, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x14, 0x4320b42693a3d045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fclass.h x14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x9, 0x7ed073b1f26355db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fclass.h x9, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x29, 0x00f769c986057b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fclass.h x29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x13, 0x501e5b051d555d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fclass.h x13, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x9, 0xfca680946ec45a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fclass.h x9, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x24, 0xe520e8312f34d757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fclass.h x24, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x20, 0xdd43e4093308c698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fclass.h x20, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x11, 0x817286663e972cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fclass.h x11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x18, 0x8d859c77f03f1528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fclass.h x18, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x2, 0xca601dea46fbb84e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79718451473dea7c # load x3 with value 0x79718451473dea7c
sw x3, 0(x2) # store 0x79718451473dea7c in memory
flh f0, 0(x2) # load 0x79718451473dea7c from memory into f0
fclass.h x2, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x26, 0x15c87f60ca314e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71ba5f1217c71505 # load x3 with value 0x71ba5f1217c71505
sw x3, 0(x2) # store 0x71ba5f1217c71505 in memory
flh f1, 0(x2) # load 0x71ba5f1217c71505 from memory into f1
fclass.h x26, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x16, 0x24f1cb3aea2d28a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb73e181b6b89b8eb # load x3 with value 0xb73e181b6b89b8eb
sw x3, 0(x2) # store 0xb73e181b6b89b8eb in memory
flh f2, 0(x2) # load 0xb73e181b6b89b8eb from memory into f2
fclass.h x16, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x19, 0xcbbd01f2e4a56407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd657fdceb9a96b0 # load x3 with value 0xbd657fdceb9a96b0
sw x3, 0(x2) # store 0xbd657fdceb9a96b0 in memory
flh f3, 0(x2) # load 0xbd657fdceb9a96b0 from memory into f3
fclass.h x19, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0xd9b1d7449ba53b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0c9c19c430d1142 # load x3 with value 0xd0c9c19c430d1142
sw x3, 0(x2) # store 0xd0c9c19c430d1142 in memory
flh f4, 0(x2) # load 0xd0c9c19c430d1142 from memory into f4
fclass.h x25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0x252a50a05ef30138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x561b5d5632f259ab # load x3 with value 0x561b5d5632f259ab
sw x3, 0(x2) # store 0x561b5d5632f259ab in memory
flh f5, 0(x2) # load 0x561b5d5632f259ab from memory into f5
fclass.h x8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x28, 0xaf4371e6986fe797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x136e963ecee9d2c3 # load x3 with value 0x136e963ecee9d2c3
sw x3, 0(x2) # store 0x136e963ecee9d2c3 in memory
flh f6, 0(x2) # load 0x136e963ecee9d2c3 from memory into f6
fclass.h x28, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0xbaa6fe0a42da27c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46eeea9c0ea05edf # load x3 with value 0x46eeea9c0ea05edf
sw x3, 0(x2) # store 0x46eeea9c0ea05edf in memory
flh f7, 0(x2) # load 0x46eeea9c0ea05edf from memory into f7
fclass.h x16, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0xb03b625b5d84b69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e30ab4e20419f2 # load x3 with value 0x8e30ab4e20419f2
sw x3, 0(x2) # store 0x8e30ab4e20419f2 in memory
flh f8, 0(x2) # load 0x8e30ab4e20419f2 from memory into f8
fclass.h x22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x10, 0x98fa67c82827dcd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ed644207db41fbd # load x3 with value 0x7ed644207db41fbd
sw x3, 0(x2) # store 0x7ed644207db41fbd in memory
flh f9, 0(x2) # load 0x7ed644207db41fbd from memory into f9
fclass.h x10, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x16, 0x2ced0013f107bc0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76b8d4d465ec93c0 # load x3 with value 0x76b8d4d465ec93c0
sw x3, 0(x2) # store 0x76b8d4d465ec93c0 in memory
flh f10, 0(x2) # load 0x76b8d4d465ec93c0 from memory into f10
fclass.h x16, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x9, 0x42c589b07206c60a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fb17b7bf905a9e2 # load x3 with value 0x7fb17b7bf905a9e2
sw x3, 0(x2) # store 0x7fb17b7bf905a9e2 in memory
flh f11, 0(x2) # load 0x7fb17b7bf905a9e2 from memory into f11
fclass.h x9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0x83a063f3d0c4ed19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbab2d00f95878e1d # load x3 with value 0xbab2d00f95878e1d
sw x3, 0(x2) # store 0xbab2d00f95878e1d in memory
flh f12, 0(x2) # load 0xbab2d00f95878e1d from memory into f12
fclass.h x4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x9, 0x3740c85663a39db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x428c3ec0d1061fdf # load x3 with value 0x428c3ec0d1061fdf
sw x3, 0(x2) # store 0x428c3ec0d1061fdf in memory
flh f13, 0(x2) # load 0x428c3ec0d1061fdf from memory into f13
fclass.h x9, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0x951b5aa138c93311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x994f56c2597d3409 # load x3 with value 0x994f56c2597d3409
sw x3, 0(x2) # store 0x994f56c2597d3409 in memory
flh f14, 0(x2) # load 0x994f56c2597d3409 from memory into f14
fclass.h x1, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x27, 0x0ff82d4755e12624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd5b142e5f33d72a # load x3 with value 0xbd5b142e5f33d72a
sw x3, 0(x2) # store 0xbd5b142e5f33d72a in memory
flh f15, 0(x2) # load 0xbd5b142e5f33d72a from memory into f15
fclass.h x27, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x22, 0x1581c4ddf7c8972d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x767fd0c2b6b5796b # load x3 with value 0x767fd0c2b6b5796b
sw x3, 0(x2) # store 0x767fd0c2b6b5796b in memory
flh f16, 0(x2) # load 0x767fd0c2b6b5796b from memory into f16
fclass.h x22, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x23, 0x069e9c87056e277f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99aab96cb1b8664e # load x3 with value 0x99aab96cb1b8664e
sw x3, 0(x2) # store 0x99aab96cb1b8664e in memory
flh f17, 0(x2) # load 0x99aab96cb1b8664e from memory into f17
fclass.h x23, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x1, 0x26c17c2b0140989b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecffea8fa75443da # load x3 with value 0xecffea8fa75443da
sw x3, 0(x2) # store 0xecffea8fa75443da in memory
flh f18, 0(x2) # load 0xecffea8fa75443da from memory into f18
fclass.h x1, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x18, 0xaba130336d0958e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fe5f067b1684ecf # load x3 with value 0x9fe5f067b1684ecf
sw x3, 0(x2) # store 0x9fe5f067b1684ecf in memory
flh f19, 0(x2) # load 0x9fe5f067b1684ecf from memory into f19
fclass.h x18, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x29, 0xf7877402ea4d382e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc93233f59181d64 # load x3 with value 0xbc93233f59181d64
sw x3, 0(x2) # store 0xbc93233f59181d64 in memory
flh f20, 0(x2) # load 0xbc93233f59181d64 from memory into f20
fclass.h x29, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0x043d47b045e338ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe100ec3c0587296 # load x3 with value 0xfe100ec3c0587296
sw x3, 0(x2) # store 0xfe100ec3c0587296 in memory
flh f21, 0(x2) # load 0xfe100ec3c0587296 from memory into f21
fclass.h x8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x15, 0x18f2a7a4b80cb232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x461f0a9726394d58 # load x3 with value 0x461f0a9726394d58
sw x3, 0(x2) # store 0x461f0a9726394d58 in memory
flh f22, 0(x2) # load 0x461f0a9726394d58 from memory into f22
fclass.h x15, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x29, 0xd73916fa2cbab755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a80cbadb62b5c7b # load x3 with value 0x7a80cbadb62b5c7b
sw x3, 0(x2) # store 0x7a80cbadb62b5c7b in memory
flh f23, 0(x2) # load 0x7a80cbadb62b5c7b from memory into f23
fclass.h x29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x21, 0x7b467115b1f5d2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c2f1965487bb9db # load x3 with value 0x8c2f1965487bb9db
sw x3, 0(x2) # store 0x8c2f1965487bb9db in memory
flh f24, 0(x2) # load 0x8c2f1965487bb9db from memory into f24
fclass.h x21, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x22, 0xf0f8a0e5d88db77f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c8de23bf65f2f49 # load x3 with value 0x8c8de23bf65f2f49
sw x3, 0(x2) # store 0x8c8de23bf65f2f49 in memory
flh f25, 0(x2) # load 0x8c8de23bf65f2f49 from memory into f25
fclass.h x22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x3, 0xa6e96081c8031b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4df63c235172c94 # load x3 with value 0xa4df63c235172c94
sw x3, 0(x2) # store 0xa4df63c235172c94 in memory
flh f26, 0(x2) # load 0xa4df63c235172c94 from memory into f26
fclass.h x3, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x31, 0x4ea39ae419d4fabc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe1f6715d5fbefb4 # load x3 with value 0xbe1f6715d5fbefb4
sw x3, 0(x2) # store 0xbe1f6715d5fbefb4 in memory
flh f27, 0(x2) # load 0xbe1f6715d5fbefb4 from memory into f27
fclass.h x31, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x2, 0x8c24c59e696718e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x287fa0024b0fc665 # load x3 with value 0x287fa0024b0fc665
sw x3, 0(x2) # store 0x287fa0024b0fc665 in memory
flh f28, 0(x2) # load 0x287fa0024b0fc665 from memory into f28
fclass.h x2, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x27, 0x0ba7cc12fab06fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c710281b026d16f # load x3 with value 0x2c710281b026d16f
sw x3, 0(x2) # store 0x2c710281b026d16f in memory
flh f29, 0(x2) # load 0x2c710281b026d16f from memory into f29
fclass.h x27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x10, 0x2eb4ca34e6723f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf45510a6651944f # load x3 with value 0xf45510a6651944f
sw x3, 0(x2) # store 0xf45510a6651944f in memory
flh f30, 0(x2) # load 0xf45510a6651944f from memory into f30
fclass.h x10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x11, 0x6c582bc345d81b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0bbed8f57824cd4 # load x3 with value 0xe0bbed8f57824cd4
sw x3, 0(x2) # store 0xe0bbed8f57824cd4 in memory
flh f31, 0(x2) # load 0xe0bbed8f57824cd4 from memory into f31
fclass.h x11, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
