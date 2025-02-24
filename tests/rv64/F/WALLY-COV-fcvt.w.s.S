///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.w.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.712437
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
li x0, 0x8d7192493c0f364a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39e753c14cf69fa2 # load x3 with value 0x39e753c14cf69fa2
sw x3, 0(x2) # store 0x39e753c14cf69fa2 in memory
flw f16, 0(x2) # load 0x39e753c14cf69fa2 from memory into f16
fcvt.w.s x0, f16 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1af28a4eb46cddfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x382d3d3621a1e1f6 # load x3 with value 0x382d3d3621a1e1f6
sw x3, 0(x2) # store 0x382d3d3621a1e1f6 in memory
flw f1, 0(x2) # load 0x382d3d3621a1e1f6 from memory into f1
fcvt.w.s x1, f1 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x65d1434754e9ca46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeb28de2dac13d0a5 # load x3 with value 0xeb28de2dac13d0a5
sw x3, 0(x2) # store 0xeb28de2dac13d0a5 in memory
flw f24, 0(x2) # load 0xeb28de2dac13d0a5 from memory into f24
fcvt.w.s x2, f24 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x57f0a361e0b8206c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ef4f0a2121c63d8 # load x3 with value 0x1ef4f0a2121c63d8
sw x3, 0(x2) # store 0x1ef4f0a2121c63d8 in memory
flw f27, 0(x2) # load 0x1ef4f0a2121c63d8 from memory into f27
fcvt.w.s x3, f27 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x9c62c2084af6d1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x724d999e4edd3a2b # load x3 with value 0x724d999e4edd3a2b
sw x3, 0(x2) # store 0x724d999e4edd3a2b in memory
flw f16, 0(x2) # load 0x724d999e4edd3a2b from memory into f16
fcvt.w.s x4, f16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9de1fdffb9389439 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41504e2664f6b65a # load x3 with value 0x41504e2664f6b65a
sw x3, 0(x2) # store 0x41504e2664f6b65a in memory
flw f30, 0(x2) # load 0x41504e2664f6b65a from memory into f30
fcvt.w.s x5, f30 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa226776ae585e0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5b1fed7af22c489b # load x3 with value 0x5b1fed7af22c489b
sw x3, 0(x2) # store 0x5b1fed7af22c489b in memory
flw f2, 0(x2) # load 0x5b1fed7af22c489b from memory into f2
fcvt.w.s x6, f2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa28dd8bb56a6e696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5ca672815151d817 # load x3 with value 0x5ca672815151d817
sw x3, 0(x2) # store 0x5ca672815151d817 in memory
flw f30, 0(x2) # load 0x5ca672815151d817 from memory into f30
fcvt.w.s x7, f30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x337bf5d5e0187a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6462a36fdf6cc4d3 # load x3 with value 0x6462a36fdf6cc4d3
sw x3, 0(x2) # store 0x6462a36fdf6cc4d3 in memory
flw f7, 0(x2) # load 0x6462a36fdf6cc4d3 from memory into f7
fcvt.w.s x8, f7 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf6d543f08ef02034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40b38d3201fc11fc # load x3 with value 0x40b38d3201fc11fc
sw x3, 0(x2) # store 0x40b38d3201fc11fc in memory
flw f14, 0(x2) # load 0x40b38d3201fc11fc from memory into f14
fcvt.w.s x9, f14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8938cf393d46739c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a4ff7bbe81a133e # load x3 with value 0x8a4ff7bbe81a133e
sw x3, 0(x2) # store 0x8a4ff7bbe81a133e in memory
flw f11, 0(x2) # load 0x8a4ff7bbe81a133e from memory into f11
fcvt.w.s x10, f11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x19cd97251a3bb165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xca8e7744faa237c4 # load x3 with value 0xca8e7744faa237c4
sw x3, 0(x2) # store 0xca8e7744faa237c4 in memory
flw f21, 0(x2) # load 0xca8e7744faa237c4 from memory into f21
fcvt.w.s x11, f21 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7869104dcec3f3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x967137031be3ce41 # load x3 with value 0x967137031be3ce41
sw x3, 0(x2) # store 0x967137031be3ce41 in memory
flw f17, 0(x2) # load 0x967137031be3ce41 from memory into f17
fcvt.w.s x12, f17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x46c1667dc16010ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa2e222a7b16e2ff6 # load x3 with value 0xa2e222a7b16e2ff6
sw x3, 0(x2) # store 0xa2e222a7b16e2ff6 in memory
flw f3, 0(x2) # load 0xa2e222a7b16e2ff6 from memory into f3
fcvt.w.s x13, f3 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0e308ba62becb84a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xadb53aed300008df # load x3 with value 0xadb53aed300008df
sw x3, 0(x2) # store 0xadb53aed300008df in memory
flw f27, 0(x2) # load 0xadb53aed300008df from memory into f27
fcvt.w.s x14, f27 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe8ec32b46d091c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4b6dc177b0414d6e # load x3 with value 0x4b6dc177b0414d6e
sw x3, 0(x2) # store 0x4b6dc177b0414d6e in memory
flw f9, 0(x2) # load 0x4b6dc177b0414d6e from memory into f9
fcvt.w.s x15, f9 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x7379b744227a9cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fe5da539937d89c # load x3 with value 0x7fe5da539937d89c
sw x3, 0(x2) # store 0x7fe5da539937d89c in memory
flw f12, 0(x2) # load 0x7fe5da539937d89c from memory into f12
fcvt.w.s x16, f12 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6426740b53d64be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x52fcb952be0f4131 # load x3 with value 0x52fcb952be0f4131
sw x3, 0(x2) # store 0x52fcb952be0f4131 in memory
flw f28, 0(x2) # load 0x52fcb952be0f4131 from memory into f28
fcvt.w.s x17, f28 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x781afbbbee2c73ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed852c036f018332 # load x3 with value 0xed852c036f018332
sw x3, 0(x2) # store 0xed852c036f018332 in memory
flw f6, 0(x2) # load 0xed852c036f018332 from memory into f6
fcvt.w.s x18, f6 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7a0543821fa6ea57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6b4afd2a4cbdb48 # load x3 with value 0xa6b4afd2a4cbdb48
sw x3, 0(x2) # store 0xa6b4afd2a4cbdb48 in memory
flw f20, 0(x2) # load 0xa6b4afd2a4cbdb48 from memory into f20
fcvt.w.s x19, f20 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x6d6bc70a79f3be14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x93f254105e409782 # load x3 with value 0x93f254105e409782
sw x3, 0(x2) # store 0x93f254105e409782 in memory
flw f12, 0(x2) # load 0x93f254105e409782 from memory into f12
fcvt.w.s x20, f12 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7c5979674cf75b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9192309400972c8c # load x3 with value 0x9192309400972c8c
sw x3, 0(x2) # store 0x9192309400972c8c in memory
flw f24, 0(x2) # load 0x9192309400972c8c from memory into f24
fcvt.w.s x21, f24 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x6b5d4357b7efa5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x505a25834fff7d8b # load x3 with value 0x505a25834fff7d8b
sw x3, 0(x2) # store 0x505a25834fff7d8b in memory
flw f30, 0(x2) # load 0x505a25834fff7d8b from memory into f30
fcvt.w.s x22, f30 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x8fef613702f2a448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd81f4f8399e2aa33 # load x3 with value 0xd81f4f8399e2aa33
sw x3, 0(x2) # store 0xd81f4f8399e2aa33 in memory
flw f10, 0(x2) # load 0xd81f4f8399e2aa33 from memory into f10
fcvt.w.s x23, f10 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb95e4d3f46713ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9e61462db3b12c0e # load x3 with value 0x9e61462db3b12c0e
sw x3, 0(x2) # store 0x9e61462db3b12c0e in memory
flw f18, 0(x2) # load 0x9e61462db3b12c0e from memory into f18
fcvt.w.s x24, f18 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd09787c460410161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xafb1bae541cfc030 # load x3 with value 0xafb1bae541cfc030
sw x3, 0(x2) # store 0xafb1bae541cfc030 in memory
flw f25, 0(x2) # load 0xafb1bae541cfc030 from memory into f25
fcvt.w.s x25, f25 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xbe07b1951466c262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3db76bddcab97ad7 # load x3 with value 0x3db76bddcab97ad7
sw x3, 0(x2) # store 0x3db76bddcab97ad7 in memory
flw f22, 0(x2) # load 0x3db76bddcab97ad7 from memory into f22
fcvt.w.s x26, f22 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x62d388912c951fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x898dec75ab045ae7 # load x3 with value 0x898dec75ab045ae7
sw x3, 0(x2) # store 0x898dec75ab045ae7 in memory
flw f7, 0(x2) # load 0x898dec75ab045ae7 from memory into f7
fcvt.w.s x27, f7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8e60c56bb3d43459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec59a7aa2ac824a # load x3 with value 0xec59a7aa2ac824a
sw x3, 0(x2) # store 0xec59a7aa2ac824a in memory
flw f24, 0(x2) # load 0xec59a7aa2ac824a from memory into f24
fcvt.w.s x28, f24 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x0ac4fff29cbae6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8e5ffa13f4c5687 # load x3 with value 0xd8e5ffa13f4c5687
sw x3, 0(x2) # store 0xd8e5ffa13f4c5687 in memory
flw f6, 0(x2) # load 0xd8e5ffa13f4c5687 from memory into f6
fcvt.w.s x29, f6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9232d841d9ad2a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7410ba6cb53c5bf8 # load x3 with value 0x7410ba6cb53c5bf8
sw x3, 0(x2) # store 0x7410ba6cb53c5bf8 in memory
flw f1, 0(x2) # load 0x7410ba6cb53c5bf8 from memory into f1
fcvt.w.s x30, f1 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x980870ba7fd3a5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f8b355d933eb114 # load x3 with value 0x6f8b355d933eb114
sw x3, 0(x2) # store 0x6f8b355d933eb114 in memory
flw f3, 0(x2) # load 0x6f8b355d933eb114 from memory into f3
fcvt.w.s x31, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x25, 0x6089e3a78f3bcb88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fcvt.w.s x25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x6, 0x77c8e8e4dd926521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fcvt.w.s x6, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x26, 0xa24c460e2c74afea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fcvt.w.s x26, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x18, 0xe3b954e3a7d5075b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fcvt.w.s x18, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x6, 0x6b62797e7a221443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fcvt.w.s x6, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x3, 0x0577e8898030f2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fcvt.w.s x3, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x21, 0xb8f70504b6d54014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fcvt.w.s x21, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x25, 0xf83c6d6f24c7d4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fcvt.w.s x25, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x31, 0x36e4c3fe272e6711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fcvt.w.s x31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x27, 0x77d1dbeecdd79dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fcvt.w.s x27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x3, 0xf2440f58a66bfa16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fcvt.w.s x3, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x26, 0xbc5b3b69af7dedf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fcvt.w.s x26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0x28d0fb420d904312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fcvt.w.s x31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x16, 0x49ecfa5770d4de25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fcvt.w.s x16, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x10, 0x1c4b9487e4107a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fcvt.w.s x10, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x18, 0xfa87929617ac0be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fcvt.w.s x18, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x30, 0x1bb03f2a7029ab87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fcvt.w.s x30, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x13, 0x276815b20f7016e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fcvt.w.s x13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x22, 0xd16f3ffa89db3024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fcvt.w.s x22, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x21, 0x9dd45482e171ca3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fcvt.w.s x21, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x14, 0x6cb609b4ea36eb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fcvt.w.s x14, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x27, 0x2c502a3428396ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fcvt.w.s x27, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x29, 0xc26797c55ef0e1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fcvt.w.s x29, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x31, 0xafcbc26a12bdfa1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fcvt.w.s x31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x12, 0x1fbfe52feccbfd06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fcvt.w.s x12, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x3, 0x59704a02503139b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fcvt.w.s x3, f8 # perform operation

