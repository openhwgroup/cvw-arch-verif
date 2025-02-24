///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fclass.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.497211
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
li x0, 0xfb75c9d6f3099f8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b496da04acb6eb3 # load x3 with value 0x6b496da04acb6eb3
sd x3, 0(x2) # store 0x6b496da04acb6eb3 in memory
fld f9, 0(x2) # load 0x6b496da04acb6eb3 from memory into f9
fclass.d x0, f9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x7de6ff1309adfad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ed98b72072656a5 # load x3 with value 0x0ed98b72072656a5
sd x3, 0(x2) # store 0x0ed98b72072656a5 in memory
fld f7, 0(x2) # load 0x0ed98b72072656a5 from memory into f7
fclass.d x1, f7 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x41ec8fe731e7ac3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf92b9f187a429abb # load x3 with value 0xf92b9f187a429abb
sd x3, 0(x2) # store 0xf92b9f187a429abb in memory
fld f18, 0(x2) # load 0xf92b9f187a429abb from memory into f18
fclass.d x2, f18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x0518c23e2b465e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d50ef8b0d576ba5 # load x3 with value 0x8d50ef8b0d576ba5
sd x3, 0(x2) # store 0x8d50ef8b0d576ba5 in memory
fld f17, 0(x2) # load 0x8d50ef8b0d576ba5 from memory into f17
fclass.d x3, f17 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x01f247c862238011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87129577189b36fd # load x3 with value 0x87129577189b36fd
sd x3, 0(x2) # store 0x87129577189b36fd in memory
fld f26, 0(x2) # load 0x87129577189b36fd from memory into f26
fclass.d x4, f26 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x2ce1a3406afed265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5b78c3a4e0f8554 # load x3 with value 0xf5b78c3a4e0f8554
sd x3, 0(x2) # store 0xf5b78c3a4e0f8554 in memory
fld f1, 0(x2) # load 0xf5b78c3a4e0f8554 from memory into f1
fclass.d x5, f1 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4f5c8965f9c44f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacb4bf251d9fae27 # load x3 with value 0xacb4bf251d9fae27
sd x3, 0(x2) # store 0xacb4bf251d9fae27 in memory
fld f19, 0(x2) # load 0xacb4bf251d9fae27 from memory into f19
fclass.d x6, f19 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x9d99ba8929043ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9aa8e4aa61bcf868 # load x3 with value 0x9aa8e4aa61bcf868
sd x3, 0(x2) # store 0x9aa8e4aa61bcf868 in memory
fld f20, 0(x2) # load 0x9aa8e4aa61bcf868 from memory into f20
fclass.d x7, f20 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x63a43904206e2b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x638a8bdc19ae87ba # load x3 with value 0x638a8bdc19ae87ba
sd x3, 0(x2) # store 0x638a8bdc19ae87ba in memory
fld f9, 0(x2) # load 0x638a8bdc19ae87ba from memory into f9
fclass.d x8, f9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2e2081e01c120730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2c2be54b830c897 # load x3 with value 0xe2c2be54b830c897
sd x3, 0(x2) # store 0xe2c2be54b830c897 in memory
fld f19, 0(x2) # load 0xe2c2be54b830c897 from memory into f19
fclass.d x9, f19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9c7c7874aa9dd5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9576dc63e33b5eb # load x3 with value 0xc9576dc63e33b5eb
sd x3, 0(x2) # store 0xc9576dc63e33b5eb in memory
fld f2, 0(x2) # load 0xc9576dc63e33b5eb from memory into f2
fclass.d x10, f2 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd0de3845776c2c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddb250620b16960a # load x3 with value 0xddb250620b16960a
sd x3, 0(x2) # store 0xddb250620b16960a in memory
fld f5, 0(x2) # load 0xddb250620b16960a from memory into f5
fclass.d x11, f5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5a9acdf7efbf88c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd726503a678cf119 # load x3 with value 0xd726503a678cf119
sd x3, 0(x2) # store 0xd726503a678cf119 in memory
fld f2, 0(x2) # load 0xd726503a678cf119 from memory into f2
fclass.d x12, f2 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x27ccc9e7dc564e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb84a2375bd32300 # load x3 with value 0xbb84a2375bd32300
sd x3, 0(x2) # store 0xbb84a2375bd32300 in memory
fld f15, 0(x2) # load 0xbb84a2375bd32300 from memory into f15
fclass.d x13, f15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3b788fa732869b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd21884accfeb8d3c # load x3 with value 0xd21884accfeb8d3c
sd x3, 0(x2) # store 0xd21884accfeb8d3c in memory
fld f28, 0(x2) # load 0xd21884accfeb8d3c from memory into f28
fclass.d x14, f28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc7765ca5e02bf252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe30f672ccb4f017 # load x3 with value 0xfe30f672ccb4f017
sd x3, 0(x2) # store 0xfe30f672ccb4f017 in memory
fld f12, 0(x2) # load 0xfe30f672ccb4f017 from memory into f12
fclass.d x15, f12 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x86ae55bb50ac0209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9b75fa85cd5d0e9 # load x3 with value 0xa9b75fa85cd5d0e9
sd x3, 0(x2) # store 0xa9b75fa85cd5d0e9 in memory
fld f11, 0(x2) # load 0xa9b75fa85cd5d0e9 from memory into f11
fclass.d x16, f11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xf0dcdd5f22490ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c51417599473ee0 # load x3 with value 0x2c51417599473ee0
sd x3, 0(x2) # store 0x2c51417599473ee0 in memory
fld f29, 0(x2) # load 0x2c51417599473ee0 from memory into f29
fclass.d x17, f29 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2cc0cebe083832ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55cb3e7d251c7b0d # load x3 with value 0x55cb3e7d251c7b0d
sd x3, 0(x2) # store 0x55cb3e7d251c7b0d in memory
fld f3, 0(x2) # load 0x55cb3e7d251c7b0d from memory into f3
fclass.d x18, f3 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x13e4807b3b40eec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ee651b8d32ef9e0 # load x3 with value 0x2ee651b8d32ef9e0
sd x3, 0(x2) # store 0x2ee651b8d32ef9e0 in memory
fld f18, 0(x2) # load 0x2ee651b8d32ef9e0 from memory into f18
fclass.d x19, f18 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x601654ba2adc7fec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd56cc26ff7f614be # load x3 with value 0xd56cc26ff7f614be
sd x3, 0(x2) # store 0xd56cc26ff7f614be in memory
fld f12, 0(x2) # load 0xd56cc26ff7f614be from memory into f12
fclass.d x20, f12 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x16040d9bb430c47f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x360800bae4e6a8dd # load x3 with value 0x360800bae4e6a8dd
sd x3, 0(x2) # store 0x360800bae4e6a8dd in memory
fld f19, 0(x2) # load 0x360800bae4e6a8dd from memory into f19
fclass.d x21, f19 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0c0da8f0c9ca0c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70cc61f1db373beb # load x3 with value 0x70cc61f1db373beb
sd x3, 0(x2) # store 0x70cc61f1db373beb in memory
fld f8, 0(x2) # load 0x70cc61f1db373beb from memory into f8
fclass.d x22, f8 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2637f8578829e21d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8fd2067f9423282 # load x3 with value 0xe8fd2067f9423282
sd x3, 0(x2) # store 0xe8fd2067f9423282 in memory
fld f14, 0(x2) # load 0xe8fd2067f9423282 from memory into f14
fclass.d x23, f14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x54c552226748a7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7f1f1c54c3e9138 # load x3 with value 0xe7f1f1c54c3e9138
sd x3, 0(x2) # store 0xe7f1f1c54c3e9138 in memory
fld f24, 0(x2) # load 0xe7f1f1c54c3e9138 from memory into f24
fclass.d x24, f24 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x2e6249db67dee14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55ecd3067a435c2d # load x3 with value 0x55ecd3067a435c2d
sd x3, 0(x2) # store 0x55ecd3067a435c2d in memory
fld f1, 0(x2) # load 0x55ecd3067a435c2d from memory into f1
fclass.d x25, f1 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x914018c0d50b5e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa922e31ec4206c73 # load x3 with value 0xa922e31ec4206c73
sd x3, 0(x2) # store 0xa922e31ec4206c73 in memory
fld f6, 0(x2) # load 0xa922e31ec4206c73 from memory into f6
fclass.d x26, f6 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x195cdeb8231735ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03220f54760efe51 # load x3 with value 0x03220f54760efe51
sd x3, 0(x2) # store 0x03220f54760efe51 in memory
fld f25, 0(x2) # load 0x03220f54760efe51 from memory into f25
fclass.d x27, f25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x4bef35c806890d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29ee442e4aab118e # load x3 with value 0x29ee442e4aab118e
sd x3, 0(x2) # store 0x29ee442e4aab118e in memory
fld f26, 0(x2) # load 0x29ee442e4aab118e from memory into f26
fclass.d x28, f26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa9c6d087590711e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87586315e2f06cd2 # load x3 with value 0x87586315e2f06cd2
sd x3, 0(x2) # store 0x87586315e2f06cd2 in memory
fld f27, 0(x2) # load 0x87586315e2f06cd2 from memory into f27
fclass.d x29, f27 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x982f086f2dbde817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff8b484a9b5dbcc9 # load x3 with value 0xff8b484a9b5dbcc9
sd x3, 0(x2) # store 0xff8b484a9b5dbcc9 in memory
fld f16, 0(x2) # load 0xff8b484a9b5dbcc9 from memory into f16
fclass.d x30, f16 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9fbea6b90772f755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f534ce51bca0205 # load x3 with value 0x5f534ce51bca0205
sd x3, 0(x2) # store 0x5f534ce51bca0205 in memory
fld f30, 0(x2) # load 0x5f534ce51bca0205 from memory into f30
fclass.d x31, f30 # perform operation

