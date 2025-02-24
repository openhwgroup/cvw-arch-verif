///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsgnj.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.271134
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


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0x38eec4bb27e2c638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xe0739ec4e90e3c03 # load x3 with value 0xe0739ec4e90e3c03
sw x3, 0(x2) # store 0xe0739ec4e90e3c03 in memory
flh f17, 0(x2) # load 0xe0739ec4e90e3c03 from memory into f17
fsgnj.h f16, f31, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x2, 0x74101d3d971d5214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0xe847afecde3b0686 # load x3 with value 0xe847afecde3b0686
sw x3, 0(x2) # store 0xe847afecde3b0686 in memory
flh f26, 0(x2) # load 0xe847afecde3b0686 from memory into f26
fsgnj.h f2, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x10, 0x605c3fdbf91e5d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0xda3a5a7401fcaca7 # load x3 with value 0xda3a5a7401fcaca7
sw x3, 0(x2) # store 0xda3a5a7401fcaca7 in memory
flh f4, 0(x2) # load 0xda3a5a7401fcaca7 from memory into f4
fsgnj.h f10, f25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x8, 0x795ffa05bf3d7954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x227f1a5d5a90b275 # load x3 with value 0x227f1a5d5a90b275
sw x3, 0(x2) # store 0x227f1a5d5a90b275 in memory
flh f18, 0(x2) # load 0x227f1a5d5a90b275 from memory into f18
fsgnj.h f8, f24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x16, 0xc96e156d2a1ef7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x2765942a10e55299 # load x3 with value 0x2765942a10e55299
sw x3, 0(x2) # store 0x2765942a10e55299 in memory
flh f30, 0(x2) # load 0x2765942a10e55299 from memory into f30
fsgnj.h f16, f29, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x19, 0x94c890e3eaaaffb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x35709aa8ef9c5db # load x3 with value 0x35709aa8ef9c5db
sw x3, 0(x2) # store 0x35709aa8ef9c5db in memory
flh f13, 0(x2) # load 0x35709aa8ef9c5db from memory into f13
fsgnj.h f19, f20, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x6, 0x5522f676314e5e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x3b201a7a66a2509a # load x3 with value 0x3b201a7a66a2509a
sw x3, 0(x2) # store 0x3b201a7a66a2509a in memory
flh f29, 0(x2) # load 0x3b201a7a66a2509a from memory into f29
fsgnj.h f6, f13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x19, 0x22bcc241bb7cd7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x6f2866cce2c8d309 # load x3 with value 0x6f2866cce2c8d309
sw x3, 0(x2) # store 0x6f2866cce2c8d309 in memory
flh f3, 0(x2) # load 0x6f2866cce2c8d309 from memory into f3
fsgnj.h f19, f11, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x19, 0xc5c36a19c959af24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0xd3913e6d1bd26599 # load x3 with value 0xd3913e6d1bd26599
sw x3, 0(x2) # store 0xd3913e6d1bd26599 in memory
flh f5, 0(x2) # load 0xd3913e6d1bd26599 from memory into f5
fsgnj.h f19, f20, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x5, 0xe9713974f43dfe50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0xe1c2b825411d844e # load x3 with value 0xe1c2b825411d844e
sw x3, 0(x2) # store 0xe1c2b825411d844e in memory
flh f14, 0(x2) # load 0xe1c2b825411d844e from memory into f14
fsgnj.h f5, f20, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x31, 0x31c633d181437647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x27e4283a1c181ca6 # load x3 with value 0x27e4283a1c181ca6
sw x3, 0(x2) # store 0x27e4283a1c181ca6 in memory
flh f26, 0(x2) # load 0x27e4283a1c181ca6 from memory into f26
fsgnj.h f31, f28, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x30, 0xf49ce6053d3ac769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0xb5f1488066cd0360 # load x3 with value 0xb5f1488066cd0360
sw x3, 0(x2) # store 0xb5f1488066cd0360 in memory
flh f22, 0(x2) # load 0xb5f1488066cd0360 from memory into f22
fsgnj.h f30, f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x26, 0x6b30f4af0ea7e0c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x6dd77674ff9465e4 # load x3 with value 0x6dd77674ff9465e4
sw x3, 0(x2) # store 0x6dd77674ff9465e4 in memory
flh f20, 0(x2) # load 0x6dd77674ff9465e4 from memory into f20
fsgnj.h f26, f23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x13, 0xa9e5da41f2958504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x103a9ce9c7e7be49 # load x3 with value 0x103a9ce9c7e7be49
sw x3, 0(x2) # store 0x103a9ce9c7e7be49 in memory
flh f19, 0(x2) # load 0x103a9ce9c7e7be49 from memory into f19
fsgnj.h f13, f5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x25, 0x7d7fb51eb978b378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0xbf7e175a341eccf # load x3 with value 0xbf7e175a341eccf
sw x3, 0(x2) # store 0xbf7e175a341eccf in memory
flh f15, 0(x2) # load 0xbf7e175a341eccf from memory into f15
fsgnj.h f25, f5, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x6, 0xb696495c81bbad4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x7635996148e6d043 # load x3 with value 0x7635996148e6d043
sw x3, 0(x2) # store 0x7635996148e6d043 in memory
flh f21, 0(x2) # load 0x7635996148e6d043 from memory into f21
fsgnj.h f6, f10, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x17, 0x7d057395f911ce10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x828f737410b9abf3 # load x3 with value 0x828f737410b9abf3
sw x3, 0(x2) # store 0x828f737410b9abf3 in memory
flh f9, 0(x2) # load 0x828f737410b9abf3 from memory into f9
fsgnj.h f17, f23, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x19, 0xe0801e672e873391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0xa1c83190cacc24e9 # load x3 with value 0xa1c83190cacc24e9
sw x3, 0(x2) # store 0xa1c83190cacc24e9 in memory
flh f31, 0(x2) # load 0xa1c83190cacc24e9 from memory into f31
fsgnj.h f19, f5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x5, 0x55d81b15bc6e893f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x95566a9249b4b043 # load x3 with value 0x95566a9249b4b043
sw x3, 0(x2) # store 0x95566a9249b4b043 in memory
flh f9, 0(x2) # load 0x95566a9249b4b043 from memory into f9
fsgnj.h f5, f1, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x10, 0x08061130ac09bcfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0xbc0464f1b2907890 # load x3 with value 0xbc0464f1b2907890
sw x3, 0(x2) # store 0xbc0464f1b2907890 in memory
flh f2, 0(x2) # load 0xbc0464f1b2907890 from memory into f2
fsgnj.h f10, f7, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x27, 0xe0f92ffffd85ba7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x96132ac9ab189d0b # load x3 with value 0x96132ac9ab189d0b
sw x3, 0(x2) # store 0x96132ac9ab189d0b in memory
flh f4, 0(x2) # load 0x96132ac9ab189d0b from memory into f4
fsgnj.h f27, f20, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x23, 0x1afa8e1d77e63baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x1c530561e7a1647 # load x3 with value 0x1c530561e7a1647
sw x3, 0(x2) # store 0x1c530561e7a1647 in memory
flh f26, 0(x2) # load 0x1c530561e7a1647 from memory into f26
fsgnj.h f23, f5, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x29, 0x537a0a2aaa59b879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x2fccec5a245f9008 # load x3 with value 0x2fccec5a245f9008
sw x3, 0(x2) # store 0x2fccec5a245f9008 in memory
flh f20, 0(x2) # load 0x2fccec5a245f9008 from memory into f20
fsgnj.h f29, f2, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x16, 0xdc3711e31bcedb53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x3a6138988ddc9a02 # load x3 with value 0x3a6138988ddc9a02
sw x3, 0(x2) # store 0x3a6138988ddc9a02 in memory
flh f10, 0(x2) # load 0x3a6138988ddc9a02 from memory into f10
fsgnj.h f16, f1, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x8, 0xf7425a349b70bfa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x8d90daea5c2cd50b # load x3 with value 0x8d90daea5c2cd50b
sw x3, 0(x2) # store 0x8d90daea5c2cd50b in memory
flh f15, 0(x2) # load 0x8d90daea5c2cd50b from memory into f15
fsgnj.h f8, f9, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x6, 0x38a975142c702687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0xfd288dc3d74ca8d7 # load x3 with value 0xfd288dc3d74ca8d7
sw x3, 0(x2) # store 0xfd288dc3d74ca8d7 in memory
flh f8, 0(x2) # load 0xfd288dc3d74ca8d7 from memory into f8
fsgnj.h f6, f2, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x24, 0xe4f63bb0a6b200b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49d6071ff6ef569f # load x3 with value 0x49d6071ff6ef569f
sw x3, 0(x2) # store 0x49d6071ff6ef569f in memory
flh f1, 0(x2) # load 0x49d6071ff6ef569f from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fsgnj.h f24, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x1, 0x7331f81897db85f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f69d3a85db01e22 # load x3 with value 0x9f69d3a85db01e22
sw x3, 0(x2) # store 0x9f69d3a85db01e22 in memory
flh f15, 0(x2) # load 0x9f69d3a85db01e22 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fsgnj.h f1, f15, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x17, 0x4c684ed857d81583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa83e5c524a996fc7 # load x3 with value 0xa83e5c524a996fc7
sw x3, 0(x2) # store 0xa83e5c524a996fc7 in memory
flh f27, 0(x2) # load 0xa83e5c524a996fc7 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fsgnj.h f17, f27, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x5, 0x65fa6fb4f1efb324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65d0f900dc0872a4 # load x3 with value 0x65d0f900dc0872a4
sw x3, 0(x2) # store 0x65d0f900dc0872a4 in memory
flh f25, 0(x2) # load 0x65d0f900dc0872a4 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsgnj.h f5, f25, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x9, 0x5bba1b67688c3996 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa217d319eb9ec8dd # load x3 with value 0xa217d319eb9ec8dd
sw x3, 0(x2) # store 0xa217d319eb9ec8dd in memory
flh f11, 0(x2) # load 0xa217d319eb9ec8dd from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsgnj.h f9, f11, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x10, 0x276e9a8da22eec2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc22a5fd3abef0326 # load x3 with value 0xc22a5fd3abef0326
sw x3, 0(x2) # store 0xc22a5fd3abef0326 in memory
flh f29, 0(x2) # load 0xc22a5fd3abef0326 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fsgnj.h f10, f29, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x9, 0xc2d68d43f9f0fbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3eda2e02146619c # load x3 with value 0xf3eda2e02146619c
sw x3, 0(x2) # store 0xf3eda2e02146619c in memory
flh f5, 0(x2) # load 0xf3eda2e02146619c from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fsgnj.h f9, f5, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x11, 0xced8a5f4484dad5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6f38ffbbb0ef730 # load x3 with value 0xb6f38ffbbb0ef730
sw x3, 0(x2) # store 0xb6f38ffbbb0ef730 in memory
flh f4, 0(x2) # load 0xb6f38ffbbb0ef730 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fsgnj.h f11, f4, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x25, 0x3323a980faa16075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa700b066b647b8be # load x3 with value 0xa700b066b647b8be
sw x3, 0(x2) # store 0xa700b066b647b8be in memory
flh f4, 0(x2) # load 0xa700b066b647b8be from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsgnj.h f25, f4, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x24, 0xeee3e0c10b482121 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf5eb529381914af # load x3 with value 0xcf5eb529381914af
sw x3, 0(x2) # store 0xcf5eb529381914af in memory
flh f11, 0(x2) # load 0xcf5eb529381914af from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fsgnj.h f24, f11, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x1, 0xb4c172da7e359dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39dd5066c65541d2 # load x3 with value 0x39dd5066c65541d2
sw x3, 0(x2) # store 0x39dd5066c65541d2 in memory
flh f31, 0(x2) # load 0x39dd5066c65541d2 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fsgnj.h f1, f31, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x16, 0x66391f5a31bf498e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6cc6aa91bdc472e # load x3 with value 0xf6cc6aa91bdc472e
sw x3, 0(x2) # store 0xf6cc6aa91bdc472e in memory
flh f24, 0(x2) # load 0xf6cc6aa91bdc472e from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fsgnj.h f16, f24, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x25, 0x0329fec186efd78a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f28bea8bf48d59a # load x3 with value 0x6f28bea8bf48d59a
sw x3, 0(x2) # store 0x6f28bea8bf48d59a in memory
flh f10, 0(x2) # load 0x6f28bea8bf48d59a from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fsgnj.h f25, f10, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x14, 0xbd27ffb203ae830d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2107d756b04db125 # load x3 with value 0x2107d756b04db125
sw x3, 0(x2) # store 0x2107d756b04db125 in memory
flh f20, 0(x2) # load 0x2107d756b04db125 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsgnj.h f14, f20, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x21, 0x1eb2b2b16bec788a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7b682a51005fceb # load x3 with value 0xe7b682a51005fceb
sw x3, 0(x2) # store 0xe7b682a51005fceb in memory
flh f20, 0(x2) # load 0xe7b682a51005fceb from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsgnj.h f21, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x20, 0x6b858d36abb30fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde69e99b14b2357 # load x3 with value 0xde69e99b14b2357
sw x3, 0(x2) # store 0xde69e99b14b2357 in memory
flh f30, 0(x2) # load 0xde69e99b14b2357 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fsgnj.h f20, f30, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x26, 0x476fd0d2aaf0c60c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8ad9e1d604c1dce # load x3 with value 0xd8ad9e1d604c1dce
sw x3, 0(x2) # store 0xd8ad9e1d604c1dce in memory
flh f31, 0(x2) # load 0xd8ad9e1d604c1dce from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fsgnj.h f26, f31, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x11, 0xef724bb71b3342d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82148cd0184c5fae # load x3 with value 0x82148cd0184c5fae
sw x3, 0(x2) # store 0x82148cd0184c5fae in memory
flh f20, 0(x2) # load 0x82148cd0184c5fae from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fsgnj.h f11, f20, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x31, 0x12cf58f5b7ef44e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x699dc596f7d229ce # load x3 with value 0x699dc596f7d229ce
sw x3, 0(x2) # store 0x699dc596f7d229ce in memory
flh f3, 0(x2) # load 0x699dc596f7d229ce from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fsgnj.h f31, f3, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x17, 0xbca981f6ebf8010f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50453859caf05e59 # load x3 with value 0x50453859caf05e59
sw x3, 0(x2) # store 0x50453859caf05e59 in memory
flh f19, 0(x2) # load 0x50453859caf05e59 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsgnj.h f17, f19, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x12, 0x9512a120950a1cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2deee6630d810427 # load x3 with value 0x2deee6630d810427
sw x3, 0(x2) # store 0x2deee6630d810427 in memory
flh f13, 0(x2) # load 0x2deee6630d810427 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fsgnj.h f12, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x16, 0xcad3143be1244c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2eca8a9423718d6 # load x3 with value 0xc2eca8a9423718d6
sw x3, 0(x2) # store 0xc2eca8a9423718d6 in memory
flh f30, 0(x2) # load 0xc2eca8a9423718d6 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fsgnj.h f16, f30, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x11, 0x69f6f9eb77ef7345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5564a93e739d097 # load x3 with value 0xa5564a93e739d097
sw x3, 0(x2) # store 0xa5564a93e739d097 in memory
flh f21, 0(x2) # load 0xa5564a93e739d097 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsgnj.h f11, f21, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x29, 0x79cbe209932a0ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e9f6c2d35ab0ced # load x3 with value 0x6e9f6c2d35ab0ced
sw x3, 0(x2) # store 0x6e9f6c2d35ab0ced in memory
flh f5, 0(x2) # load 0x6e9f6c2d35ab0ced from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fsgnj.h f29, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x16, 0x4b5705c34f950a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55f42102407b28aa # load x3 with value 0x55f42102407b28aa
sw x3, 0(x2) # store 0x55f42102407b28aa in memory
flh f10, 0(x2) # load 0x55f42102407b28aa from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsgnj.h f16, f10, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x25, 0x0ff8e877e8b52d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63cbc70d96f0fcbb # load x3 with value 0x63cbc70d96f0fcbb
sw x3, 0(x2) # store 0x63cbc70d96f0fcbb in memory
flh f17, 0(x2) # load 0x63cbc70d96f0fcbb from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsgnj.h f25, f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x464175afaf7299f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaece75d0d39a0047 # load x3 with value 0xaece75d0d39a0047
sw x3, 0(x2) # store 0xaece75d0d39a0047 in memory
flh f9, 0(x2) # load 0xaece75d0d39a0047 from memory into f9
li x3, 0x3d628fba0fab9c75 # load x3 with value 0x3d628fba0fab9c75
sw x3, 0(x2) # store 0x3d628fba0fab9c75 in memory
flh f27, 0(x2) # load 0x3d628fba0fab9c75 from memory into f27
fsgnj.h f0, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x9edb83b2e4b4c16f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73f94dc2ab18fec2 # load x3 with value 0x73f94dc2ab18fec2
sw x3, 0(x2) # store 0x73f94dc2ab18fec2 in memory
flh f13, 0(x2) # load 0x73f94dc2ab18fec2 from memory into f13
li x3, 0xfa9111845b4cd551 # load x3 with value 0xfa9111845b4cd551
sw x3, 0(x2) # store 0xfa9111845b4cd551 in memory
flh f10, 0(x2) # load 0xfa9111845b4cd551 from memory into f10
fsgnj.h f1, f13, f10 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xf2bd859081f35f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52b8f829c072c472 # load x3 with value 0x52b8f829c072c472
sw x3, 0(x2) # store 0x52b8f829c072c472 in memory
flh f5, 0(x2) # load 0x52b8f829c072c472 from memory into f5
li x3, 0x393a98e818dd4934 # load x3 with value 0x393a98e818dd4934
sw x3, 0(x2) # store 0x393a98e818dd4934 in memory
flh f6, 0(x2) # load 0x393a98e818dd4934 from memory into f6
fsgnj.h f2, f5, f6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd66e5ecfdfdceadd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82192c513e7111f3 # load x3 with value 0x82192c513e7111f3
sw x3, 0(x2) # store 0x82192c513e7111f3 in memory
flh f13, 0(x2) # load 0x82192c513e7111f3 from memory into f13
li x3, 0x6bdab4a4fb60508b # load x3 with value 0x6bdab4a4fb60508b
sw x3, 0(x2) # store 0x6bdab4a4fb60508b in memory
flh f16, 0(x2) # load 0x6bdab4a4fb60508b from memory into f16
fsgnj.h f3, f13, f16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd3a06959cc8b6d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a5ed93222eba6cf # load x3 with value 0x8a5ed93222eba6cf
sw x3, 0(x2) # store 0x8a5ed93222eba6cf in memory
flh f2, 0(x2) # load 0x8a5ed93222eba6cf from memory into f2
li x3, 0xb542a256361a3b89 # load x3 with value 0xb542a256361a3b89
sw x3, 0(x2) # store 0xb542a256361a3b89 in memory
flh f17, 0(x2) # load 0xb542a256361a3b89 from memory into f17
fsgnj.h f4, f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x88842c7599e0299f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1475d16d57f36dc8 # load x3 with value 0x1475d16d57f36dc8
sw x3, 0(x2) # store 0x1475d16d57f36dc8 in memory
flh f30, 0(x2) # load 0x1475d16d57f36dc8 from memory into f30
li x3, 0x70797e3d059940ab # load x3 with value 0x70797e3d059940ab
sw x3, 0(x2) # store 0x70797e3d059940ab in memory
flh f13, 0(x2) # load 0x70797e3d059940ab from memory into f13
fsgnj.h f5, f30, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x985b6743ad9bdadb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5c45a3e4482ce5c # load x3 with value 0xe5c45a3e4482ce5c
sw x3, 0(x2) # store 0xe5c45a3e4482ce5c in memory
flh f21, 0(x2) # load 0xe5c45a3e4482ce5c from memory into f21
li x3, 0xc6a7f75ce45322b9 # load x3 with value 0xc6a7f75ce45322b9
sw x3, 0(x2) # store 0xc6a7f75ce45322b9 in memory
flh f16, 0(x2) # load 0xc6a7f75ce45322b9 from memory into f16
fsgnj.h f6, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x6aecdddf99266d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5008d13629ebecd4 # load x3 with value 0x5008d13629ebecd4
sw x3, 0(x2) # store 0x5008d13629ebecd4 in memory
flh f8, 0(x2) # load 0x5008d13629ebecd4 from memory into f8
li x3, 0xeee0b9c5f0ebf0bb # load x3 with value 0xeee0b9c5f0ebf0bb
sw x3, 0(x2) # store 0xeee0b9c5f0ebf0bb in memory
flh f2, 0(x2) # load 0xeee0b9c5f0ebf0bb from memory into f2
fsgnj.h f7, f8, f2 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2cf2a9fa3498e1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b876df61e596648 # load x3 with value 0x6b876df61e596648
sw x3, 0(x2) # store 0x6b876df61e596648 in memory
flh f6, 0(x2) # load 0x6b876df61e596648 from memory into f6
li x3, 0x5bad268436847abe # load x3 with value 0x5bad268436847abe
sw x3, 0(x2) # store 0x5bad268436847abe in memory
flh f10, 0(x2) # load 0x5bad268436847abe from memory into f10
fsgnj.h f8, f6, f10 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x86f670689410ea3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70a7b9b6cb6b586 # load x3 with value 0x70a7b9b6cb6b586
sw x3, 0(x2) # store 0x70a7b9b6cb6b586 in memory
flh f24, 0(x2) # load 0x70a7b9b6cb6b586 from memory into f24
li x3, 0xe2f057ab306ec5ff # load x3 with value 0xe2f057ab306ec5ff
sw x3, 0(x2) # store 0xe2f057ab306ec5ff in memory
flh f2, 0(x2) # load 0xe2f057ab306ec5ff from memory into f2
fsgnj.h f9, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x04ce347975a017f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8338afcbb1fdb60f # load x3 with value 0x8338afcbb1fdb60f
sw x3, 0(x2) # store 0x8338afcbb1fdb60f in memory
flh f2, 0(x2) # load 0x8338afcbb1fdb60f from memory into f2
li x3, 0x206c02e0df02de7d # load x3 with value 0x206c02e0df02de7d
sw x3, 0(x2) # store 0x206c02e0df02de7d in memory
flh f16, 0(x2) # load 0x206c02e0df02de7d from memory into f16
fsgnj.h f10, f2, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xac2f0f489d2d31fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea0e374b81fd7d63 # load x3 with value 0xea0e374b81fd7d63
sw x3, 0(x2) # store 0xea0e374b81fd7d63 in memory
flh f16, 0(x2) # load 0xea0e374b81fd7d63 from memory into f16
li x3, 0x5f7b442584c7574d # load x3 with value 0x5f7b442584c7574d
sw x3, 0(x2) # store 0x5f7b442584c7574d in memory
flh f6, 0(x2) # load 0x5f7b442584c7574d from memory into f6
fsgnj.h f11, f16, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x08e3dc633ec1f906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60bc8d031097efa8 # load x3 with value 0x60bc8d031097efa8
sw x3, 0(x2) # store 0x60bc8d031097efa8 in memory
flh f14, 0(x2) # load 0x60bc8d031097efa8 from memory into f14
li x3, 0x76d8f44a921887bd # load x3 with value 0x76d8f44a921887bd
sw x3, 0(x2) # store 0x76d8f44a921887bd in memory
flh f20, 0(x2) # load 0x76d8f44a921887bd from memory into f20
fsgnj.h f12, f14, f20 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x291d52384f5d2f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x892e889c68823076 # load x3 with value 0x892e889c68823076
sw x3, 0(x2) # store 0x892e889c68823076 in memory
flh f9, 0(x2) # load 0x892e889c68823076 from memory into f9
li x3, 0x898479e051f5481b # load x3 with value 0x898479e051f5481b
sw x3, 0(x2) # store 0x898479e051f5481b in memory
flh f3, 0(x2) # load 0x898479e051f5481b from memory into f3
fsgnj.h f13, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x3efc0e3627b7865f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc431cabd2bb7b8 # load x3 with value 0xfc431cabd2bb7b8
sw x3, 0(x2) # store 0xfc431cabd2bb7b8 in memory
flh f21, 0(x2) # load 0xfc431cabd2bb7b8 from memory into f21
li x3, 0x71e653df83dd106b # load x3 with value 0x71e653df83dd106b
sw x3, 0(x2) # store 0x71e653df83dd106b in memory
flh f17, 0(x2) # load 0x71e653df83dd106b from memory into f17
fsgnj.h f14, f21, f17 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x9c3291303a0f96e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71e0e346da781d1b # load x3 with value 0x71e0e346da781d1b
sw x3, 0(x2) # store 0x71e0e346da781d1b in memory
flh f10, 0(x2) # load 0x71e0e346da781d1b from memory into f10
li x3, 0x24395d733ba7a039 # load x3 with value 0x24395d733ba7a039
sw x3, 0(x2) # store 0x24395d733ba7a039 in memory
flh f24, 0(x2) # load 0x24395d733ba7a039 from memory into f24
fsgnj.h f15, f10, f24 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xd909af885296c202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78f55d44d63420c # load x3 with value 0x78f55d44d63420c
sw x3, 0(x2) # store 0x78f55d44d63420c in memory
flh f20, 0(x2) # load 0x78f55d44d63420c from memory into f20
li x3, 0x643e8a741b6dc2a9 # load x3 with value 0x643e8a741b6dc2a9
sw x3, 0(x2) # store 0x643e8a741b6dc2a9 in memory
flh f13, 0(x2) # load 0x643e8a741b6dc2a9 from memory into f13
fsgnj.h f16, f20, f13 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x77a8a5ebedeac358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f7b0b9004dc22cc # load x3 with value 0x5f7b0b9004dc22cc
sw x3, 0(x2) # store 0x5f7b0b9004dc22cc in memory
flh f20, 0(x2) # load 0x5f7b0b9004dc22cc from memory into f20
li x3, 0xba10792a43d4d071 # load x3 with value 0xba10792a43d4d071
sw x3, 0(x2) # store 0xba10792a43d4d071 in memory
flh f3, 0(x2) # load 0xba10792a43d4d071 from memory into f3
fsgnj.h f17, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xbae8f23d94b13dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3f0c8ea16659d95 # load x3 with value 0xc3f0c8ea16659d95
sw x3, 0(x2) # store 0xc3f0c8ea16659d95 in memory
flh f16, 0(x2) # load 0xc3f0c8ea16659d95 from memory into f16
li x3, 0xc28fca62f81df9c8 # load x3 with value 0xc28fca62f81df9c8
sw x3, 0(x2) # store 0xc28fca62f81df9c8 in memory
flh f2, 0(x2) # load 0xc28fca62f81df9c8 from memory into f2
fsgnj.h f18, f16, f2 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x4e7383ee18f2446c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16fcc76f55b2e1f3 # load x3 with value 0x16fcc76f55b2e1f3
sw x3, 0(x2) # store 0x16fcc76f55b2e1f3 in memory
flh f18, 0(x2) # load 0x16fcc76f55b2e1f3 from memory into f18
li x3, 0xd1d6f7b051bd7726 # load x3 with value 0xd1d6f7b051bd7726
sw x3, 0(x2) # store 0xd1d6f7b051bd7726 in memory
flh f7, 0(x2) # load 0xd1d6f7b051bd7726 from memory into f7
fsgnj.h f19, f18, f7 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xa03efc8da027dffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x625150ee35ed7ac6 # load x3 with value 0x625150ee35ed7ac6
sw x3, 0(x2) # store 0x625150ee35ed7ac6 in memory
flh f17, 0(x2) # load 0x625150ee35ed7ac6 from memory into f17
li x3, 0x59210084f1d06a3c # load x3 with value 0x59210084f1d06a3c
sw x3, 0(x2) # store 0x59210084f1d06a3c in memory
flh f3, 0(x2) # load 0x59210084f1d06a3c from memory into f3
fsgnj.h f20, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa983dce7e1a116ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d98ed4587d90deb # load x3 with value 0x1d98ed4587d90deb
sw x3, 0(x2) # store 0x1d98ed4587d90deb in memory
flh f21, 0(x2) # load 0x1d98ed4587d90deb from memory into f21
li x3, 0x26fc632b95e6de1f # load x3 with value 0x26fc632b95e6de1f
sw x3, 0(x2) # store 0x26fc632b95e6de1f in memory
flh f26, 0(x2) # load 0x26fc632b95e6de1f from memory into f26
fsgnj.h f21, f21, f26 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x1b61b433b2ad83c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b1f9b66e998b09c # load x3 with value 0x7b1f9b66e998b09c
sw x3, 0(x2) # store 0x7b1f9b66e998b09c in memory
flh f23, 0(x2) # load 0x7b1f9b66e998b09c from memory into f23
li x3, 0x90d2ac5745620c92 # load x3 with value 0x90d2ac5745620c92
sw x3, 0(x2) # store 0x90d2ac5745620c92 in memory
flh f4, 0(x2) # load 0x90d2ac5745620c92 from memory into f4
fsgnj.h f22, f23, f4 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd9d005d307d15355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2859660dcdc9e4ec # load x3 with value 0x2859660dcdc9e4ec
sw x3, 0(x2) # store 0x2859660dcdc9e4ec in memory
flh f10, 0(x2) # load 0x2859660dcdc9e4ec from memory into f10
li x3, 0x12441f7b7fe88fac # load x3 with value 0x12441f7b7fe88fac
sw x3, 0(x2) # store 0x12441f7b7fe88fac in memory
flh f2, 0(x2) # load 0x12441f7b7fe88fac from memory into f2
fsgnj.h f23, f10, f2 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xcf7e0aaa0d7a6036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0511087ce1a868 # load x3 with value 0xc0511087ce1a868
sw x3, 0(x2) # store 0xc0511087ce1a868 in memory
flh f13, 0(x2) # load 0xc0511087ce1a868 from memory into f13
li x3, 0x79e5179a1b18272e # load x3 with value 0x79e5179a1b18272e
sw x3, 0(x2) # store 0x79e5179a1b18272e in memory
flh f3, 0(x2) # load 0x79e5179a1b18272e from memory into f3
fsgnj.h f24, f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x47645b39dec4f38c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c2142c390685840 # load x3 with value 0x3c2142c390685840
sw x3, 0(x2) # store 0x3c2142c390685840 in memory
flh f2, 0(x2) # load 0x3c2142c390685840 from memory into f2
li x3, 0xa57e77891f6bde7a # load x3 with value 0xa57e77891f6bde7a
sw x3, 0(x2) # store 0xa57e77891f6bde7a in memory
flh f18, 0(x2) # load 0xa57e77891f6bde7a from memory into f18
fsgnj.h f25, f2, f18 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x05142529c6a1c608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x257488b99cb8b079 # load x3 with value 0x257488b99cb8b079
sw x3, 0(x2) # store 0x257488b99cb8b079 in memory
flh f1, 0(x2) # load 0x257488b99cb8b079 from memory into f1
li x3, 0x11aee6c92f5af4f4 # load x3 with value 0x11aee6c92f5af4f4
sw x3, 0(x2) # store 0x11aee6c92f5af4f4 in memory
flh f19, 0(x2) # load 0x11aee6c92f5af4f4 from memory into f19
fsgnj.h f26, f1, f19 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x224720ac50cebfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x559fbc21130d9f99 # load x3 with value 0x559fbc21130d9f99
sw x3, 0(x2) # store 0x559fbc21130d9f99 in memory
flh f24, 0(x2) # load 0x559fbc21130d9f99 from memory into f24
li x3, 0xc91090e44ba9a79d # load x3 with value 0xc91090e44ba9a79d
sw x3, 0(x2) # store 0xc91090e44ba9a79d in memory
flh f13, 0(x2) # load 0xc91090e44ba9a79d from memory into f13
fsgnj.h f27, f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb8c1352df903ff48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb5b167a6dc4bdd # load x3 with value 0xfb5b167a6dc4bdd
sw x3, 0(x2) # store 0xfb5b167a6dc4bdd in memory
flh f4, 0(x2) # load 0xfb5b167a6dc4bdd from memory into f4
li x3, 0x28a44eaafc3a235d # load x3 with value 0x28a44eaafc3a235d
sw x3, 0(x2) # store 0x28a44eaafc3a235d in memory
flh f8, 0(x2) # load 0x28a44eaafc3a235d from memory into f8
fsgnj.h f28, f4, f8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x3aaaeb37f9f064ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc93b82718bbb02dc # load x3 with value 0xc93b82718bbb02dc
sw x3, 0(x2) # store 0xc93b82718bbb02dc in memory
flh f22, 0(x2) # load 0xc93b82718bbb02dc from memory into f22
li x3, 0x61cbe064e07605eb # load x3 with value 0x61cbe064e07605eb
sw x3, 0(x2) # store 0x61cbe064e07605eb in memory
flh f3, 0(x2) # load 0x61cbe064e07605eb from memory into f3
fsgnj.h f29, f22, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x9f4f29992bdbb5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27792be05818a33e # load x3 with value 0x27792be05818a33e
sw x3, 0(x2) # store 0x27792be05818a33e in memory
flh f28, 0(x2) # load 0x27792be05818a33e from memory into f28
li x3, 0x1eda7fa59653c165 # load x3 with value 0x1eda7fa59653c165
sw x3, 0(x2) # store 0x1eda7fa59653c165 in memory
flh f16, 0(x2) # load 0x1eda7fa59653c165 from memory into f16
fsgnj.h f30, f28, f16 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1bae26dd54daa5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a4bcb4b1421bab0 # load x3 with value 0x9a4bcb4b1421bab0
sw x3, 0(x2) # store 0x9a4bcb4b1421bab0 in memory
flh f19, 0(x2) # load 0x9a4bcb4b1421bab0 from memory into f19
li x3, 0xb02665482727fc50 # load x3 with value 0xb02665482727fc50
sw x3, 0(x2) # store 0xb02665482727fc50 in memory
flh f6, 0(x2) # load 0xb02665482727fc50 from memory into f6
fsgnj.h f31, f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x19, 0x309b0b6bd46b7b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82d16adea1d6cdf7 # load x3 with value 0x82d16adea1d6cdf7
sw x3, 0(x2) # store 0x82d16adea1d6cdf7 in memory
flh f0, 0(x2) # load 0x82d16adea1d6cdf7 from memory into f0
li x3, 0x8556b9ff43087032 # load x3 with value 0x8556b9ff43087032
sw x3, 0(x2) # store 0x8556b9ff43087032 in memory
flh f14, 0(x2) # load 0x8556b9ff43087032 from memory into f14
fsgnj.h f19, f0, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x16, 0xd16888e22ebae62d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9acb9646e809f150 # load x3 with value 0x9acb9646e809f150
sw x3, 0(x2) # store 0x9acb9646e809f150 in memory
flh f1, 0(x2) # load 0x9acb9646e809f150 from memory into f1
li x3, 0xcf4f461a502c2e68 # load x3 with value 0xcf4f461a502c2e68
sw x3, 0(x2) # store 0xcf4f461a502c2e68 in memory
flh f28, 0(x2) # load 0xcf4f461a502c2e68 from memory into f28
fsgnj.h f16, f1, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x28, 0x100b6024acbffb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cf2f19c98d0797a # load x3 with value 0x8cf2f19c98d0797a
sw x3, 0(x2) # store 0x8cf2f19c98d0797a in memory
flh f2, 0(x2) # load 0x8cf2f19c98d0797a from memory into f2
li x3, 0x9985d633d1c040a4 # load x3 with value 0x9985d633d1c040a4
sw x3, 0(x2) # store 0x9985d633d1c040a4 in memory
flh f4, 0(x2) # load 0x9985d633d1c040a4 from memory into f4
fsgnj.h f28, f2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x27, 0x7cd7689f75cf2a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92f59a5df453c79e # load x3 with value 0x92f59a5df453c79e
sw x3, 0(x2) # store 0x92f59a5df453c79e in memory
flh f3, 0(x2) # load 0x92f59a5df453c79e from memory into f3
li x3, 0x243f6ec3321690a0 # load x3 with value 0x243f6ec3321690a0
sw x3, 0(x2) # store 0x243f6ec3321690a0 in memory
flh f12, 0(x2) # load 0x243f6ec3321690a0 from memory into f12
fsgnj.h f27, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x4a4ffc90aa09ab8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1533520ae1d4fc # load x3 with value 0xd1533520ae1d4fc
sw x3, 0(x2) # store 0xd1533520ae1d4fc in memory
flh f4, 0(x2) # load 0xd1533520ae1d4fc from memory into f4
li x3, 0x563e8a64e1cb6de0 # load x3 with value 0x563e8a64e1cb6de0
sw x3, 0(x2) # store 0x563e8a64e1cb6de0 in memory
flh f1, 0(x2) # load 0x563e8a64e1cb6de0 from memory into f1
fsgnj.h f15, f4, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x7, 0x414aade7c319a0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdae99320448cd6ae # load x3 with value 0xdae99320448cd6ae
sw x3, 0(x2) # store 0xdae99320448cd6ae in memory
flh f5, 0(x2) # load 0xdae99320448cd6ae from memory into f5
li x3, 0x30687f2226327de7 # load x3 with value 0x30687f2226327de7
sw x3, 0(x2) # store 0x30687f2226327de7 in memory
flh f11, 0(x2) # load 0x30687f2226327de7 from memory into f11
fsgnj.h f7, f5, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x28, 0x843fca30c7de4eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7b14a5fa51684c # load x3 with value 0xc7b14a5fa51684c
sw x3, 0(x2) # store 0xc7b14a5fa51684c in memory
flh f6, 0(x2) # load 0xc7b14a5fa51684c from memory into f6
li x3, 0xba9a28c58e016003 # load x3 with value 0xba9a28c58e016003
sw x3, 0(x2) # store 0xba9a28c58e016003 in memory
flh f10, 0(x2) # load 0xba9a28c58e016003 from memory into f10
fsgnj.h f28, f6, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x6, 0x1fd5fafdf263aab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bb8565cdc17b433 # load x3 with value 0x5bb8565cdc17b433
sw x3, 0(x2) # store 0x5bb8565cdc17b433 in memory
flh f7, 0(x2) # load 0x5bb8565cdc17b433 from memory into f7
li x3, 0x358c5de75763e4c5 # load x3 with value 0x358c5de75763e4c5
sw x3, 0(x2) # store 0x358c5de75763e4c5 in memory
flh f29, 0(x2) # load 0x358c5de75763e4c5 from memory into f29
fsgnj.h f6, f7, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x17, 0xb2d4b79ef9e224db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9596b42f2ffbe175 # load x3 with value 0x9596b42f2ffbe175
sw x3, 0(x2) # store 0x9596b42f2ffbe175 in memory
flh f8, 0(x2) # load 0x9596b42f2ffbe175 from memory into f8
li x3, 0x48d128daa3b8d44b # load x3 with value 0x48d128daa3b8d44b
sw x3, 0(x2) # store 0x48d128daa3b8d44b in memory
flh f11, 0(x2) # load 0x48d128daa3b8d44b from memory into f11
fsgnj.h f17, f8, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x15, 0x7b56ecfe514580a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96541c5ab4aa3a2a # load x3 with value 0x96541c5ab4aa3a2a
sw x3, 0(x2) # store 0x96541c5ab4aa3a2a in memory
flh f9, 0(x2) # load 0x96541c5ab4aa3a2a from memory into f9
li x3, 0x3aff28cec006525b # load x3 with value 0x3aff28cec006525b
sw x3, 0(x2) # store 0x3aff28cec006525b in memory
flh f30, 0(x2) # load 0x3aff28cec006525b from memory into f30
fsgnj.h f15, f9, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x8, 0xfcd75361d61de6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60a3666a1d5a3bf3 # load x3 with value 0x60a3666a1d5a3bf3
sw x3, 0(x2) # store 0x60a3666a1d5a3bf3 in memory
flh f10, 0(x2) # load 0x60a3666a1d5a3bf3 from memory into f10
li x3, 0xf4cfa03f3c440de2 # load x3 with value 0xf4cfa03f3c440de2
sw x3, 0(x2) # store 0xf4cfa03f3c440de2 in memory
flh f1, 0(x2) # load 0xf4cfa03f3c440de2 from memory into f1
fsgnj.h f8, f10, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x7, 0xc42fac7776df7ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c1c2cc25ab7f974 # load x3 with value 0x6c1c2cc25ab7f974
sw x3, 0(x2) # store 0x6c1c2cc25ab7f974 in memory
flh f11, 0(x2) # load 0x6c1c2cc25ab7f974 from memory into f11
li x3, 0xc7eaf4d3b8d05ec8 # load x3 with value 0xc7eaf4d3b8d05ec8
sw x3, 0(x2) # store 0xc7eaf4d3b8d05ec8 in memory
flh f2, 0(x2) # load 0xc7eaf4d3b8d05ec8 from memory into f2
fsgnj.h f7, f11, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0x9ae519aaa88c799b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x648adf13cc092a87 # load x3 with value 0x648adf13cc092a87
sw x3, 0(x2) # store 0x648adf13cc092a87 in memory
flh f12, 0(x2) # load 0x648adf13cc092a87 from memory into f12
li x3, 0x6ed95a3260af8bae # load x3 with value 0x6ed95a3260af8bae
sw x3, 0(x2) # store 0x6ed95a3260af8bae in memory
flh f22, 0(x2) # load 0x6ed95a3260af8bae from memory into f22
fsgnj.h f21, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x21, 0xb2f1073579b318ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3231e80d9ae6ec0b # load x3 with value 0x3231e80d9ae6ec0b
sw x3, 0(x2) # store 0x3231e80d9ae6ec0b in memory
flh f13, 0(x2) # load 0x3231e80d9ae6ec0b from memory into f13
li x3, 0x39b02afb14311425 # load x3 with value 0x39b02afb14311425
sw x3, 0(x2) # store 0x39b02afb14311425 in memory
flh f25, 0(x2) # load 0x39b02afb14311425 from memory into f25
fsgnj.h f21, f13, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x19, 0x815a241cd57572f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9df45f3769aa288 # load x3 with value 0xd9df45f3769aa288
sw x3, 0(x2) # store 0xd9df45f3769aa288 in memory
flh f14, 0(x2) # load 0xd9df45f3769aa288 from memory into f14
li x3, 0xf72abc21a0b95eb1 # load x3 with value 0xf72abc21a0b95eb1
sw x3, 0(x2) # store 0xf72abc21a0b95eb1 in memory
flh f30, 0(x2) # load 0xf72abc21a0b95eb1 from memory into f30
fsgnj.h f19, f14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x8d30beb752c7b41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1db08d92f11fd179 # load x3 with value 0x1db08d92f11fd179
sw x3, 0(x2) # store 0x1db08d92f11fd179 in memory
flh f15, 0(x2) # load 0x1db08d92f11fd179 from memory into f15
li x3, 0x8103b024745a1308 # load x3 with value 0x8103b024745a1308
sw x3, 0(x2) # store 0x8103b024745a1308 in memory
flh f1, 0(x2) # load 0x8103b024745a1308 from memory into f1
fsgnj.h f7, f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0x83c3b24cd1fe7bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebdd5707af6d9659 # load x3 with value 0xebdd5707af6d9659
sw x3, 0(x2) # store 0xebdd5707af6d9659 in memory
flh f16, 0(x2) # load 0xebdd5707af6d9659 from memory into f16
li x3, 0xb52e7f24f9738585 # load x3 with value 0xb52e7f24f9738585
sw x3, 0(x2) # store 0xb52e7f24f9738585 in memory
flh f1, 0(x2) # load 0xb52e7f24f9738585 from memory into f1
fsgnj.h f17, f16, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x4, 0x3f9c4b3b08dea311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x777f0999251fc650 # load x3 with value 0x777f0999251fc650
sw x3, 0(x2) # store 0x777f0999251fc650 in memory
flh f17, 0(x2) # load 0x777f0999251fc650 from memory into f17
li x3, 0xbe715f608aa265d8 # load x3 with value 0xbe715f608aa265d8
sw x3, 0(x2) # store 0xbe715f608aa265d8 in memory
flh f16, 0(x2) # load 0xbe715f608aa265d8 from memory into f16
fsgnj.h f4, f17, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x17, 0xe29b7ad598da304a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88ecd52768a6d3fe # load x3 with value 0x88ecd52768a6d3fe
sw x3, 0(x2) # store 0x88ecd52768a6d3fe in memory
flh f18, 0(x2) # load 0x88ecd52768a6d3fe from memory into f18
li x3, 0x6864e0554150098f # load x3 with value 0x6864e0554150098f
sw x3, 0(x2) # store 0x6864e0554150098f in memory
flh f2, 0(x2) # load 0x6864e0554150098f from memory into f2
fsgnj.h f17, f18, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x12, 0x2b662f97096e67cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59eeff7cbf541c10 # load x3 with value 0x59eeff7cbf541c10
sw x3, 0(x2) # store 0x59eeff7cbf541c10 in memory
flh f19, 0(x2) # load 0x59eeff7cbf541c10 from memory into f19
li x3, 0x39a50bc252fcf0e4 # load x3 with value 0x39a50bc252fcf0e4
sw x3, 0(x2) # store 0x39a50bc252fcf0e4 in memory
flh f25, 0(x2) # load 0x39a50bc252fcf0e4 from memory into f25
fsgnj.h f12, f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x1, 0x56ad70cd7bb8d05e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88ba403e469263de # load x3 with value 0x88ba403e469263de
sw x3, 0(x2) # store 0x88ba403e469263de in memory
flh f20, 0(x2) # load 0x88ba403e469263de from memory into f20
li x3, 0xe8bf9eaa9cf8da77 # load x3 with value 0xe8bf9eaa9cf8da77
sw x3, 0(x2) # store 0xe8bf9eaa9cf8da77 in memory
flh f14, 0(x2) # load 0xe8bf9eaa9cf8da77 from memory into f14
fsgnj.h f1, f20, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0xc3a20a02e90339a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x282985c50687f1f7 # load x3 with value 0x282985c50687f1f7
sw x3, 0(x2) # store 0x282985c50687f1f7 in memory
flh f21, 0(x2) # load 0x282985c50687f1f7 from memory into f21
li x3, 0x71f4cf27a107c4f3 # load x3 with value 0x71f4cf27a107c4f3
sw x3, 0(x2) # store 0x71f4cf27a107c4f3 in memory
flh f5, 0(x2) # load 0x71f4cf27a107c4f3 from memory into f5
fsgnj.h f4, f21, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x13, 0x013201475ce882c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe42e7a4cf1f3562b # load x3 with value 0xe42e7a4cf1f3562b
sw x3, 0(x2) # store 0xe42e7a4cf1f3562b in memory
flh f22, 0(x2) # load 0xe42e7a4cf1f3562b from memory into f22
li x3, 0x5e4956e1ed445c32 # load x3 with value 0x5e4956e1ed445c32
sw x3, 0(x2) # store 0x5e4956e1ed445c32 in memory
flh f7, 0(x2) # load 0x5e4956e1ed445c32 from memory into f7
fsgnj.h f13, f22, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0xdf4fab24f27d6cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8c702474a8f9eba # load x3 with value 0xf8c702474a8f9eba
sw x3, 0(x2) # store 0xf8c702474a8f9eba in memory
flh f23, 0(x2) # load 0xf8c702474a8f9eba from memory into f23
li x3, 0x18900089aa42d4e4 # load x3 with value 0x18900089aa42d4e4
sw x3, 0(x2) # store 0x18900089aa42d4e4 in memory
flh f18, 0(x2) # load 0x18900089aa42d4e4 from memory into f18
fsgnj.h f26, f23, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x12, 0x1731b75dbcddb95e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x372cce8f1cb066e0 # load x3 with value 0x372cce8f1cb066e0
sw x3, 0(x2) # store 0x372cce8f1cb066e0 in memory
flh f24, 0(x2) # load 0x372cce8f1cb066e0 from memory into f24
li x3, 0xaabd2df5761616d1 # load x3 with value 0xaabd2df5761616d1
sw x3, 0(x2) # store 0xaabd2df5761616d1 in memory
flh f2, 0(x2) # load 0xaabd2df5761616d1 from memory into f2
fsgnj.h f12, f24, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x7, 0x844b0f32a748bf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf97d1832826726c # load x3 with value 0xf97d1832826726c
sw x3, 0(x2) # store 0xf97d1832826726c in memory
flh f25, 0(x2) # load 0xf97d1832826726c from memory into f25
li x3, 0xd942b8cc4f318597 # load x3 with value 0xd942b8cc4f318597
sw x3, 0(x2) # store 0xd942b8cc4f318597 in memory
flh f9, 0(x2) # load 0xd942b8cc4f318597 from memory into f9
fsgnj.h f7, f25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x11, 0x0e2335dc32d1940c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc7bc105d696b70f # load x3 with value 0xfc7bc105d696b70f
sw x3, 0(x2) # store 0xfc7bc105d696b70f in memory
flh f26, 0(x2) # load 0xfc7bc105d696b70f from memory into f26
li x3, 0x11268127ec767484 # load x3 with value 0x11268127ec767484
sw x3, 0(x2) # store 0x11268127ec767484 in memory
flh f28, 0(x2) # load 0x11268127ec767484 from memory into f28
fsgnj.h f11, f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x23, 0x20b224341ee9209e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99f3658349990a86 # load x3 with value 0x99f3658349990a86
sw x3, 0(x2) # store 0x99f3658349990a86 in memory
flh f27, 0(x2) # load 0x99f3658349990a86 from memory into f27
li x3, 0xc4101710830d8ee6 # load x3 with value 0xc4101710830d8ee6
sw x3, 0(x2) # store 0xc4101710830d8ee6 in memory
flh f2, 0(x2) # load 0xc4101710830d8ee6 from memory into f2
fsgnj.h f23, f27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x25, 0x919bdfe885eeb3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x558a0dca6b1804a1 # load x3 with value 0x558a0dca6b1804a1
sw x3, 0(x2) # store 0x558a0dca6b1804a1 in memory
flh f28, 0(x2) # load 0x558a0dca6b1804a1 from memory into f28
li x3, 0x841fda0956dfd734 # load x3 with value 0x841fda0956dfd734
sw x3, 0(x2) # store 0x841fda0956dfd734 in memory
flh f30, 0(x2) # load 0x841fda0956dfd734 from memory into f30
fsgnj.h f25, f28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x1, 0x3986203ed15af458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3a4eee224679576 # load x3 with value 0xa3a4eee224679576
sw x3, 0(x2) # store 0xa3a4eee224679576 in memory
flh f29, 0(x2) # load 0xa3a4eee224679576 from memory into f29
li x3, 0x5220c26422b97be4 # load x3 with value 0x5220c26422b97be4
sw x3, 0(x2) # store 0x5220c26422b97be4 in memory
flh f9, 0(x2) # load 0x5220c26422b97be4 from memory into f9
fsgnj.h f1, f29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x13, 0xb9a2ca8a956b30ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x178cc9402f37d9fe # load x3 with value 0x178cc9402f37d9fe
sw x3, 0(x2) # store 0x178cc9402f37d9fe in memory
flh f30, 0(x2) # load 0x178cc9402f37d9fe from memory into f30
li x3, 0x6df5ee901ae2afa9 # load x3 with value 0x6df5ee901ae2afa9
sw x3, 0(x2) # store 0x6df5ee901ae2afa9 in memory
flh f12, 0(x2) # load 0x6df5ee901ae2afa9 from memory into f12
fsgnj.h f13, f30, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x7, 0x2785c7999fde0213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd32d0044fd84b90b # load x3 with value 0xd32d0044fd84b90b
sw x3, 0(x2) # store 0xd32d0044fd84b90b in memory
flh f31, 0(x2) # load 0xd32d0044fd84b90b from memory into f31
li x3, 0x749947e0a78d3909 # load x3 with value 0x749947e0a78d3909
sw x3, 0(x2) # store 0x749947e0a78d3909 in memory
flh f27, 0(x2) # load 0x749947e0a78d3909 from memory into f27
fsgnj.h f7, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x15, 0x8374ab940f210783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ff31d7eabacefc0 # load x3 with value 0x1ff31d7eabacefc0
sw x3, 0(x2) # store 0x1ff31d7eabacefc0 in memory
flh f3, 0(x2) # load 0x1ff31d7eabacefc0 from memory into f3
li x3, 0x80b7572e79cd12e4 # load x3 with value 0x80b7572e79cd12e4
sw x3, 0(x2) # store 0x80b7572e79cd12e4 in memory
flh f0, 0(x2) # load 0x80b7572e79cd12e4 from memory into f0
fsgnj.h f15, f3, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x5, 0x9fa75d2e3e3e1880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9ef2111e971ddbf # load x3 with value 0xe9ef2111e971ddbf
sw x3, 0(x2) # store 0xe9ef2111e971ddbf in memory
flh f3, 0(x2) # load 0xe9ef2111e971ddbf from memory into f3
li x3, 0xfc61d372f16b8eac # load x3 with value 0xfc61d372f16b8eac
sw x3, 0(x2) # store 0xfc61d372f16b8eac in memory
flh f1, 0(x2) # load 0xfc61d372f16b8eac from memory into f1
fsgnj.h f5, f3, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x11, 0x630d83da3db43f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6257726b81482c1d # load x3 with value 0x6257726b81482c1d
sw x3, 0(x2) # store 0x6257726b81482c1d in memory
flh f15, 0(x2) # load 0x6257726b81482c1d from memory into f15
li x3, 0x42c5d8f57bbc9775 # load x3 with value 0x42c5d8f57bbc9775
sw x3, 0(x2) # store 0x42c5d8f57bbc9775 in memory
flh f2, 0(x2) # load 0x42c5d8f57bbc9775 from memory into f2
fsgnj.h f11, f15, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x5, 0x129af05a2e7a57bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd3b61b7f442b2ef # load x3 with value 0xfd3b61b7f442b2ef
sw x3, 0(x2) # store 0xfd3b61b7f442b2ef in memory
flh f23, 0(x2) # load 0xfd3b61b7f442b2ef from memory into f23
li x3, 0x7fa998f2ee4dcbc3 # load x3 with value 0x7fa998f2ee4dcbc3
sw x3, 0(x2) # store 0x7fa998f2ee4dcbc3 in memory
flh f3, 0(x2) # load 0x7fa998f2ee4dcbc3 from memory into f3
fsgnj.h f5, f23, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x7, 0x5dfde75d4f697eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x665a9027f12b758f # load x3 with value 0x665a9027f12b758f
sw x3, 0(x2) # store 0x665a9027f12b758f in memory
flh f30, 0(x2) # load 0x665a9027f12b758f from memory into f30
li x3, 0xa7a4828d12c80823 # load x3 with value 0xa7a4828d12c80823
sw x3, 0(x2) # store 0xa7a4828d12c80823 in memory
flh f4, 0(x2) # load 0xa7a4828d12c80823 from memory into f4
fsgnj.h f7, f30, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x3, 0x6fcb6f85969941ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66ed2d558fe6ca69 # load x3 with value 0x66ed2d558fe6ca69
sw x3, 0(x2) # store 0x66ed2d558fe6ca69 in memory
flh f11, 0(x2) # load 0x66ed2d558fe6ca69 from memory into f11
li x3, 0xe9d8141df62272a3 # load x3 with value 0xe9d8141df62272a3
sw x3, 0(x2) # store 0xe9d8141df62272a3 in memory
flh f5, 0(x2) # load 0xe9d8141df62272a3 from memory into f5
fsgnj.h f3, f11, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x22, 0x6eee1f8a59d76944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5f5a285c3ecdfd9 # load x3 with value 0xb5f5a285c3ecdfd9
sw x3, 0(x2) # store 0xb5f5a285c3ecdfd9 in memory
flh f9, 0(x2) # load 0xb5f5a285c3ecdfd9 from memory into f9
li x3, 0xda8e06d20a4b130c # load x3 with value 0xda8e06d20a4b130c
sw x3, 0(x2) # store 0xda8e06d20a4b130c in memory
flh f6, 0(x2) # load 0xda8e06d20a4b130c from memory into f6
fsgnj.h f22, f9, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x18, 0x793734dd95a12d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcac5a931e352f87 # load x3 with value 0xcac5a931e352f87
sw x3, 0(x2) # store 0xcac5a931e352f87 in memory
flh f15, 0(x2) # load 0xcac5a931e352f87 from memory into f15
li x3, 0xe554f8997e1524b5 # load x3 with value 0xe554f8997e1524b5
sw x3, 0(x2) # store 0xe554f8997e1524b5 in memory
flh f7, 0(x2) # load 0xe554f8997e1524b5 from memory into f7
fsgnj.h f18, f15, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x20, 0xf342eabc98cc18ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b240549ea874c # load x3 with value 0x18b240549ea874c
sw x3, 0(x2) # store 0x18b240549ea874c in memory
flh f24, 0(x2) # load 0x18b240549ea874c from memory into f24
li x3, 0xea2e30899fbb07ce # load x3 with value 0xea2e30899fbb07ce
sw x3, 0(x2) # store 0xea2e30899fbb07ce in memory
flh f8, 0(x2) # load 0xea2e30899fbb07ce from memory into f8
fsgnj.h f20, f24, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x21, 0x7c95a1c0489aaf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefd4678bc9b3ef31 # load x3 with value 0xefd4678bc9b3ef31
sw x3, 0(x2) # store 0xefd4678bc9b3ef31 in memory
flh f17, 0(x2) # load 0xefd4678bc9b3ef31 from memory into f17
li x3, 0x326a2a1663f3c606 # load x3 with value 0x326a2a1663f3c606
sw x3, 0(x2) # store 0x326a2a1663f3c606 in memory
flh f9, 0(x2) # load 0x326a2a1663f3c606 from memory into f9
fsgnj.h f21, f17, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x31, 0x267412aa783d9ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec215dd22c01ec87 # load x3 with value 0xec215dd22c01ec87
sw x3, 0(x2) # store 0xec215dd22c01ec87 in memory
flh f5, 0(x2) # load 0xec215dd22c01ec87 from memory into f5
li x3, 0x359bf4450bd943e0 # load x3 with value 0x359bf4450bd943e0
sw x3, 0(x2) # store 0x359bf4450bd943e0 in memory
flh f10, 0(x2) # load 0x359bf4450bd943e0 from memory into f10
fsgnj.h f31, f5, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0xbb12909fd99fa55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fa00f2eb87b7168 # load x3 with value 0x3fa00f2eb87b7168
sw x3, 0(x2) # store 0x3fa00f2eb87b7168 in memory
flh f1, 0(x2) # load 0x3fa00f2eb87b7168 from memory into f1
li x3, 0x5977d6070a3bedf0 # load x3 with value 0x5977d6070a3bedf0
sw x3, 0(x2) # store 0x5977d6070a3bedf0 in memory
flh f11, 0(x2) # load 0x5977d6070a3bedf0 from memory into f11
fsgnj.h f4, f1, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x11, 0x8f666b0314b37663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x167d8936001ec52a # load x3 with value 0x167d8936001ec52a
sw x3, 0(x2) # store 0x167d8936001ec52a in memory
flh f8, 0(x2) # load 0x167d8936001ec52a from memory into f8
li x3, 0x9f9dcb62a25e03ae # load x3 with value 0x9f9dcb62a25e03ae
sw x3, 0(x2) # store 0x9f9dcb62a25e03ae in memory
flh f12, 0(x2) # load 0x9f9dcb62a25e03ae from memory into f12
fsgnj.h f11, f8, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x19, 0x0789d9da275ea310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x646d92bb07afd70e # load x3 with value 0x646d92bb07afd70e
sw x3, 0(x2) # store 0x646d92bb07afd70e in memory
flh f24, 0(x2) # load 0x646d92bb07afd70e from memory into f24
li x3, 0x56c00e0e615bf1ee # load x3 with value 0x56c00e0e615bf1ee
sw x3, 0(x2) # store 0x56c00e0e615bf1ee in memory
flh f13, 0(x2) # load 0x56c00e0e615bf1ee from memory into f13
fsgnj.h f19, f24, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x30, 0xff8a42fdb9fa92d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe18f530a984d0b0b # load x3 with value 0xe18f530a984d0b0b
sw x3, 0(x2) # store 0xe18f530a984d0b0b in memory
flh f28, 0(x2) # load 0xe18f530a984d0b0b from memory into f28
li x3, 0x93d8329ef5ef2759 # load x3 with value 0x93d8329ef5ef2759
sw x3, 0(x2) # store 0x93d8329ef5ef2759 in memory
flh f14, 0(x2) # load 0x93d8329ef5ef2759 from memory into f14
fsgnj.h f30, f28, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x22, 0x1a9f3743d043357b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34ed3a86c1bf610b # load x3 with value 0x34ed3a86c1bf610b
sw x3, 0(x2) # store 0x34ed3a86c1bf610b in memory
flh f4, 0(x2) # load 0x34ed3a86c1bf610b from memory into f4
li x3, 0xb5bd2e03b5ffcae # load x3 with value 0xb5bd2e03b5ffcae
sw x3, 0(x2) # store 0xb5bd2e03b5ffcae in memory
flh f15, 0(x2) # load 0xb5bd2e03b5ffcae from memory into f15
fsgnj.h f22, f4, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x6, 0xaeaee61b882dff90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x228c7cabb779127f # load x3 with value 0x228c7cabb779127f
sw x3, 0(x2) # store 0x228c7cabb779127f in memory
flh f17, 0(x2) # load 0x228c7cabb779127f from memory into f17
li x3, 0x64f190d90c06eda8 # load x3 with value 0x64f190d90c06eda8
sw x3, 0(x2) # store 0x64f190d90c06eda8 in memory
flh f16, 0(x2) # load 0x64f190d90c06eda8 from memory into f16
fsgnj.h f6, f17, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x31, 0xbd2ae86c233ec4ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb088ffe1cf11072 # load x3 with value 0xdb088ffe1cf11072
sw x3, 0(x2) # store 0xdb088ffe1cf11072 in memory
flh f24, 0(x2) # load 0xdb088ffe1cf11072 from memory into f24
li x3, 0x1cf5c7f374c5f77a # load x3 with value 0x1cf5c7f374c5f77a
sw x3, 0(x2) # store 0x1cf5c7f374c5f77a in memory
flh f17, 0(x2) # load 0x1cf5c7f374c5f77a from memory into f17
fsgnj.h f31, f24, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x3, 0x1f7d2ddecc801583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ecd4dc5eb567583 # load x3 with value 0x1ecd4dc5eb567583
sw x3, 0(x2) # store 0x1ecd4dc5eb567583 in memory
flh f21, 0(x2) # load 0x1ecd4dc5eb567583 from memory into f21
li x3, 0xd750c3fe3d66676e # load x3 with value 0xd750c3fe3d66676e
sw x3, 0(x2) # store 0xd750c3fe3d66676e in memory
flh f18, 0(x2) # load 0xd750c3fe3d66676e from memory into f18
fsgnj.h f3, f21, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x13, 0x4b966be27fa9b0b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb46cfebc4fc91547 # load x3 with value 0xb46cfebc4fc91547
sw x3, 0(x2) # store 0xb46cfebc4fc91547 in memory
flh f2, 0(x2) # load 0xb46cfebc4fc91547 from memory into f2
li x3, 0x793ef89e59685c2e # load x3 with value 0x793ef89e59685c2e
sw x3, 0(x2) # store 0x793ef89e59685c2e in memory
flh f19, 0(x2) # load 0x793ef89e59685c2e from memory into f19
fsgnj.h f13, f2, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x12, 0x08718692fa65124d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e90e8750f500951 # load x3 with value 0x8e90e8750f500951
sw x3, 0(x2) # store 0x8e90e8750f500951 in memory
flh f25, 0(x2) # load 0x8e90e8750f500951 from memory into f25
li x3, 0xa5ac2b7e3ee0803e # load x3 with value 0xa5ac2b7e3ee0803e
sw x3, 0(x2) # store 0xa5ac2b7e3ee0803e in memory
flh f20, 0(x2) # load 0xa5ac2b7e3ee0803e from memory into f20
fsgnj.h f12, f25, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x26, 0xaee6c6f31d109b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x330efec2889eda1b # load x3 with value 0x330efec2889eda1b
sw x3, 0(x2) # store 0x330efec2889eda1b in memory
flh f18, 0(x2) # load 0x330efec2889eda1b from memory into f18
li x3, 0xd21cd86a682a43b4 # load x3 with value 0xd21cd86a682a43b4
sw x3, 0(x2) # store 0xd21cd86a682a43b4 in memory
flh f21, 0(x2) # load 0xd21cd86a682a43b4 from memory into f21
fsgnj.h f26, f18, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0xb9c1b35a8e8e7396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb96525bc1156b08 # load x3 with value 0xbb96525bc1156b08
sw x3, 0(x2) # store 0xbb96525bc1156b08 in memory
flh f26, 0(x2) # load 0xbb96525bc1156b08 from memory into f26
li x3, 0x290089cd5fdb795f # load x3 with value 0x290089cd5fdb795f
sw x3, 0(x2) # store 0x290089cd5fdb795f in memory
flh f22, 0(x2) # load 0x290089cd5fdb795f from memory into f22
fsgnj.h f7, f26, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x6, 0xcfa1b15cdcfc2b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xded6adf690a475c3 # load x3 with value 0xded6adf690a475c3
sw x3, 0(x2) # store 0xded6adf690a475c3 in memory
flh f22, 0(x2) # load 0xded6adf690a475c3 from memory into f22
li x3, 0x681e7ecdb883a81c # load x3 with value 0x681e7ecdb883a81c
sw x3, 0(x2) # store 0x681e7ecdb883a81c in memory
flh f23, 0(x2) # load 0x681e7ecdb883a81c from memory into f23
fsgnj.h f6, f22, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x7, 0xccc0d93efdc02806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1de7921968f16f4 # load x3 with value 0xb1de7921968f16f4
sw x3, 0(x2) # store 0xb1de7921968f16f4 in memory
flh f29, 0(x2) # load 0xb1de7921968f16f4 from memory into f29
li x3, 0xd442cb17a87966ed # load x3 with value 0xd442cb17a87966ed
sw x3, 0(x2) # store 0xd442cb17a87966ed in memory
flh f24, 0(x2) # load 0xd442cb17a87966ed from memory into f24
fsgnj.h f7, f29, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x27, 0x1564c80a01701cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48c68336ea16f7af # load x3 with value 0x48c68336ea16f7af
sw x3, 0(x2) # store 0x48c68336ea16f7af in memory
flh f3, 0(x2) # load 0x48c68336ea16f7af from memory into f3
li x3, 0x50165f9a06294988 # load x3 with value 0x50165f9a06294988
sw x3, 0(x2) # store 0x50165f9a06294988 in memory
flh f25, 0(x2) # load 0x50165f9a06294988 from memory into f25
fsgnj.h f27, f3, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x11, 0xde287b9e3f08faed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88ee961680bb904c # load x3 with value 0x88ee961680bb904c
sw x3, 0(x2) # store 0x88ee961680bb904c in memory
flh f14, 0(x2) # load 0x88ee961680bb904c from memory into f14
li x3, 0xb4474a7eddd7e19e # load x3 with value 0xb4474a7eddd7e19e
sw x3, 0(x2) # store 0xb4474a7eddd7e19e in memory
flh f26, 0(x2) # load 0xb4474a7eddd7e19e from memory into f26
fsgnj.h f11, f14, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x30, 0xc92b2d431dccf32d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79e98b7300cc218a # load x3 with value 0x79e98b7300cc218a
sw x3, 0(x2) # store 0x79e98b7300cc218a in memory
flh f28, 0(x2) # load 0x79e98b7300cc218a from memory into f28
li x3, 0x47d5c2edb4a99398 # load x3 with value 0x47d5c2edb4a99398
sw x3, 0(x2) # store 0x47d5c2edb4a99398 in memory
flh f27, 0(x2) # load 0x47d5c2edb4a99398 from memory into f27
fsgnj.h f30, f28, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x4, 0xd36d1565f7374070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7847c2b00eb6e229 # load x3 with value 0x7847c2b00eb6e229
sw x3, 0(x2) # store 0x7847c2b00eb6e229 in memory
flh f16, 0(x2) # load 0x7847c2b00eb6e229 from memory into f16
li x3, 0x977e973ae49d7915 # load x3 with value 0x977e973ae49d7915
sw x3, 0(x2) # store 0x977e973ae49d7915 in memory
flh f28, 0(x2) # load 0x977e973ae49d7915 from memory into f28
fsgnj.h f4, f16, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x30, 0x9d5da194bd3520c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ac7a0da623b30b6 # load x3 with value 0x8ac7a0da623b30b6
sw x3, 0(x2) # store 0x8ac7a0da623b30b6 in memory
flh f19, 0(x2) # load 0x8ac7a0da623b30b6 from memory into f19
li x3, 0xd41a5d4e03b8d31e # load x3 with value 0xd41a5d4e03b8d31e
sw x3, 0(x2) # store 0xd41a5d4e03b8d31e in memory
flh f29, 0(x2) # load 0xd41a5d4e03b8d31e from memory into f29
fsgnj.h f30, f19, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x3, 0x2c89642d87574775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd902258f1cfd2fe # load x3 with value 0xbd902258f1cfd2fe
sw x3, 0(x2) # store 0xbd902258f1cfd2fe in memory
flh f13, 0(x2) # load 0xbd902258f1cfd2fe from memory into f13
li x3, 0x694c1b6e51998e4a # load x3 with value 0x694c1b6e51998e4a
sw x3, 0(x2) # store 0x694c1b6e51998e4a in memory
flh f30, 0(x2) # load 0x694c1b6e51998e4a from memory into f30
fsgnj.h f3, f13, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x27, 0xb438bbf5721bc285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3e6a58375bfb9c4 # load x3 with value 0xf3e6a58375bfb9c4
sw x3, 0(x2) # store 0xf3e6a58375bfb9c4 in memory
flh f1, 0(x2) # load 0xf3e6a58375bfb9c4 from memory into f1
li x3, 0x5dfa90f82296946b # load x3 with value 0x5dfa90f82296946b
sw x3, 0(x2) # store 0x5dfa90f82296946b in memory
flh f31, 0(x2) # load 0x5dfa90f82296946b from memory into f31
fsgnj.h f27, f1, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