# Testcase cp_frm
li x9, 0x6aa18ea91515db60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea94993cc161d98 # load x3 with value 0xea94993cc161d98
sw x3, 0(x2) # store 0xea94993cc161d98 in memory
flw f15, 0(x2) # load 0xea94993cc161d98 from memory into f15
fcvt.w.s x9, f15, dyn # perform operation
fcvt.w.s x9, f15, rdn # perform operation
fcvt.w.s x9, f15, rmm # perform operation
fcvt.w.s x9, f15, rne # perform operation
fcvt.w.s x9, f15, rtz # perform operation
fcvt.w.s x9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x9, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x9, 0xc507d4436c82fef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb7ff8a4486d9fa7d # load x3 with value 0xb7ff8a4486d9fa7d
sw x3, 0(x2) # store 0xb7ff8a4486d9fa7d in memory
flw f0, 0(x2) # load 0xb7ff8a4486d9fa7d from memory into f0
fcvt.w.s x9, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x22, 0x3749b77c146f835d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc6eecb72fbe52d28 # load x3 with value 0xc6eecb72fbe52d28
sw x3, 0(x2) # store 0xc6eecb72fbe52d28 in memory
flw f1, 0(x2) # load 0xc6eecb72fbe52d28 from memory into f1
fcvt.w.s x22, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x30, 0x70a4d3f93668a19d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1499d5dcb447e2fb # load x3 with value 0x1499d5dcb447e2fb
sw x3, 0(x2) # store 0x1499d5dcb447e2fb in memory
flw f2, 0(x2) # load 0x1499d5dcb447e2fb from memory into f2
fcvt.w.s x30, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0xc44ed262b926a450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e089a800c4ed568 # load x3 with value 0x6e089a800c4ed568
sw x3, 0(x2) # store 0x6e089a800c4ed568 in memory
flw f3, 0(x2) # load 0x6e089a800c4ed568 from memory into f3
fcvt.w.s x24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x18, 0x7f21db391193cde0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x56c46033485c982c # load x3 with value 0x56c46033485c982c
sw x3, 0(x2) # store 0x56c46033485c982c in memory
flw f4, 0(x2) # load 0x56c46033485c982c from memory into f4
fcvt.w.s x18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x24, 0xc1512dcd293b6da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd2007c537726ff81 # load x3 with value 0xd2007c537726ff81
sw x3, 0(x2) # store 0xd2007c537726ff81 in memory
flw f5, 0(x2) # load 0xd2007c537726ff81 from memory into f5
fcvt.w.s x24, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x4, 0x5dee32d03c4339d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffba1a8dcebb85ee # load x3 with value 0xffba1a8dcebb85ee
sw x3, 0(x2) # store 0xffba1a8dcebb85ee in memory
flw f6, 0(x2) # load 0xffba1a8dcebb85ee from memory into f6
fcvt.w.s x4, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0x4349507196fbb7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac97a50ed3ab2aab # load x3 with value 0xac97a50ed3ab2aab
sw x3, 0(x2) # store 0xac97a50ed3ab2aab in memory
flw f7, 0(x2) # load 0xac97a50ed3ab2aab from memory into f7
fcvt.w.s x30, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x3, 0x6ff346ef96fe73e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8513640fdb0cb76 # load x3 with value 0xe8513640fdb0cb76
sw x3, 0(x2) # store 0xe8513640fdb0cb76 in memory
flw f8, 0(x2) # load 0xe8513640fdb0cb76 from memory into f8
fcvt.w.s x3, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x28, 0xcae3bb1d5f135906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b25fff7174ab466 # load x3 with value 0x3b25fff7174ab466
sw x3, 0(x2) # store 0x3b25fff7174ab466 in memory
flw f9, 0(x2) # load 0x3b25fff7174ab466 from memory into f9
fcvt.w.s x28, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x23, 0x30425425bde689fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x30e1650bab910232 # load x3 with value 0x30e1650bab910232
sw x3, 0(x2) # store 0x30e1650bab910232 in memory
flw f10, 0(x2) # load 0x30e1650bab910232 from memory into f10
fcvt.w.s x23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x13, 0x8a0396258719f382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4463110ac7d380ba # load x3 with value 0x4463110ac7d380ba
sw x3, 0(x2) # store 0x4463110ac7d380ba in memory
flw f11, 0(x2) # load 0x4463110ac7d380ba from memory into f11
fcvt.w.s x13, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x17, 0xee8d0e28150f5386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e53a48f584a5c01 # load x3 with value 0x6e53a48f584a5c01
sw x3, 0(x2) # store 0x6e53a48f584a5c01 in memory
flw f12, 0(x2) # load 0x6e53a48f584a5c01 from memory into f12
fcvt.w.s x17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0xff87f0105671ac31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc4e0455849a870a5 # load x3 with value 0xc4e0455849a870a5
sw x3, 0(x2) # store 0xc4e0455849a870a5 in memory
flw f13, 0(x2) # load 0xc4e0455849a870a5 from memory into f13
fcvt.w.s x26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0x1d3a583024b90676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72dc4c958359b577 # load x3 with value 0x72dc4c958359b577
sw x3, 0(x2) # store 0x72dc4c958359b577 in memory
flw f14, 0(x2) # load 0x72dc4c958359b577 from memory into f14
fcvt.w.s x18, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x28, 0x7056ace27f5aa5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf05c47bfd4d3165c # load x3 with value 0xf05c47bfd4d3165c
sw x3, 0(x2) # store 0xf05c47bfd4d3165c in memory
flw f15, 0(x2) # load 0xf05c47bfd4d3165c from memory into f15
fcvt.w.s x28, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x3, 0x115187ded8fede3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f3faff58c28af3b # load x3 with value 0x5f3faff58c28af3b
sw x3, 0(x2) # store 0x5f3faff58c28af3b in memory
flw f16, 0(x2) # load 0x5f3faff58c28af3b from memory into f16
fcvt.w.s x3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x23, 0xd7211d7dc0665ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f1f7008418dbff6 # load x3 with value 0x7f1f7008418dbff6
sw x3, 0(x2) # store 0x7f1f7008418dbff6 in memory
flw f17, 0(x2) # load 0x7f1f7008418dbff6 from memory into f17
fcvt.w.s x23, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0xe4c2cb14717d63a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x666190d6ff2207bc # load x3 with value 0x666190d6ff2207bc
sw x3, 0(x2) # store 0x666190d6ff2207bc in memory
flw f18, 0(x2) # load 0x666190d6ff2207bc from memory into f18
fcvt.w.s x21, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x7, 0x081ad567e0a992b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8d157db8ba8ff996 # load x3 with value 0x8d157db8ba8ff996
sw x3, 0(x2) # store 0x8d157db8ba8ff996 in memory
flw f19, 0(x2) # load 0x8d157db8ba8ff996 from memory into f19
fcvt.w.s x7, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x1, 0xd53c06c86f536020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fb3651547d56958 # load x3 with value 0x3fb3651547d56958
sw x3, 0(x2) # store 0x3fb3651547d56958 in memory
flw f20, 0(x2) # load 0x3fb3651547d56958 from memory into f20
fcvt.w.s x1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x23, 0xac83c21ad5d30e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd67c9ce192414e03 # load x3 with value 0xd67c9ce192414e03
sw x3, 0(x2) # store 0xd67c9ce192414e03 in memory
flw f21, 0(x2) # load 0xd67c9ce192414e03 from memory into f21
fcvt.w.s x23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x1, 0xa764422ca0cd238b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x51c8facc2141231a # load x3 with value 0x51c8facc2141231a
sw x3, 0(x2) # store 0x51c8facc2141231a in memory
flw f22, 0(x2) # load 0x51c8facc2141231a from memory into f22
fcvt.w.s x1, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x24, 0xbf8134cd23921342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2ecdc713bc7ed9da # load x3 with value 0x2ecdc713bc7ed9da
sw x3, 0(x2) # store 0x2ecdc713bc7ed9da in memory
flw f23, 0(x2) # load 0x2ecdc713bc7ed9da from memory into f23
fcvt.w.s x24, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x30, 0xc49d896101f42356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ade74ca76f4e32c # load x3 with value 0x1ade74ca76f4e32c
sw x3, 0(x2) # store 0x1ade74ca76f4e32c in memory
flw f24, 0(x2) # load 0x1ade74ca76f4e32c from memory into f24
fcvt.w.s x30, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x16, 0x26311961d50410cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x53bc2013a46962b8 # load x3 with value 0x53bc2013a46962b8
sw x3, 0(x2) # store 0x53bc2013a46962b8 in memory
flw f25, 0(x2) # load 0x53bc2013a46962b8 from memory into f25
fcvt.w.s x16, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x13, 0xa8d410a2034d76ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec286d2923d1effa # load x3 with value 0xec286d2923d1effa
sw x3, 0(x2) # store 0xec286d2923d1effa in memory
flw f26, 0(x2) # load 0xec286d2923d1effa from memory into f26
fcvt.w.s x13, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x12, 0x7c4adc499b9ae43d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf30b85a843d2951c # load x3 with value 0xf30b85a843d2951c
sw x3, 0(x2) # store 0xf30b85a843d2951c in memory
flw f27, 0(x2) # load 0xf30b85a843d2951c from memory into f27
fcvt.w.s x12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x25, 0xd4804f5f09b8b902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc4fabd0c63ae870 # load x3 with value 0xbc4fabd0c63ae870
sw x3, 0(x2) # store 0xbc4fabd0c63ae870 in memory
flw f28, 0(x2) # load 0xbc4fabd0c63ae870 from memory into f28
fcvt.w.s x25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0x582a677b142d7e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78bc4a47ad28620f # load x3 with value 0x78bc4a47ad28620f
sw x3, 0(x2) # store 0x78bc4a47ad28620f in memory
flw f29, 0(x2) # load 0x78bc4a47ad28620f from memory into f29
fcvt.w.s x26, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x29, 0x8f541b039b50f3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54fd097971968c99 # load x3 with value 0x54fd097971968c99
sw x3, 0(x2) # store 0x54fd097971968c99 in memory
flw f30, 0(x2) # load 0x54fd097971968c99 from memory into f30
fcvt.w.s x29, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x27, 0x278a901e8869609e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc2508d91c1e047f # load x3 with value 0xdc2508d91c1e047f
sw x3, 0(x2) # store 0xdc2508d91c1e047f in memory
flw f31, 0(x2) # load 0xdc2508d91c1e047f from memory into f31
fcvt.w.s x27, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
