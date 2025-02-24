///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.not.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.345464
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x422179eabf538cc1)
li x19, 0x6c01deca590b88fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa960358d109dfaae # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_sign (Test source rs1 value = -0x12902ece9e70d7ac)
li x22, 0xf5fbfa3356f4d56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdf0e8787a1d61ba9 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd885622e1a719a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc0108e63b0e02461 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x87882a62194bb3c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1c8b86d8af4defb5 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x715b3663e8238499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0ff4f65a9b76f6e7 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xfd8807ce4d74fa2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x199efcfb9241b118 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x39074e2fca296fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2708d6f1e923a79c # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb2ec839f844f7278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2068607b6e69c4d3 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbd7fb980c2dd293b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4d2387bc50d18d34 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8477fecfd67f0aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x221d019a6c9bf86b # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0xfd45c22e15c3f1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0543adcaeadf0329 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x023fe216a0035ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xb578c406ba7c1105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0xda6c2334633d210b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x11ed2e7ea050f4be # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xe87f3df2b632eb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x70988dfeec941d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x7e64f2066a30f473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7493bcacbd9dc329 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x68ebcc0071743af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x69482d7c5b8af0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0xf674bfa0640e2b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x88de63e433cbdc67 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x8, 0xd68e80c2c1968e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x1, 0x576e2b3da585d322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000000 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x26, 0x6b96d3ecab02b128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x51cd928c700027cd # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x6, 0x667a87111714364a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x28, 0x2c9e8f17a25d441e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000001 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0xf6fde86a4675c458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb78d2cfeda6dd16e # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x3, 0x4a7d7ed118044fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x20, 0xfbbb6d398249f2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x5, 0x27c6607067af8453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7f6b460532a9c039 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x8, 0xc96b80c25210f1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x8, 0xc3bc833c0f1719eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x0a10a64196c9dd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x93201186b4e1ee2f # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x18, 0x2948c511bb753e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x7, 0xd4c66ebf54c6185f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x24, 0x64e30395bc852ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbe63b8cfe6ae2be9 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x7, 0xb7e7433a04d5f92d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x12, 0x72c41a2ffd8b87b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x15, 0x13492b35ef846672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x48eca1dc1720e826 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x17, 0x2dabf543b6011049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x21, 0x02376959eb497a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0631b681c8253463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a248c88d0d16508 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x28, 0x509c15773f9f76c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x91c663628607f7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x23, 0xffa8b1ab71d1fd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x68b45421f8ecc809 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0xb7f8722ea3de05a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x29, 0x2deb116328e7bf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0xedcb6dfd7688ecd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa3d87d915f25c747 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0x052a19fcf92f710a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x17981ca593b6701f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0x7772a338f171458b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x070c38302d627803 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0xe37647b0afb755f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x246ceac271fef4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x4, 0xc293eeeb7b1b18b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2649954fbe35b38a # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x22, 0xbdfdb600a7893e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x30, 0x476f0c9c33abf3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x31, 0xba51bf67ce0cf5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xabef7972f1839de2 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x11, 0x188722f8f16c571e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0xf92969c578c9ca74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x495f28d2347f5e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x44d62d5a6a509156 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xd5d5337f70f4ef32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x561a78027db77c0d # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x4040900d289579b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6799acecc2b4368 # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x0ae712e08aec2ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x894ba66767bf98a5 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x4b5db4c67eedd78b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3bfe9d0d0e9c12ee # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x249c12664e191b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc6ad8f35767b36f5 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x14)
li x20, 0x385edf66b3d85f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd1a370fd5574e2cc # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xb2df22fd88272553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x590e368efc330e2c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x6fe5e7fc8471ffcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x111826fecbb19a6e # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0xc6e45fed01ee291c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x37547b432eafba05 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x9d958be7785d1de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x751a2332b3c2b386 # initialize rd to specific value
c.not x15  # performing not operation on rd and storing it in same register 
c.not x15  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x36a5137b1a757f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2608fbbfcafde85b # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0xec85b15447469956 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x47bd6c28aa355a9c # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x55f6f3cbd22657a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9147943372da686b # initialize rd to specific value
c.not x8  # performing not operation on rd and storing it in same register 
c.not x8  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x98b5084b34dc53b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda449b92fddb2953 # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xdb05c6e8ae09c8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x528d37e70a032c5e # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0x95c8f3bcba14befd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x18ab0700dbbe61c8 # initialize rd to specific value
c.not x11  # performing not operation on rd and storing it in same register 
c.not x11  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0x7404345e1b4d021b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x71a0e844dd5b4d23 # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x08821bf02d722cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9cc6ee3b3e6cde56 # initialize rd to specific value
c.not x13  # performing not operation on rd and storing it in same register 
c.not x13  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0xc4d2048b57c00ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ddcb19eaa30b360 # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0x1d054c09d6db5df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x150835f90a24dd6f # initialize rd to specific value
c.not x10  # performing not operation on rd and storing it in same register 
c.not x10  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x3e942bd96722b1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x690362f4f1ba44d4 # initialize rd to specific value
c.not x9  # performing not operation on rd and storing it in same register 
c.not x9  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0xca2ee8f0eca83d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x53dd7529eefd0c8e # initialize rd to specific value
c.not x14  # performing not operation on rd and storing it in same register 
c.not x14  # reverting to the prev value, help in covering rd_corners 

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x8024a8fbaa6737f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1a1f84a508bf36bf # initialize rd to specific value
c.not x12  # performing not operation on rd and storing it in same register 
c.not x12  # reverting to the prev value, help in covering rd_corners 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
