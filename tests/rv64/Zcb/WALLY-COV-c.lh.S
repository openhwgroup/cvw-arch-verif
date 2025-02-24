///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.lh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.343852
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3423a900bb9b0395 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6d283c992be83246 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x8) # store value to put something in memory
c.lh x8, 0(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7d4e5fc59da89418 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb0f1f37061ad3946 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8ee560a1e91d0e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd8c83deec642198e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x10) # store value to put something in memory
c.lh x10, 2(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7a5e236a499b63a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdbabd4fe4f07cf29 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x11) # store value to put something in memory
c.lh x11, 0(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4b80a1f3529a0541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2335641f5a4b93eb # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x63397362727a7cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x08cf5f6327bba8a4 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x13) # store value to put something in memory
c.lh x13, 2(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x257813f29b23fe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfcff41746973472e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x14) # store value to put something in memory
c.lh x14, 0(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb3aebd6492198b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x22d1359760698681 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4ccc65b78b8bd745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x65174b3200ca1ea4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x8) # store value to put something in memory
c.lh x8, 2(x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x79da76cbfcea72f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfc345bb45e5fac57 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc5ac3affb8755fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x423ec4de55e789e0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x10, 0(x12) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96e3383ccd97ba44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xad7a533e11e5ebce # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7e78df11c6e8598c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xeb5aec513ff50c6f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x13) # store value to put something in memory
c.lh x12, 0(x13) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f4b7830bb3ba3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbcc1dbee454616cb # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x15) # store value to put something in memory
c.lh x13, 2(x15) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xae7c4ee5df13cfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb7851c7f9235a4c7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lh x14, 2(x10) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9c9795d108a89077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xed569c3a0fc25901 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lh x15, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xe6f372e98feb8b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa28ca58b09f0aa7b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x89493e1ddcf13866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x10, 0(x12) # store value to put something in memory
c.lh x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xe6fe13dceccd86c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x9) # store value to put something in memory
c.lh x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x050639b93a237c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc645b8b03a6668b3 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x11, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x82a2ed0df77cbd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x9, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xd44c7017a79316a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x9) # store value to put something in memory
c.lh x13, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x4baa10fdb84a8139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8aa72284c24eeb6a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xea947a5d6a74c7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x8, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x93a910375a1abff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x9, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x22, 0x16f2b7261b76a45d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda306d054b6d2e95 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x14, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0xaf216375765c0c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000008000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x16, 0x1ba60302d728c10b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x15) # store value to put something in memory
c.lh x8, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x26, 0xa85ba37bdc729629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6adc078b493e361a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x11) # store value to put something in memory
c.lh x10, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x30, 0x2e8c69ccc064fa24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000008001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x10, 2(x12) # store value to put something in memory
c.lh x14, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x2, 0x8d55059a5f1f1868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000008001 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x11) # store value to put something in memory
c.lh x10, 2(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x4, 0x3b1c6c9c833baedc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfd23cc8fc6c75d29 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x12, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x3, 0x296d32826a12fd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007fff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x15) # store value to put something in memory
c.lh x11, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0x9fc95a6ed51d2ade # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x8, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x22, 0x4c7a3439d88b5fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf058660ec1dee828 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x14, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x19, 0x037034cb2ba3ae33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007ffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x15) # store value to put something in memory
c.lh x11, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x12, 0xfab5217271b3a094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000007ffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x28, 0x8c92029c73f99dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf3901ebe1bef033c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x13) # store value to put something in memory
c.lh x12, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0xa5f5ca880eb159ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x15) # store value to put something in memory
c.lh x8, 2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x20, 0x352a3cd791de8e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lh x12, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0x9fd7396933ad47d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x17c05fee4ab35be4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x9, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x4, 0x8c712a427ecf5233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x10) # store value to put something in memory
c.lh x12, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0x273f4fe0a8a58706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000fffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x13) # store value to put something in memory
c.lh x9, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x82bb6b57b5a484fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x95629a246676f70f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x14) # store value to put something in memory
c.lh x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0x555dc59533e18cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005555 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
c.sh x12, 2(x13) # store value to put something in memory
c.lh x10, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x15, 0xc5d7cbedfb30f6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x11, 2(x8) # store value to put something in memory
c.lh x15, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x29, 0xa34b4e246c9e8faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x540e74be7c4ce8c2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x11, 0x581dad9507774c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000aaaa # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0xa4d642d8d601ad86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000aaaa # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x13, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x25, 0xb73c301fb419df99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2f07f8b17160db28 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x12) # store value to put something in memory
c.lh x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x25, 0x1a0e18915ae64f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005bbc # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x9) # store value to put something in memory
c.lh x9, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x12, 0x0f88bed9f59f710f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000005bbc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x12) # store value to put something in memory
c.lh x12, 2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x17, 0x23573f731e223557 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x930ec8d3938ee87c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sh x8, 0(x10) # store value to put something in memory
c.lh x9, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x28, 0xd717447c0e3c4b8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000dbbc # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x13, 0(x15) # store value to put something in memory
c.lh x12, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x462df81245508f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000000000dbbc # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x8, 2(x10) # store value to put something in memory
c.lh x11, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xd4dd35732aed9fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8c1cb84470f5c7e0 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x8) # store value to put something in memory
c.lh x11, 2(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0xfdfc3146bec3395c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x78e5d465088a3a09 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
c.sh x14, 2(x9) # store value to put something in memory
c.lh x14, 2(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x30f7bdc525b3cc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xecbd0a7aa64bafea # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2 # sub immediate from rs1 to counter offset
c.sh x15, 2(x10) # store value to put something in memory
c.lh x10, 2(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xff40715ee49880dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x05f2b599006d9a19 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2 # sub immediate from rs1 to counter offset
c.sh x9, 2(x11) # store value to put something in memory
c.lh x13, 2(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x41c0c23e7ed5656d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x351689991a280af9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sh x9, 0(x12) # store value to put something in memory
c.lh x13, 0(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xec327dd41bfa069e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe028a9a055169b0f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sh x11, 0(x13) # store value to put something in memory
c.lh x9, 0(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x5d5c3a58be6919af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdf1a54cfdb7a67e5 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sh x15, 0(x14) # store value to put something in memory
c.lh x13, 0(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0xf22710be29b6fad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x30e31df54e9a8803 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sh x14, 0(x15) # store value to put something in memory
c.lh x15, 0(x15) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
