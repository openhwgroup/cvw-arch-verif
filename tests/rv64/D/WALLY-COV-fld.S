///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fld.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.542652
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
li x27, 0x1ae33edf7298cb46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, -312 # sub immediate from rs1 to counter offset
li x15, 0x3b6cbed7704d08f0 # load x3 with value 0x3b6cbed7704d08f0
sd x15, 312(x1) # store 0x3b6cbed7704d08f0 in memory
fld f27, 312(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x498bf4b8d2c980af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, -1346 # sub immediate from rs1 to counter offset
li x8, 0xdbd0484aca9af38a # load x3 with value 0xdbd0484aca9af38a
sd x8, 1346(x2) # store 0xdbd0484aca9af38a in memory
fld f11, 1346(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0x0ab1c52825049864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 913 # sub immediate from rs1 to counter offset
li x1, 0xa86a70ff535e0810 # load x3 with value 0xa86a70ff535e0810
sd x1, -913(x3) # store 0xa86a70ff535e0810 in memory
fld f18, -913(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x18, 0x9ee285e396fc0fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -94 # sub immediate from rs1 to counter offset
li x1, 0x150ba4ffe7f645b3 # load x3 with value 0x150ba4ffe7f645b3
sd x1, 94(x4) # store 0x150ba4ffe7f645b3 in memory
fld f18, 94(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x7, 0x54a70f44f64d50ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 1361 # sub immediate from rs1 to counter offset
li x1, 0xa83fc1ecd79110aa # load x3 with value 0xa83fc1ecd79110aa
sd x1, -1361(x5) # store 0xa83fc1ecd79110aa in memory
fld f7, -1361(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x9, 0xb35315ade8e5c310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -1919 # sub immediate from rs1 to counter offset
li x1, 0xa66881086e59b783 # load x3 with value 0xa66881086e59b783
sd x1, 1919(x6) # store 0xa66881086e59b783 in memory
fld f9, 1919(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x0f1d7a35a2ca685d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -1625 # sub immediate from rs1 to counter offset
li x1, 0xa4b9fb584f99fe94 # load x3 with value 0xa4b9fb584f99fe94
sd x1, 1625(x7) # store 0xa4b9fb584f99fe94 in memory
fld f16, 1625(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0xd73978010fc2a2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -1594 # sub immediate from rs1 to counter offset
li x1, 0xc9160e1857e72957 # load x3 with value 0xc9160e1857e72957
sd x1, 1594(x8) # store 0xc9160e1857e72957 in memory
fld f5, 1594(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x2, 0x7d03912a2fe5784c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 918 # sub immediate from rs1 to counter offset
li x1, 0xc63dfb5608d50cc7 # load x3 with value 0xc63dfb5608d50cc7
sd x1, -918(x9) # store 0xc63dfb5608d50cc7 in memory
fld f2, -918(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x2562bfef17e51803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -1239 # sub immediate from rs1 to counter offset
li x1, 0xc015922856d27873 # load x3 with value 0xc015922856d27873
sd x1, 1239(x10) # store 0xc015922856d27873 in memory
fld f15, 1239(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0x900a7eb32d952c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -806 # sub immediate from rs1 to counter offset
li x1, 0xae1e3d082778f32b # load x3 with value 0xae1e3d082778f32b
sd x1, 806(x11) # store 0xae1e3d082778f32b in memory
fld f26, 806(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x8142b6ed93289719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -95 # sub immediate from rs1 to counter offset
li x1, 0x6f820e0de2dc2601 # load x3 with value 0x6f820e0de2dc2601
sd x1, 95(x12) # store 0x6f820e0de2dc2601 in memory
fld f22, 95(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0xd2ac822c11688b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -792 # sub immediate from rs1 to counter offset
li x1, 0xae39a2a22711200f # load x3 with value 0xae39a2a22711200f
sd x1, 792(x13) # store 0xae39a2a22711200f in memory
fld f19, 792(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x24, 0x316b12124a7a41b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -326 # sub immediate from rs1 to counter offset
li x1, 0x050fb5d7bf628772 # load x3 with value 0x050fb5d7bf628772
sd x1, 326(x14) # store 0x050fb5d7bf628772 in memory
fld f24, 326(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0xba86ed57072b6e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1870 # sub immediate from rs1 to counter offset
li x1, 0x35575a935da893e9 # load x3 with value 0x35575a935da893e9
sd x1, -1870(x15) # store 0x35575a935da893e9 in memory
fld f26, -1870(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x26, 0x90ba40180dd51f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, 254 # sub immediate from rs1 to counter offset
li x1, 0x400cfbf8e22cb9ef # load x3 with value 0x400cfbf8e22cb9ef
sd x1, -254(x16) # store 0x400cfbf8e22cb9ef in memory
fld f26, -254(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0x1db06baba79bb918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, 1218 # sub immediate from rs1 to counter offset
li x1, 0x1e56284010386b76 # load x3 with value 0x1e56284010386b76
sd x1, -1218(x17) # store 0x1e56284010386b76 in memory
fld f1, -1218(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0x452f215339c35064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -460 # sub immediate from rs1 to counter offset
li x1, 0xe1f68042f6f69c91 # load x3 with value 0xe1f68042f6f69c91
sd x1, 460(x18) # store 0xe1f68042f6f69c91 in memory
fld f15, 460(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x6, 0x669fba1c9d2c15aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, -200 # sub immediate from rs1 to counter offset
li x1, 0x01e81af5e4154101 # load x3 with value 0x01e81af5e4154101
sd x1, 200(x19) # store 0x01e81af5e4154101 in memory
fld f6, 200(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x11, 0x552245d4dea2795e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, 1309 # sub immediate from rs1 to counter offset
li x29, 0xde7bc84009864f74 # load x3 with value 0xde7bc84009864f74
sd x29, -1309(x20) # store 0xde7bc84009864f74 in memory
fld f11, -1309(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0xf6f473cbde0c79ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, 648 # sub immediate from rs1 to counter offset
li x1, 0x20eb0f0d70d8d45b # load x3 with value 0x20eb0f0d70d8d45b
sd x1, -648(x21) # store 0x20eb0f0d70d8d45b in memory
fld f4, -648(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0x9a3b5651b57182a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 642 # sub immediate from rs1 to counter offset
li x1, 0x627051a949da5ce3 # load x3 with value 0x627051a949da5ce3
sd x1, -642(x22) # store 0x627051a949da5ce3 in memory
fld f2, -642(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x20, 0x9cbdcfd6b6bd9a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -2047 # sub immediate from rs1 to counter offset
li x1, 0x0246ca262ab89bff # load x3 with value 0x0246ca262ab89bff
sd x1, 2047(x23) # store 0x0246ca262ab89bff in memory
fld f20, 2047(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0x6b5ea89c641059db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, -1239 # sub immediate from rs1 to counter offset
li x1, 0x02d1942020785204 # load x3 with value 0x02d1942020785204
sd x1, 1239(x24) # store 0x02d1942020785204 in memory
fld f9, 1239(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0x5e1850fa7472a65b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -1787 # sub immediate from rs1 to counter offset
li x1, 0xe3b3c42157c53be4 # load x3 with value 0xe3b3c42157c53be4
sd x1, 1787(x25) # store 0xe3b3c42157c53be4 in memory
fld f11, 1787(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x8, 0xf9f4b777bdfdabe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, -317 # sub immediate from rs1 to counter offset
li x1, 0xd7627d889a413074 # load x3 with value 0xd7627d889a413074
sd x1, 317(x26) # store 0xd7627d889a413074 in memory
fld f8, 317(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x4047e0dcae334ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1649 # sub immediate from rs1 to counter offset
li x1, 0x9e99829bd4f5e889 # load x3 with value 0x9e99829bd4f5e889
sd x1, 1649(x27) # store 0x9e99829bd4f5e889 in memory
fld f21, 1649(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x29fac6698acd80a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 534 # sub immediate from rs1 to counter offset
li x1, 0x371d84998fa70f11 # load x3 with value 0x371d84998fa70f11
sd x1, -534(x28) # store 0x371d84998fa70f11 in memory
fld f4, -534(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x8, 0xcdc4ef888161c4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -235 # sub immediate from rs1 to counter offset
li x1, 0xfa8387195fcc504c # load x3 with value 0xfa8387195fcc504c
sd x1, 235(x29) # store 0xfa8387195fcc504c in memory
fld f8, 235(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x0ace1757f47f0e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -1935 # sub immediate from rs1 to counter offset
li x1, 0x8865237a09ae17c6 # load x3 with value 0x8865237a09ae17c6
sd x1, 1935(x30) # store 0x8865237a09ae17c6 in memory
fld f22, 1935(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0xfa7d01ff7481730a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, -1076 # sub immediate from rs1 to counter offset
li x1, 0xce837d8ac710ebd0 # load x3 with value 0xce837d8ac710ebd0
sd x1, 1076(x31) # store 0xce837d8ac710ebd0 in memory
fld f3, 1076(x31) # perform operation

# Testcase cp_imm_zero
li x25, 0x072a7c29e1659551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
li x1, 0xa328a0ce1f7bfe63 # load x3 with value 0xa328a0ce1f7bfe63
sd x1, 0(x11) # store 0xa328a0ce1f7bfe63 in memory
fld f25, 0(x11) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5608684c0bc2e1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1169 # sub immediate from rs1 to counter offset
li x1, 0x186e50290de5deb6 # load x3 with value 0x186e50290de5deb6
sd x1, -1169(x6) # store 0x186e50290de5deb6 in memory
fld f0, -1169(x6) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x58ea872a9c58f095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -676 # sub immediate from rs1 to counter offset
li x12, 0x2b6ac34f0650a07b # load x3 with value 0x2b6ac34f0650a07b
sd x12, 676(x10) # store 0x2b6ac34f0650a07b in memory
fld f1, 676(x10) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb885ed60ea532aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 1004 # sub immediate from rs1 to counter offset
li x1, 0x0b928e8680d44b14 # load x3 with value 0x0b928e8680d44b14
sd x1, -1004(x7) # store 0x0b928e8680d44b14 in memory
fld f2, -1004(x7) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x4e14b2e9306db7db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, 365 # sub immediate from rs1 to counter offset
li x1, 0xe8ddf77eeb1f4cd9 # load x3 with value 0xe8ddf77eeb1f4cd9
sd x1, -365(x23) # store 0xe8ddf77eeb1f4cd9 in memory
fld f3, -365(x23) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x85cd3706df5257c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 1296 # sub immediate from rs1 to counter offset
li x1, 0x386b05be474bd3d7 # load x3 with value 0x386b05be474bd3d7
sd x1, -1296(x22) # store 0x386b05be474bd3d7 in memory
fld f4, -1296(x22) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xeb86098f74b6e237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 935 # sub immediate from rs1 to counter offset
li x1, 0xecc924b110c5ec94 # load x3 with value 0xecc924b110c5ec94
sd x1, -935(x7) # store 0xecc924b110c5ec94 in memory
fld f5, -935(x7) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x8b11ce5809cd6057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -1318 # sub immediate from rs1 to counter offset
li x1, 0xe23997f41442d4c0 # load x3 with value 0xe23997f41442d4c0
sd x1, 1318(x13) # store 0xe23997f41442d4c0 in memory
fld f6, 1318(x13) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xabff7361b0a1fabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, 1303 # sub immediate from rs1 to counter offset
li x1, 0xf5e4943bfa3d6828 # load x3 with value 0xf5e4943bfa3d6828
sd x1, -1303(x27) # store 0xf5e4943bfa3d6828 in memory
fld f7, -1303(x27) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x01a41028c99a1150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -59 # sub immediate from rs1 to counter offset
li x1, 0xcd85967ee26b4a06 # load x3 with value 0xcd85967ee26b4a06
sd x1, 59(x22) # store 0xcd85967ee26b4a06 in memory
fld f8, 59(x22) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x7407a565bbce025b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 502 # sub immediate from rs1 to counter offset
li x1, 0x52d2b1b20508f709 # load x3 with value 0x52d2b1b20508f709
sd x1, -502(x30) # store 0x52d2b1b20508f709 in memory
fld f9, -502(x30) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x8b1ee06081326394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 769 # sub immediate from rs1 to counter offset
li x1, 0x2eea9efabd2f86b1 # load x3 with value 0x2eea9efabd2f86b1
sd x1, -769(x2) # store 0x2eea9efabd2f86b1 in memory
fld f10, -769(x2) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xa89cc25c1ff912a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1412 # sub immediate from rs1 to counter offset
li x1, 0xa31bea0bd9d4d2f0 # load x3 with value 0xa31bea0bd9d4d2f0
sd x1, 1412(x3) # store 0xa31bea0bd9d4d2f0 in memory
fld f11, 1412(x3) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x7eb191d93b5c2276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 933 # sub immediate from rs1 to counter offset
li x1, 0x59f6e450799fb9f2 # load x3 with value 0x59f6e450799fb9f2
sd x1, -933(x6) # store 0x59f6e450799fb9f2 in memory
fld f12, -933(x6) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x3cc0250d6bdd01cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1056 # sub immediate from rs1 to counter offset
li x31, 0x128e7accd05ece6d # load x3 with value 0x128e7accd05ece6d
sd x31, -1056(x1) # store 0x128e7accd05ece6d in memory
fld f13, -1056(x1) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x711a0f6b717d2526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 1849 # sub immediate from rs1 to counter offset
li x1, 0x7a76a07c3a6bca51 # load x3 with value 0x7a76a07c3a6bca51
sd x1, -1849(x3) # store 0x7a76a07c3a6bca51 in memory
fld f14, -1849(x3) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x1f3b3fa7fbc657d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, 570 # sub immediate from rs1 to counter offset
li x1, 0x9b9439c26bcdd550 # load x3 with value 0x9b9439c26bcdd550
sd x1, -570(x25) # store 0x9b9439c26bcdd550 in memory
fld f15, -570(x25) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2d3666994440f495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, 1372 # sub immediate from rs1 to counter offset
li x1, 0x3747c2d2d46b2ae4 # load x3 with value 0x3747c2d2d46b2ae4
sd x1, -1372(x25) # store 0x3747c2d2d46b2ae4 in memory
fld f16, -1372(x25) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xecc9784761ea4217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, -574 # sub immediate from rs1 to counter offset
li x1, 0x1f6b5d8a23d4363d # load x3 with value 0x1f6b5d8a23d4363d
sd x1, 574(x5) # store 0x1f6b5d8a23d4363d in memory
fld f17, 574(x5) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x556f81c02838fd3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -1729 # sub immediate from rs1 to counter offset
li x1, 0x8c9788e1f69ce583 # load x3 with value 0x8c9788e1f69ce583
sd x1, 1729(x11) # store 0x8c9788e1f69ce583 in memory
fld f18, 1729(x11) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x3a3693d5670b6cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1560 # sub immediate from rs1 to counter offset
li x1, 0x46ab1b0ac871ec6b # load x3 with value 0x46ab1b0ac871ec6b
sd x1, -1560(x18) # store 0x46ab1b0ac871ec6b in memory
fld f19, -1560(x18) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xaf8042317147ec26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -300 # sub immediate from rs1 to counter offset
li x1, 0x263f2cf0c0549bf3 # load x3 with value 0x263f2cf0c0549bf3
sd x1, 300(x6) # store 0x263f2cf0c0549bf3 in memory
fld f20, 300(x6) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9fb5b4fddf159d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, -689 # sub immediate from rs1 to counter offset
li x3, 0xb4af787a98321aec # load x3 with value 0xb4af787a98321aec
sd x3, 689(x24) # store 0xb4af787a98321aec in memory
fld f21, 689(x24) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xadcfccb89edf46b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -360 # sub immediate from rs1 to counter offset
li x1, 0x0f74f087c3f6e191 # load x3 with value 0x0f74f087c3f6e191
sd x1, 360(x22) # store 0x0f74f087c3f6e191 in memory
fld f22, 360(x22) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x16d862e11b51fb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 876 # sub immediate from rs1 to counter offset
li x1, 0xe24999285cbd375f # load x3 with value 0xe24999285cbd375f
sd x1, -876(x15) # store 0xe24999285cbd375f in memory
fld f23, -876(x15) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xdf14f96e76fbad8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 1380 # sub immediate from rs1 to counter offset
li x1, 0xe5aa2326492a3a62 # load x3 with value 0xe5aa2326492a3a62
sd x1, -1380(x24) # store 0xe5aa2326492a3a62 in memory
fld f24, -1380(x24) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xf153dc38748c3057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -1420 # sub immediate from rs1 to counter offset
li x1, 0xb561c7d293ed26aa # load x3 with value 0xb561c7d293ed26aa
sd x1, 1420(x12) # store 0xb561c7d293ed26aa in memory
fld f25, 1420(x12) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x18cc2854ab1d012f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -1072 # sub immediate from rs1 to counter offset
li x1, 0xe46a5acb9a894739 # load x3 with value 0xe46a5acb9a894739
sd x1, 1072(x25) # store 0xe46a5acb9a894739 in memory
fld f26, 1072(x25) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x6f40a695dec52ada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -1214 # sub immediate from rs1 to counter offset
li x1, 0x9cad30842753d7d4 # load x3 with value 0x9cad30842753d7d4
sd x1, 1214(x12) # store 0x9cad30842753d7d4 in memory
fld f27, 1214(x12) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x372f379b1d38c2ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1056 # sub immediate from rs1 to counter offset
li x1, 0xffcf386e76564c0e # load x3 with value 0xffcf386e76564c0e
sd x1, -1056(x6) # store 0xffcf386e76564c0e in memory
fld f28, -1056(x6) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x11fc00992bf3f07c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 1769 # sub immediate from rs1 to counter offset
li x1, 0x4899fdd9d5b88f84 # load x3 with value 0x4899fdd9d5b88f84
sd x1, -1769(x12) # store 0x4899fdd9d5b88f84 in memory
fld f29, -1769(x12) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe0036b0a7e60fd66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -474 # sub immediate from rs1 to counter offset
li x1, 0xab7f8e5197c51ce9 # load x3 with value 0xab7f8e5197c51ce9
sd x1, 474(x13) # store 0xab7f8e5197c51ce9 in memory
fld f30, 474(x13) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x8caed6e0dae00d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, -967 # sub immediate from rs1 to counter offset
li x1, 0x5a9560b53198d4cc # load x3 with value 0x5a9560b53198d4cc
sd x1, 967(x5) # store 0x5a9560b53198d4cc in memory
fld f31, 967(x5) # perform operation

# Testcase f_mem_hazard (no dependency)
la x1, scratch
fld f2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