# Testcase cmp_gpr_hazard raw test
fclass.d x16, f8 # perform first operation
fclass.d x7, f16 # perform second operation

# Testcase cmp_gpr_hazard raw test
fclass.d x2, f3 # perform first operation
fclass.d x14, f12 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.d x26, f1 # perform first operation
fclass.d x26, f17 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.d x13, f21 # perform first operation
fclass.d x13, f16 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.d x23, f22 # perform first operation
fclass.d x22, f26 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.d x29, f8 # perform first operation
fclass.d x11, f22 # perform second operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x9, 0x7944fa4380c9fc07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
fclass.d x9, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x5, 0xa2be288457369a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fclass.d x5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x15, 0x84f52f3a24b7e21c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fclass.d x15, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x2, 0xe733c91a5636f7da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fclass.d x2, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x14, 0xb9e70f605b480388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
fclass.d x14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x27, 0xe6873e316ff31c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fclass.d x27, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x1, 0xfcb2e2655995d89c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fclass.d x1, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x17, 0x9ada544c01f7b44d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fclass.d x17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x18, 0x5791d0a52bff95f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fclass.d x18, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x21, 0x0340df76ade9fd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fclass.d x21, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x15, 0x25b65b2fe84f2643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fclass.d x15, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x30, 0x012aa93d0e36fc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fclass.d x30, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x12, 0x1dc0eb1d6d4ce310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fclass.d x12, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x10, 0xe48d5d000f93736b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fclass.d x10, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x28, 0xf44962df9b56cbe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fclass.d x28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x17, 0x623a2900df8dc44a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fclass.d x17, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x17, 0x179bf4d03d55aad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
fclass.d x17, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x30, 0x409602236b57d47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fclass.d x30, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x25, 0x37acc0223b516aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fclass.d x25, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x3, 0xba2d4da8ba478ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fclass.d x3, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x8, 0x6bc7e6039bcd9521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fclass.d x8, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x3, 0xe2f2393868acef8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fclass.d x3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x16, 0xca75760b62247b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fclass.d x16, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x28, 0x38ee9722220c728f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
fclass.d x28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x18, 0x7e8dac9b603fb921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fclass.d x18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x31, 0xda45950b2faa68e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fclass.d x31, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0xcbc80f27c7cc5216 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x802e8db3ca678323 # load x3 with value 0x802e8db3ca678323
sd x3, 0(x2) # store 0x802e8db3ca678323 in memory
fld f0, 0(x2) # load 0x802e8db3ca678323 from memory into f0
fclass.d x29, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x14, 0x47f2e99b9289cd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x343d672dbeebba4b # load x3 with value 0x343d672dbeebba4b
sd x3, 0(x2) # store 0x343d672dbeebba4b in memory
fld f1, 0(x2) # load 0x343d672dbeebba4b from memory into f1
fclass.d x14, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x22, 0xc02995d802e8bfad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbe8f5e38f963488 # load x3 with value 0xcbe8f5e38f963488
sd x3, 0(x2) # store 0xcbe8f5e38f963488 in memory
fld f2, 0(x2) # load 0xcbe8f5e38f963488 from memory into f2
fclass.d x22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x8, 0x5d83b9f01f28c6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4eee0d09894ac70c # load x3 with value 0x4eee0d09894ac70c
sd x3, 0(x2) # store 0x4eee0d09894ac70c in memory
fld f3, 0(x2) # load 0x4eee0d09894ac70c from memory into f3
fclass.d x8, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0xb9c6742661954d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x117e290fcce1fb84 # load x3 with value 0x117e290fcce1fb84
sd x3, 0(x2) # store 0x117e290fcce1fb84 in memory
fld f4, 0(x2) # load 0x117e290fcce1fb84 from memory into f4
fclass.d x2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x18, 0x21098e02eca56b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d8077974039820f # load x3 with value 0x1d8077974039820f
sd x3, 0(x2) # store 0x1d8077974039820f in memory
fld f5, 0(x2) # load 0x1d8077974039820f from memory into f5
fclass.d x18, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x22, 0xdece540099693083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5e262803e7c15b5 # load x3 with value 0xb5e262803e7c15b5
sd x3, 0(x2) # store 0xb5e262803e7c15b5 in memory
fld f6, 0(x2) # load 0xb5e262803e7c15b5 from memory into f6
fclass.d x22, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x6, 0x98b0ecdb2125323e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b14703e5d21b6c4 # load x3 with value 0x4b14703e5d21b6c4
sd x3, 0(x2) # store 0x4b14703e5d21b6c4 in memory
fld f7, 0(x2) # load 0x4b14703e5d21b6c4 from memory into f7
fclass.d x6, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0x5c3f671f2ac2313a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed770503b0cead1f # load x3 with value 0xed770503b0cead1f
sd x3, 0(x2) # store 0xed770503b0cead1f in memory
fld f8, 0(x2) # load 0xed770503b0cead1f from memory into f8
fclass.d x21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x31, 0x73b4e94df385ebc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x271f54b831f78f4f # load x3 with value 0x271f54b831f78f4f
sd x3, 0(x2) # store 0x271f54b831f78f4f in memory
fld f9, 0(x2) # load 0x271f54b831f78f4f from memory into f9
fclass.d x31, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x5, 0xa5874b3328cf9480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x529cc99a4fa38193 # load x3 with value 0x529cc99a4fa38193
sd x3, 0(x2) # store 0x529cc99a4fa38193 in memory
fld f10, 0(x2) # load 0x529cc99a4fa38193 from memory into f10
fclass.d x5, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x18, 0x50dbe6f10877e23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa77a5490e8e044a7 # load x3 with value 0xa77a5490e8e044a7
sd x3, 0(x2) # store 0xa77a5490e8e044a7 in memory
fld f11, 0(x2) # load 0xa77a5490e8e044a7 from memory into f11
fclass.d x18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x27, 0x6da27cd118febf80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ee09d7ea8392867 # load x3 with value 0x8ee09d7ea8392867
sd x3, 0(x2) # store 0x8ee09d7ea8392867 in memory
fld f12, 0(x2) # load 0x8ee09d7ea8392867 from memory into f12
fclass.d x27, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0xa59a0ea3537c1964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93e9bac66bfb9c09 # load x3 with value 0x93e9bac66bfb9c09
sd x3, 0(x2) # store 0x93e9bac66bfb9c09 in memory
fld f13, 0(x2) # load 0x93e9bac66bfb9c09 from memory into f13
fclass.d x23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x15, 0xf7c223071f6f97ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5eb302e8c473539e # load x3 with value 0x5eb302e8c473539e
sd x3, 0(x2) # store 0x5eb302e8c473539e in memory
fld f14, 0(x2) # load 0x5eb302e8c473539e from memory into f14
fclass.d x15, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x6, 0x60ee8498be3f881e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0928436d48405c2 # load x3 with value 0xb0928436d48405c2
sd x3, 0(x2) # store 0xb0928436d48405c2 in memory
fld f15, 0(x2) # load 0xb0928436d48405c2 from memory into f15
fclass.d x6, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x26, 0xeabff96464712508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e1210dc5e224be # load x3 with value 0x67e1210dc5e224be
sd x3, 0(x2) # store 0x67e1210dc5e224be in memory
fld f16, 0(x2) # load 0x67e1210dc5e224be from memory into f16
fclass.d x26, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x7, 0x4b34a8608d221014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb08d53aeea835a1 # load x3 with value 0xdb08d53aeea835a1
sd x3, 0(x2) # store 0xdb08d53aeea835a1 in memory
fld f17, 0(x2) # load 0xdb08d53aeea835a1 from memory into f17
fclass.d x7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0xcd891e444694a65f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d35f14d0eb81f1d # load x3 with value 0x8d35f14d0eb81f1d
sd x3, 0(x2) # store 0x8d35f14d0eb81f1d in memory
fld f18, 0(x2) # load 0x8d35f14d0eb81f1d from memory into f18
fclass.d x27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x23, 0x51938849977171ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x266c1c6561889cff # load x3 with value 0x266c1c6561889cff
sd x3, 0(x2) # store 0x266c1c6561889cff in memory
fld f19, 0(x2) # load 0x266c1c6561889cff from memory into f19
fclass.d x23, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x655808d9f6d329e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13a982f78ca56855 # load x3 with value 0x13a982f78ca56855
sd x3, 0(x2) # store 0x13a982f78ca56855 in memory
fld f20, 0(x2) # load 0x13a982f78ca56855 from memory into f20
fclass.d x12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0x16f1f33403ae13be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaafb463d86e35d3 # load x3 with value 0xeaafb463d86e35d3
sd x3, 0(x2) # store 0xeaafb463d86e35d3 in memory
fld f21, 0(x2) # load 0xeaafb463d86e35d3 from memory into f21
fclass.d x4, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x21, 0xef866a9672853549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3317761f62e7e31e # load x3 with value 0x3317761f62e7e31e
sd x3, 0(x2) # store 0x3317761f62e7e31e in memory
fld f22, 0(x2) # load 0x3317761f62e7e31e from memory into f22
fclass.d x21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x29, 0x66252903eff7d7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77fb49a5b7436ad7 # load x3 with value 0x77fb49a5b7436ad7
sd x3, 0(x2) # store 0x77fb49a5b7436ad7 in memory
fld f23, 0(x2) # load 0x77fb49a5b7436ad7 from memory into f23
fclass.d x29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0x947a0b88f26d6ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4047a7accb82c999 # load x3 with value 0x4047a7accb82c999
sd x3, 0(x2) # store 0x4047a7accb82c999 in memory
fld f24, 0(x2) # load 0x4047a7accb82c999 from memory into f24
fclass.d x27, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x5, 0x3cab206b1c0ab49c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dbb54d2c42d6c74 # load x3 with value 0x7dbb54d2c42d6c74
sd x3, 0(x2) # store 0x7dbb54d2c42d6c74 in memory
fld f25, 0(x2) # load 0x7dbb54d2c42d6c74 from memory into f25
fclass.d x5, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x30, 0xad5e2c96275108d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6536c6a1d8a999a8 # load x3 with value 0x6536c6a1d8a999a8
sd x3, 0(x2) # store 0x6536c6a1d8a999a8 in memory
fld f26, 0(x2) # load 0x6536c6a1d8a999a8 from memory into f26
fclass.d x30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0xcdbf8084dc4b127c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca372efb4f416012 # load x3 with value 0xca372efb4f416012
sd x3, 0(x2) # store 0xca372efb4f416012 in memory
fld f27, 0(x2) # load 0xca372efb4f416012 from memory into f27
fclass.d x16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x25, 0x5c405c7c5677fc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69edd6ba446b618b # load x3 with value 0x69edd6ba446b618b
sd x3, 0(x2) # store 0x69edd6ba446b618b in memory
fld f28, 0(x2) # load 0x69edd6ba446b618b from memory into f28
fclass.d x25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0x1936aa4970041889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4ebd4ac51dc7dab # load x3 with value 0xd4ebd4ac51dc7dab
sd x3, 0(x2) # store 0xd4ebd4ac51dc7dab in memory
fld f29, 0(x2) # load 0xd4ebd4ac51dc7dab from memory into f29
fclass.d x12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0xf07cedb411e9c3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77e74f50e4373051 # load x3 with value 0x77e74f50e4373051
sd x3, 0(x2) # store 0x77e74f50e4373051 in memory
fld f30, 0(x2) # load 0x77e74f50e4373051 from memory into f30
fclass.d x14, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x30, 0x9bfd7f3fa93238aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e258bd44ddcbea3 # load x3 with value 0x2e258bd44ddcbea3
sd x3, 0(x2) # store 0x2e258bd44ddcbea3 in memory
fld f31, 0(x2) # load 0x2e258bd44ddcbea3 from memory into f31
fclass.d x30, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
