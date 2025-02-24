///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fmv.x.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.204190
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
li x0, 0x5a22cc4cc9ce165e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2ff60b89aeeab6a2 # load x3 with value 0x2ff60b89aeeab6a2
sw x3, 0(x2) # store 0x2ff60b89aeeab6a2 in memory
flh f4, 0(x2) # load 0x2ff60b89aeeab6a2 from memory into f4
fmv.x.h x0, f4 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf488a0796b43c600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e1a9b2d7b0b882e # load x3 with value 0x6e1a9b2d7b0b882e
sw x3, 0(x2) # store 0x6e1a9b2d7b0b882e in memory
flh f1, 0(x2) # load 0x6e1a9b2d7b0b882e from memory into f1
fmv.x.h x1, f1 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xce35e66bcbf2c2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7e24eaa11158dff # load x3 with value 0xe7e24eaa11158dff
sw x3, 0(x2) # store 0xe7e24eaa11158dff in memory
flh f25, 0(x2) # load 0xe7e24eaa11158dff from memory into f25
fmv.x.h x2, f25 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc09b8be7ec32ead2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x285567c55215604f # load x3 with value 0x285567c55215604f
sw x3, 0(x2) # store 0x285567c55215604f in memory
flh f29, 0(x2) # load 0x285567c55215604f from memory into f29
fmv.x.h x3, f29 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7074930acbdb0916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7c5bc3e8c7094ffb # load x3 with value 0x7c5bc3e8c7094ffb
sw x3, 0(x2) # store 0x7c5bc3e8c7094ffb in memory
flh f5, 0(x2) # load 0x7c5bc3e8c7094ffb from memory into f5
fmv.x.h x4, f5 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa937569b52429cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7c820fabfc19e3bf # load x3 with value 0x7c820fabfc19e3bf
sw x3, 0(x2) # store 0x7c820fabfc19e3bf in memory
flh f28, 0(x2) # load 0x7c820fabfc19e3bf from memory into f28
fmv.x.h x5, f28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf9da0f787504dbae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7154d8b4fc34086f # load x3 with value 0x7154d8b4fc34086f
sw x3, 0(x2) # store 0x7154d8b4fc34086f in memory
flh f1, 0(x2) # load 0x7154d8b4fc34086f from memory into f1
fmv.x.h x6, f1 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb41dfa2b4dc82cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbe65a00f5ac813a6 # load x3 with value 0xbe65a00f5ac813a6
sw x3, 0(x2) # store 0xbe65a00f5ac813a6 in memory
flh f17, 0(x2) # load 0xbe65a00f5ac813a6 from memory into f17
fmv.x.h x7, f17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc1dd7cfcc9556bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x96ce7104ab30ea70 # load x3 with value 0x96ce7104ab30ea70
sw x3, 0(x2) # store 0x96ce7104ab30ea70 in memory
flh f18, 0(x2) # load 0x96ce7104ab30ea70 from memory into f18
fmv.x.h x8, f18 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8b99bc8f8d3bbe85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd7c44040577042af # load x3 with value 0xd7c44040577042af
sw x3, 0(x2) # store 0xd7c44040577042af in memory
flh f24, 0(x2) # load 0xd7c44040577042af from memory into f24
fmv.x.h x9, f24 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9959756182ac6944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72392bf5e48645a1 # load x3 with value 0x72392bf5e48645a1
sw x3, 0(x2) # store 0x72392bf5e48645a1 in memory
flh f13, 0(x2) # load 0x72392bf5e48645a1 from memory into f13
fmv.x.h x10, f13 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x05595b957366a86e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb6a11b49e385f4d # load x3 with value 0xdb6a11b49e385f4d
sw x3, 0(x2) # store 0xdb6a11b49e385f4d in memory
flh f26, 0(x2) # load 0xdb6a11b49e385f4d from memory into f26
fmv.x.h x11, f26 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6199737cf665968b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x91bf8f3296cca6fa # load x3 with value 0x91bf8f3296cca6fa
sw x3, 0(x2) # store 0x91bf8f3296cca6fa in memory
flh f30, 0(x2) # load 0x91bf8f3296cca6fa from memory into f30
fmv.x.h x12, f30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x53225335aaf69f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5798defca8529e06 # load x3 with value 0x5798defca8529e06
sw x3, 0(x2) # store 0x5798defca8529e06 in memory
flh f23, 0(x2) # load 0x5798defca8529e06 from memory into f23
fmv.x.h x13, f23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8a83811769c3de10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x404ac25f4fba6876 # load x3 with value 0x404ac25f4fba6876
sw x3, 0(x2) # store 0x404ac25f4fba6876 in memory
flh f17, 0(x2) # load 0x404ac25f4fba6876 from memory into f17
fmv.x.h x14, f17 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xffed642bf7045c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe724adfc5ab43c33 # load x3 with value 0xe724adfc5ab43c33
sw x3, 0(x2) # store 0xe724adfc5ab43c33 in memory
flh f26, 0(x2) # load 0xe724adfc5ab43c33 from memory into f26
fmv.x.h x15, f26 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x84c56d0da6a9aca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1917f9e798f277ac # load x3 with value 0x1917f9e798f277ac
sw x3, 0(x2) # store 0x1917f9e798f277ac in memory
flh f31, 0(x2) # load 0x1917f9e798f277ac from memory into f31
fmv.x.h x16, f31 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x64be2884d36bf7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x765a380e4635fe1f # load x3 with value 0x765a380e4635fe1f
sw x3, 0(x2) # store 0x765a380e4635fe1f in memory
flh f3, 0(x2) # load 0x765a380e4635fe1f from memory into f3
fmv.x.h x17, f3 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x814a4aa1a82c59fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x970be131f0255cdc # load x3 with value 0x970be131f0255cdc
sw x3, 0(x2) # store 0x970be131f0255cdc in memory
flh f9, 0(x2) # load 0x970be131f0255cdc from memory into f9
fmv.x.h x18, f9 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8a09fec1e4c2bd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc023400bc145cd4f # load x3 with value 0xc023400bc145cd4f
sw x3, 0(x2) # store 0xc023400bc145cd4f in memory
flh f21, 0(x2) # load 0xc023400bc145cd4f from memory into f21
fmv.x.h x19, f21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x01813e4e1370fc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x142f7d08622b20ad # load x3 with value 0x142f7d08622b20ad
sw x3, 0(x2) # store 0x142f7d08622b20ad in memory
flh f18, 0(x2) # load 0x142f7d08622b20ad from memory into f18
fmv.x.h x20, f18 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd64ed445e35e3f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87894563f5f07d6b # load x3 with value 0x87894563f5f07d6b
sw x3, 0(x2) # store 0x87894563f5f07d6b in memory
flh f31, 0(x2) # load 0x87894563f5f07d6b from memory into f31
fmv.x.h x21, f31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x9999794d85616fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa75fa1257ad697c3 # load x3 with value 0xa75fa1257ad697c3
sw x3, 0(x2) # store 0xa75fa1257ad697c3 in memory
flh f25, 0(x2) # load 0xa75fa1257ad697c3 from memory into f25
fmv.x.h x22, f25 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x39ab915af38d9e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x801b7a036b2a9a75 # load x3 with value 0x801b7a036b2a9a75
sw x3, 0(x2) # store 0x801b7a036b2a9a75 in memory
flh f8, 0(x2) # load 0x801b7a036b2a9a75 from memory into f8
fmv.x.h x23, f8 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xad13e6b1c66b1409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x48a7f10f1105bf4a # load x3 with value 0x48a7f10f1105bf4a
sw x3, 0(x2) # store 0x48a7f10f1105bf4a in memory
flh f21, 0(x2) # load 0x48a7f10f1105bf4a from memory into f21
fmv.x.h x24, f21 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb510a84a13b1f194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd66cde5c6fdc7ac5 # load x3 with value 0xd66cde5c6fdc7ac5
sw x3, 0(x2) # store 0xd66cde5c6fdc7ac5 in memory
flh f10, 0(x2) # load 0xd66cde5c6fdc7ac5 from memory into f10
fmv.x.h x25, f10 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe8d3e5f565677c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3c79a32492c3ac7 # load x3 with value 0xf3c79a32492c3ac7
sw x3, 0(x2) # store 0xf3c79a32492c3ac7 in memory
flh f7, 0(x2) # load 0xf3c79a32492c3ac7 from memory into f7
fmv.x.h x26, f7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9883f757e1c0c88b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd0dd2f8f993f4a0a # load x3 with value 0xd0dd2f8f993f4a0a
sw x3, 0(x2) # store 0xd0dd2f8f993f4a0a in memory
flh f27, 0(x2) # load 0xd0dd2f8f993f4a0a from memory into f27
fmv.x.h x27, f27 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9de8d9e696d8a43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86a5e331698a62e4 # load x3 with value 0x86a5e331698a62e4
sw x3, 0(x2) # store 0x86a5e331698a62e4 in memory
flh f4, 0(x2) # load 0x86a5e331698a62e4 from memory into f4
fmv.x.h x28, f4 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x02dcb5646199417a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x75f44e975e1543ba # load x3 with value 0x75f44e975e1543ba
sw x3, 0(x2) # store 0x75f44e975e1543ba in memory
flh f27, 0(x2) # load 0x75f44e975e1543ba from memory into f27
fmv.x.h x29, f27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xadf3d276415e9727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcfb45e9a00c01243 # load x3 with value 0xcfb45e9a00c01243
sw x3, 0(x2) # store 0xcfb45e9a00c01243 in memory
flh f10, 0(x2) # load 0xcfb45e9a00c01243 from memory into f10
fmv.x.h x30, f10 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x0ef59ed5baa59b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb4f9808ee5b95377 # load x3 with value 0xb4f9808ee5b95377
sw x3, 0(x2) # store 0xb4f9808ee5b95377 in memory
flh f24, 0(x2) # load 0xb4f9808ee5b95377 from memory into f24
fmv.x.h x31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x3, 0x0c9d911c6f02a59e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmv.x.h x3, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x27, 0xe9e716299b4e9e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmv.x.h x27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x14, 0x816727cbae840133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmv.x.h x14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x30, 0x285dd25a73062e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmv.x.h x30, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x27, 0x8de36562e31d0720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmv.x.h x27, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x16, 0x1bd56ac2bda9019b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmv.x.h x16, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x30, 0xb6de2efc8a086cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fmv.x.h x30, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x10, 0x7ad8ff6b02cda531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmv.x.h x10, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x15, 0x92839ffedd0c8059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmv.x.h x15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x2, 0x6251c0b4b6c7a23b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmv.x.h x2, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x22, 0x8ad6aea7cbe047ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmv.x.h x22, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x1, 0x24dea87b361877c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmv.x.h x1, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x9, 0x1f1e4e1c4a6ab1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmv.x.h x9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x28, 0x051f31d77bb12f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmv.x.h x28, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x14, 0xd15fe07e3924bc5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmv.x.h x14, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x31, 0x98e0567f5287807e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmv.x.h x31, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x2, 0x286974056752a5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmv.x.h x2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x26, 0x3d4664861222c208 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fmv.x.h x26, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x17, 0xe26ffb2378722f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmv.x.h x17, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x22, 0x75635419eb067aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fmv.x.h x22, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x19, 0x838e86d45d5073dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmv.x.h x19, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x24, 0xeead2dfa56e037d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmv.x.h x24, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x15, 0xf9091c671e431339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmv.x.h x15, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x13, 0x592429e2b557f19b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fmv.x.h x13, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x6, 0xb99c97eb9cd742c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmv.x.h x6, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x2, 0xbf101974c59aca1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmv.x.h x2, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x13, 0x556823dd76654b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x26dd142e6be0c3b8 # load x3 with value 0x26dd142e6be0c3b8
sw x3, 0(x2) # store 0x26dd142e6be0c3b8 in memory
flh f0, 0(x2) # load 0x26dd142e6be0c3b8 from memory into f0
fmv.x.h x13, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0x8f7213805c833462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x998ef13d66ebcd5d # load x3 with value 0x998ef13d66ebcd5d
sw x3, 0(x2) # store 0x998ef13d66ebcd5d in memory
flh f1, 0(x2) # load 0x998ef13d66ebcd5d from memory into f1
fmv.x.h x31, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x11, 0x7fb4a8c72d6691ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7279e9b9f9bd0c6b # load x3 with value 0x7279e9b9f9bd0c6b
sw x3, 0(x2) # store 0x7279e9b9f9bd0c6b in memory
flh f2, 0(x2) # load 0x7279e9b9f9bd0c6b from memory into f2
fmv.x.h x11, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0x32a7d524a62318a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe70fea2b5812f8b7 # load x3 with value 0xe70fea2b5812f8b7
sw x3, 0(x2) # store 0xe70fea2b5812f8b7 in memory
flh f3, 0(x2) # load 0xe70fea2b5812f8b7 from memory into f3
fmv.x.h x22, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x3, 0x8f500bbb4b5c3cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee568ce2b72a8e2a # load x3 with value 0xee568ce2b72a8e2a
sw x3, 0(x2) # store 0xee568ce2b72a8e2a in memory
flh f4, 0(x2) # load 0xee568ce2b72a8e2a from memory into f4
fmv.x.h x3, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x6, 0x395a75e07d4a4955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x71b616c264b5b313 # load x3 with value 0x71b616c264b5b313
sw x3, 0(x2) # store 0x71b616c264b5b313 in memory
flh f5, 0(x2) # load 0x71b616c264b5b313 from memory into f5
fmv.x.h x6, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x23, 0xfa0cad82eef2bc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x37b90882377d3557 # load x3 with value 0x37b90882377d3557
sw x3, 0(x2) # store 0x37b90882377d3557 in memory
flh f6, 0(x2) # load 0x37b90882377d3557 from memory into f6
fmv.x.h x23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x2, 0xfc9f9e876d2ce701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc3294f85e3ecf43 # load x3 with value 0xbc3294f85e3ecf43
sw x3, 0(x2) # store 0xbc3294f85e3ecf43 in memory
flh f7, 0(x2) # load 0xbc3294f85e3ecf43 from memory into f7
fmv.x.h x2, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0xdfbe57689a6d3540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x50421fc445acda61 # load x3 with value 0x50421fc445acda61
sw x3, 0(x2) # store 0x50421fc445acda61 in memory
flh f8, 0(x2) # load 0x50421fc445acda61 from memory into f8
fmv.x.h x18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0x09079343d5af4b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x74ccee9be21b7b6c # load x3 with value 0x74ccee9be21b7b6c
sw x3, 0(x2) # store 0x74ccee9be21b7b6c in memory
flh f9, 0(x2) # load 0x74ccee9be21b7b6c from memory into f9
fmv.x.h x24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x3, 0xbe51f8ddb5865a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cc16a328f0de0bb # load x3 with value 0x2cc16a328f0de0bb
sw x3, 0(x2) # store 0x2cc16a328f0de0bb in memory
flh f10, 0(x2) # load 0x2cc16a328f0de0bb from memory into f10
fmv.x.h x3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x26, 0x0b56f92ad813aba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd98ac208b18e79d9 # load x3 with value 0xd98ac208b18e79d9
sw x3, 0(x2) # store 0xd98ac208b18e79d9 in memory
flh f11, 0(x2) # load 0xd98ac208b18e79d9 from memory into f11
fmv.x.h x26, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0x10268cb90ada8d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27ac29551db849e9 # load x3 with value 0x27ac29551db849e9
sw x3, 0(x2) # store 0x27ac29551db849e9 in memory
flh f12, 0(x2) # load 0x27ac29551db849e9 from memory into f12
fmv.x.h x11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x28, 0xd62d6f32d1f9fc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7c5001c0c004d4d # load x3 with value 0x7c5001c0c004d4d
sw x3, 0(x2) # store 0x7c5001c0c004d4d in memory
flh f13, 0(x2) # load 0x7c5001c0c004d4d from memory into f13
fmv.x.h x28, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x5, 0xd93bbc084b9f00b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5874500e3e7d371e # load x3 with value 0x5874500e3e7d371e
sw x3, 0(x2) # store 0x5874500e3e7d371e in memory
flh f14, 0(x2) # load 0x5874500e3e7d371e from memory into f14
fmv.x.h x5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0xd81d1e64595af543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5c7d8db7688af12c # load x3 with value 0x5c7d8db7688af12c
sw x3, 0(x2) # store 0x5c7d8db7688af12c in memory
flh f15, 0(x2) # load 0x5c7d8db7688af12c from memory into f15
fmv.x.h x12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x13, 0x3ab35235e2097646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd560c292afea7792 # load x3 with value 0xd560c292afea7792
sw x3, 0(x2) # store 0xd560c292afea7792 in memory
flh f16, 0(x2) # load 0xd560c292afea7792 from memory into f16
fmv.x.h x13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x2, 0x9ee1d2eb3b42a829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc82bf15882140d50 # load x3 with value 0xc82bf15882140d50
sw x3, 0(x2) # store 0xc82bf15882140d50 in memory
flh f17, 0(x2) # load 0xc82bf15882140d50 from memory into f17
fmv.x.h x2, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0xc44c6dc09d9519cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ac6e0735cfcf5d7 # load x3 with value 0x7ac6e0735cfcf5d7
sw x3, 0(x2) # store 0x7ac6e0735cfcf5d7 in memory
flh f18, 0(x2) # load 0x7ac6e0735cfcf5d7 from memory into f18
fmv.x.h x20, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x8, 0x441ae91dba767ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9c4636f0dc8e63c8 # load x3 with value 0x9c4636f0dc8e63c8
sw x3, 0(x2) # store 0x9c4636f0dc8e63c8 in memory
flh f19, 0(x2) # load 0x9c4636f0dc8e63c8 from memory into f19
fmv.x.h x8, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0x5ecc253a544e4f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x738098febd4ff360 # load x3 with value 0x738098febd4ff360
sw x3, 0(x2) # store 0x738098febd4ff360 in memory
flh f20, 0(x2) # load 0x738098febd4ff360 from memory into f20
fmv.x.h x2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x22, 0x09f0ced2591cc905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfe852364a6354600 # load x3 with value 0xfe852364a6354600
sw x3, 0(x2) # store 0xfe852364a6354600 in memory
flh f21, 0(x2) # load 0xfe852364a6354600 from memory into f21
fmv.x.h x22, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x2, 0xeae94070c770acb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf4d345cd46559f18 # load x3 with value 0xf4d345cd46559f18
sw x3, 0(x2) # store 0xf4d345cd46559f18 in memory
flh f22, 0(x2) # load 0xf4d345cd46559f18 from memory into f22
fmv.x.h x2, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0x271f8e09cf6d9093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x524b3741eba3a7d # load x3 with value 0x524b3741eba3a7d
sw x3, 0(x2) # store 0x524b3741eba3a7d in memory
flh f23, 0(x2) # load 0x524b3741eba3a7d from memory into f23
fmv.x.h x26, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0xdc5c77231f8473ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe4c3ddecf2393d5c # load x3 with value 0xe4c3ddecf2393d5c
sw x3, 0(x2) # store 0xe4c3ddecf2393d5c in memory
flh f24, 0(x2) # load 0xe4c3ddecf2393d5c from memory into f24
fmv.x.h x29, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x27, 0xe96bfb61a56c5da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea0c9920c97b96b8 # load x3 with value 0xea0c9920c97b96b8
sw x3, 0(x2) # store 0xea0c9920c97b96b8 in memory
flh f25, 0(x2) # load 0xea0c9920c97b96b8 from memory into f25
fmv.x.h x27, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x14, 0x9965412441c83062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8164102c41a2a8a2 # load x3 with value 0x8164102c41a2a8a2
sw x3, 0(x2) # store 0x8164102c41a2a8a2 in memory
flh f26, 0(x2) # load 0x8164102c41a2a8a2 from memory into f26
fmv.x.h x14, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0x54b70789e2a20cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x65c90f1a4e18860b # load x3 with value 0x65c90f1a4e18860b
sw x3, 0(x2) # store 0x65c90f1a4e18860b in memory
flh f27, 0(x2) # load 0x65c90f1a4e18860b from memory into f27
fmv.x.h x4, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0xd72b23b2ef848f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2df2604c1a7e71a2 # load x3 with value 0x2df2604c1a7e71a2
sw x3, 0(x2) # store 0x2df2604c1a7e71a2 in memory
flh f28, 0(x2) # load 0x2df2604c1a7e71a2 from memory into f28
fmv.x.h x24, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0x20fd2b6ed6c75250 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb462eed6fab57d # load x3 with value 0xdb462eed6fab57d
sw x3, 0(x2) # store 0xdb462eed6fab57d in memory
flh f29, 0(x2) # load 0xdb462eed6fab57d from memory into f29
fmv.x.h x22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x9, 0x9c321551f4960f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc558e3d2accf75c7 # load x3 with value 0xc558e3d2accf75c7
sw x3, 0(x2) # store 0xc558e3d2accf75c7 in memory
flh f30, 0(x2) # load 0xc558e3d2accf75c7 from memory into f30
fmv.x.h x9, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x27, 0xbbabe160db28a3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x448888ec1fa2c281 # load x3 with value 0x448888ec1fa2c281
sw x3, 0(x2) # store 0x448888ec1fa2c281 in memory
flh f31, 0(x2) # load 0x448888ec1fa2c281 from memory into f31
fmv.x.h x27, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
