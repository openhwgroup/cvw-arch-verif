///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.subw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.996526
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x42196deaf1f8ead4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc31e7300ab12935f # initialize leagalized rd to a random value that should get changed
li x10, 0xdd7df11f42092d5a # initialize rs2
c.subw x8, x10 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf7a47e52f69dfed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x868bef059ffce8f6 # initialize leagalized rd to a random value that should get changed
li x14, 0x4d70c5dee8a6001b # initialize rs2
c.subw x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x628004e716bfe964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc1964d0cec1b032 # initialize leagalized rd to a random value that should get changed
li x10, 0xfe11cc2143610c5a # initialize rs2
c.subw x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x31cd9d41efbf9f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf3dcd08d3663b42f # initialize leagalized rd to a random value that should get changed
li x15, 0x497beb3f8171f5af # initialize rs2
c.subw x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x527f432fda05f586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x727abb177ebd1aac # initialize leagalized rd to a random value that should get changed
li x10, 0x6d35c177b3e741d7 # initialize rs2
c.subw x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc89488e75c0ff3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99d766796ae860cf # initialize leagalized rd to a random value that should get changed
li x14, 0x8c719cec355a7432 # initialize rs2
c.subw x13, x14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1578a38c619715fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2f525488f84852de # initialize leagalized rd to a random value that should get changed
li x13, 0x89ce52ae51dbdbce # initialize rs2
c.subw x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x22abbc27c94f6ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbb8a715a9a71bc3b # initialize leagalized rd to a random value that should get changed
li x8, 0xe033b8d91d3b13cc # initialize rs2
c.subw x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x61999937b5d055ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc93dfa1d245aaf39 # initialize leagalized rd to a random value that should get changed
li x8, 0x4a07da4426d0b1f1 # initialize rs2
c.subw x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x742805c728549990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfa952c081c6a7d3a # initialize leagalized rd to a random value that should get changed
li x9, 0xcfd85bea64ed8f18 # initialize rs2
c.subw x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x2f52c53fe89a78b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbde01d7c4fcffbc4 # initialize leagalized rd to a random value that should get changed
li x10, 0x91717481f2eb5f02 # initialize rs2
c.subw x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0xa1bea4b2502dac01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7407842f16725730 # initialize leagalized rd to a random value that should get changed
li x11, 0x9c1bef530d1635bb # initialize rs2
c.subw x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0xdff9357678b3dbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc58871aecd78941 # initialize leagalized rd to a random value that should get changed
li x12, 0x1c57afc92abe1235 # initialize rs2
c.subw x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x55701566d6f33958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc4a02fb8f9f1619e # initialize leagalized rd to a random value that should get changed
li x13, 0x080699e58cf60c31 # initialize rs2
c.subw x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xace1670eb1e40319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xec520c233ed57afe # initialize leagalized rd to a random value that should get changed
li x14, 0x34580ec58dccf8c2 # initialize rs2
c.subw x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x307493192dc196a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6f85055841514e17 # initialize leagalized rd to a random value that should get changed
li x15, 0x2b182c317a4c0ed1 # initialize rs2
c.subw x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x57e3bc887747b299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000000 # initialize rs2
c.subw x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x825972cb7b6efc9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffffffffff # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xfe5a450a3e343733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffffffffff # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x1, 0x90cd8bf0d1c54bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000040000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffc0000000 # initialize rs2
c.subw x9, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x27, 0x336e57ec0a9b69a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000040000000 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffbfffffff # initialize rs2
c.subw x11, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x2fb2868397deb4bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000003fffffff # initialize leagalized rd to a random value that should get changed
li x13, 0xffffffffc0000000 # initialize rs2
c.subw x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x13, 0x080ad0beaafeb438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000003fffffff # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffc0000001 # initialize rs2
c.subw x13, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x55a4bf0c019bfe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff80000000 # initialize rs2
c.subw x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xd223f8be9aef8b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffff80000001 # initialize rs2
c.subw x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x18, 0xac35f1194cec0ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000055555555 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffaaaaaaab # initialize rs2
c.subw x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x31, 0xc375147036dc52e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000002aaaaaaa # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffd5555555 # initialize rs2
c.subw x15, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x3, 0x892d75a161b0e91c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000031d7437b # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffce28bc84 # initialize rs2
c.subw x11, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x24, 0xadc52ee4ae6f35c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000071d7437b # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffff8e28bc84 # initialize rs2
c.subw x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x7e6ef0d4a8446258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x52527981867f43d3 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.subw x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x063afa7fec553175 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd779ce5038643753 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000001 # initialize rs2
c.subw x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xed0f134555e2e169 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbc5e5c78cbbdf81e # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.subw x8, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x21, 0xef256d26da72ccaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd3599775a60d4bfd # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000000 # initialize rs2
c.subw x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x6311c1793c145930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb875d29129a158ba # initialize leagalized rd to a random value that should get changed
li x13, 0x8000000000000001 # initialize rs2
c.subw x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x8e16ca08fc1702b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed6c362ade6c60f3 # initialize leagalized rd to a random value that should get changed
li x8, 0x7fffffffffffffff # initialize rs2
c.subw x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0x917ff236cb44cac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x495bae6d7c64b682 # initialize leagalized rd to a random value that should get changed
li x13, 0x7ffffffffffffffe # initialize rs2
c.subw x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xd03204d2be9433cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x066a8fd231de1a29 # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffffffffffff # initialize rs2
c.subw x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x6fd8a83d9ee5e1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbd342941a5b4ed53 # initialize leagalized rd to a random value that should get changed
li x14, 0xfffffffffffffffe # initialize rs2
c.subw x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x16, 0x957480ac45a5b74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x558bf88b37473fb0 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc887763ae86f7 # initialize rs2
c.subw x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7e94d15be5391436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfa07c729037b8431 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.subw x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x20, 0x7d05ed8d8c46386b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2b74148607f2a6b6 # initialize leagalized rd to a random value that should get changed
li x11, 0x5555555555555555 # initialize rs2
c.subw x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x6ea3aa240dd02f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb520d463519fdd97 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.subw x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x4e1b7e0fb6a258ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x94d844a1dacdbc3f # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000fffffffe # initialize rs2
c.subw x15, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0xa857daf303601529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc844e141af1b8d6f # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000000 # initialize rs2
c.subw x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x30, 0x082ff222847dfb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe7cec7850bcab80c # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.subw x14, x11 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
