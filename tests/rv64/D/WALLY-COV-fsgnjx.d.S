///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsgnjx.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.779059
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
li x29, 0x9919ce76f37bee6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
li x3, 0x20aaa4e1f7229808 # load x3 with value 0x20aaa4e1f7229808
sd x3, 0(x2) # store 0x20aaa4e1f7229808 in memory
fld f11, 0(x2) # load 0x20aaa4e1f7229808 from memory into f11
fsgnjx.d f29, f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x26, 0x0483303712aa8eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0x1ea4d911091f3d6b # load x3 with value 0x1ea4d911091f3d6b
sd x3, 0(x2) # store 0x1ea4d911091f3d6b in memory
fld f22, 0(x2) # load 0x1ea4d911091f3d6b from memory into f22
fsgnjx.d f26, f13, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x10, 0xefca160d7611090e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0xba4ec34f8e1f9046 # load x3 with value 0xba4ec34f8e1f9046
sd x3, 0(x2) # store 0xba4ec34f8e1f9046 in memory
fld f20, 0(x2) # load 0xba4ec34f8e1f9046 from memory into f20
fsgnjx.d f10, f30, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x13, 0x5ba2215ad3a93775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x7ebb61d35cf454f5 # load x3 with value 0x7ebb61d35cf454f5
sd x3, 0(x2) # store 0x7ebb61d35cf454f5 in memory
fld f23, 0(x2) # load 0x7ebb61d35cf454f5 from memory into f23
fsgnjx.d f13, f6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x16, 0xc9e77e7ddb39e2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x271f032eea5986d9 # load x3 with value 0x271f032eea5986d9
sd x3, 0(x2) # store 0x271f032eea5986d9 in memory
fld f15, 0(x2) # load 0x271f032eea5986d9 from memory into f15
fsgnjx.d f16, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x8, 0xfb45b1f1512f35da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
li x3, 0x9c1133dc666cb023 # load x3 with value 0x9c1133dc666cb023
sd x3, 0(x2) # store 0x9c1133dc666cb023 in memory
fld f6, 0(x2) # load 0x9c1133dc666cb023 from memory into f6
fsgnjx.d f8, f2, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x9, 0xfe5beda1cce5cb74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x0ec088170a86e683 # load x3 with value 0x0ec088170a86e683
sd x3, 0(x2) # store 0x0ec088170a86e683 in memory
fld f27, 0(x2) # load 0x0ec088170a86e683 from memory into f27
fsgnjx.d f9, f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x12, 0x3c94cfc44b58f392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x2dc9229c82e19c4a # load x3 with value 0x2dc9229c82e19c4a
sd x3, 0(x2) # store 0x2dc9229c82e19c4a in memory
fld f4, 0(x2) # load 0x2dc9229c82e19c4a from memory into f4
fsgnjx.d f12, f31, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x2, 0xf11b55bc118e6d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x8730cf106e4af6ba # load x3 with value 0x8730cf106e4af6ba
sd x3, 0(x2) # store 0x8730cf106e4af6ba in memory
fld f24, 0(x2) # load 0x8730cf106e4af6ba from memory into f24
fsgnjx.d f2, f3, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x3, 0xf287d414c5e90c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0x0fcc561350307111 # load x3 with value 0x0fcc561350307111
sd x3, 0(x2) # store 0x0fcc561350307111 in memory
fld f19, 0(x2) # load 0x0fcc561350307111 from memory into f19
fsgnjx.d f3, f13, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x23, 0x2c20cd26c169170d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0xa3bc430010096374 # load x3 with value 0xa3bc430010096374
sd x3, 0(x2) # store 0xa3bc430010096374 in memory
fld f15, 0(x2) # load 0xa3bc430010096374 from memory into f15
fsgnjx.d f23, f25, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x1, 0xc6a271365cd03c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0x7474731ba6670b0b # load x3 with value 0x7474731ba6670b0b
sd x3, 0(x2) # store 0x7474731ba6670b0b in memory
fld f8, 0(x2) # load 0x7474731ba6670b0b from memory into f8
fsgnjx.d f1, f2, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x12, 0x668a5399e6b03050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x5220abdf6dec69cb # load x3 with value 0x5220abdf6dec69cb
sd x3, 0(x2) # store 0x5220abdf6dec69cb in memory
fld f26, 0(x2) # load 0x5220abdf6dec69cb from memory into f26
fsgnjx.d f12, f11, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x16, 0xca57709fabab85ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x3e0c59a162647e0f # load x3 with value 0x3e0c59a162647e0f
sd x3, 0(x2) # store 0x3e0c59a162647e0f in memory
fld f23, 0(x2) # load 0x3e0c59a162647e0f from memory into f23
fsgnjx.d f16, f22, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x22, 0x75a9cd65ebe4e05d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
li x3, 0x45c1e523c073ee06 # load x3 with value 0x45c1e523c073ee06
sd x3, 0(x2) # store 0x45c1e523c073ee06 in memory
fld f30, 0(x2) # load 0x45c1e523c073ee06 from memory into f30
fsgnjx.d f22, f15, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x2, 0xd45d4a68a37c676b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0xe7bdf72d48cea01a # load x3 with value 0xe7bdf72d48cea01a
sd x3, 0(x2) # store 0xe7bdf72d48cea01a in memory
fld f17, 0(x2) # load 0xe7bdf72d48cea01a from memory into f17
fsgnjx.d f2, f21, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x25, 0xd395a22a871dce69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
li x3, 0xeffe755205663d24 # load x3 with value 0xeffe755205663d24
sd x3, 0(x2) # store 0xeffe755205663d24 in memory
fld f17, 0(x2) # load 0xeffe755205663d24 from memory into f17
fsgnjx.d f25, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x19, 0x5bc7a72102813bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0x0c2dc87a19321039 # load x3 with value 0x0c2dc87a19321039
sd x3, 0(x2) # store 0x0c2dc87a19321039 in memory
fld f11, 0(x2) # load 0x0c2dc87a19321039 from memory into f11
fsgnjx.d f19, f23, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x26, 0x4247de94bae1e161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
li x3, 0xdadb104b6880ffb3 # load x3 with value 0xdadb104b6880ffb3
sd x3, 0(x2) # store 0xdadb104b6880ffb3 in memory
fld f3, 0(x2) # load 0xdadb104b6880ffb3 from memory into f3
fsgnjx.d f26, f21, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x28, 0x55b494e9851f8fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
li x3, 0xdeb42ea0780df04f # load x3 with value 0xdeb42ea0780df04f
sd x3, 0(x2) # store 0xdeb42ea0780df04f in memory
fld f16, 0(x2) # load 0xdeb42ea0780df04f from memory into f16
fsgnjx.d f28, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x8, 0x4f5235f42023f0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x5cc5eab3b91c3d9c # load x3 with value 0x5cc5eab3b91c3d9c
sd x3, 0(x2) # store 0x5cc5eab3b91c3d9c in memory
fld f21, 0(x2) # load 0x5cc5eab3b91c3d9c from memory into f21
fsgnjx.d f8, f17, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x29, 0x51464bd22218fd18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
li x3, 0x3885d46466a3e5cd # load x3 with value 0x3885d46466a3e5cd
sd x3, 0(x2) # store 0x3885d46466a3e5cd in memory
fld f11, 0(x2) # load 0x3885d46466a3e5cd from memory into f11
fsgnjx.d f29, f7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x29, 0x1324bf9f27d21534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0xad9f8e34bf6f164b # load x3 with value 0xad9f8e34bf6f164b
sd x3, 0(x2) # store 0xad9f8e34bf6f164b in memory
fld f14, 0(x2) # load 0xad9f8e34bf6f164b from memory into f14
fsgnjx.d f29, f16, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x1, 0x5d8cfb9995f47bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0xd76bfb5b670754c3 # load x3 with value 0xd76bfb5b670754c3
sd x3, 0(x2) # store 0xd76bfb5b670754c3 in memory
fld f30, 0(x2) # load 0xd76bfb5b670754c3 from memory into f30
fsgnjx.d f1, f4, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x22, 0x0c22400439cabea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
li x3, 0xb77e9e5580d641ea # load x3 with value 0xb77e9e5580d641ea
sd x3, 0(x2) # store 0xb77e9e5580d641ea in memory
fld f18, 0(x2) # load 0xb77e9e5580d641ea from memory into f18
fsgnjx.d f22, f26, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x31, 0xdaf47c8791f77fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0x5b3abb752eb5a0db # load x3 with value 0x5b3abb752eb5a0db
sd x3, 0(x2) # store 0x5b3abb752eb5a0db in memory
fld f2, 0(x2) # load 0x5b3abb752eb5a0db from memory into f2
fsgnjx.d f31, f5, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x19, 0x4b74810198138769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44252224fc0d72cf # load x3 with value 0x44252224fc0d72cf
sd x3, 0(x2) # store 0x44252224fc0d72cf in memory
fld f20, 0(x2) # load 0x44252224fc0d72cf from memory into f20
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fsgnjx.d f19, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x9, 0x30b6a039954a6a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd6b1eb9820452cf # load x3 with value 0xdd6b1eb9820452cf
sd x3, 0(x2) # store 0xdd6b1eb9820452cf in memory
fld f18, 0(x2) # load 0xdd6b1eb9820452cf from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fsgnjx.d f9, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x8, 0xe79f92b2a8431795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x047f4effdae7f595 # load x3 with value 0x047f4effdae7f595
sd x3, 0(x2) # store 0x047f4effdae7f595 in memory
fld f29, 0(x2) # load 0x047f4effdae7f595 from memory into f29
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fsgnjx.d f8, f29, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x8, 0x2be2c4f4d1fdbd80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52fcce468696cf47 # load x3 with value 0x52fcce468696cf47
sd x3, 0(x2) # store 0x52fcce468696cf47 in memory
fld f15, 0(x2) # load 0x52fcce468696cf47 from memory into f15
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fsgnjx.d f8, f15, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x20, 0x764a7438c9ac99b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2eb41f7167dab2a # load x3 with value 0xf2eb41f7167dab2a
sd x3, 0(x2) # store 0xf2eb41f7167dab2a in memory
fld f27, 0(x2) # load 0xf2eb41f7167dab2a from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fsgnjx.d f20, f27, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x23, 0x6b94192544387a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f50648f56d8252c # load x3 with value 0x2f50648f56d8252c
sd x3, 0(x2) # store 0x2f50648f56d8252c in memory
fld f21, 0(x2) # load 0x2f50648f56d8252c from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fsgnjx.d f23, f21, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x24, 0x13b7fc204220aacb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65be7179625e207a # load x3 with value 0x65be7179625e207a
sd x3, 0(x2) # store 0x65be7179625e207a in memory
fld f30, 0(x2) # load 0x65be7179625e207a from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fsgnjx.d f24, f30, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x5, 0x9ddd007272ffd1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc63a7f0d148ebba3 # load x3 with value 0xc63a7f0d148ebba3
sd x3, 0(x2) # store 0xc63a7f0d148ebba3 in memory
fld f12, 0(x2) # load 0xc63a7f0d148ebba3 from memory into f12
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fsgnjx.d f5, f12, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x11, 0x031c38c85dacb985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae7a5dcc8346b481 # load x3 with value 0xae7a5dcc8346b481
sd x3, 0(x2) # store 0xae7a5dcc8346b481 in memory
fld f23, 0(x2) # load 0xae7a5dcc8346b481 from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
fsgnjx.d f11, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x24, 0x37bb973452749ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ceb3031b53887a6 # load x3 with value 0x2ceb3031b53887a6
sd x3, 0(x2) # store 0x2ceb3031b53887a6 in memory
fld f14, 0(x2) # load 0x2ceb3031b53887a6 from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
fsgnjx.d f24, f14, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x16, 0xe5d427a83b40d119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22ab5a99cef1495c # load x3 with value 0x22ab5a99cef1495c
sd x3, 0(x2) # store 0x22ab5a99cef1495c in memory
fld f2, 0(x2) # load 0x22ab5a99cef1495c from memory into f2
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fsgnjx.d f16, f2, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x9, 0xa3cd8637a9e3981c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed2a232003b0f58a # load x3 with value 0xed2a232003b0f58a
sd x3, 0(x2) # store 0xed2a232003b0f58a in memory
fld f27, 0(x2) # load 0xed2a232003b0f58a from memory into f27
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fsgnjx.d f9, f27, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x18, 0x8b961233184bd601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e6ce5931b2b586d # load x3 with value 0x8e6ce5931b2b586d
sd x3, 0(x2) # store 0x8e6ce5931b2b586d in memory
fld f28, 0(x2) # load 0x8e6ce5931b2b586d from memory into f28
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fsgnjx.d f18, f28, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x8, 0xcf108cb2e936e3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6c5c6d514bacdf8 # load x3 with value 0xd6c5c6d514bacdf8
sd x3, 0(x2) # store 0xd6c5c6d514bacdf8 in memory
fld f29, 0(x2) # load 0xd6c5c6d514bacdf8 from memory into f29
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fsgnjx.d f8, f29, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x29, 0xd08c7dcb93a76baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66cd0224a897aa3a # load x3 with value 0x66cd0224a897aa3a
sd x3, 0(x2) # store 0x66cd0224a897aa3a in memory
fld f10, 0(x2) # load 0x66cd0224a897aa3a from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fsgnjx.d f29, f10, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x12, 0x5f56b545c58c0b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57fba8693c5a2873 # load x3 with value 0x57fba8693c5a2873
sd x3, 0(x2) # store 0x57fba8693c5a2873 in memory
fld f23, 0(x2) # load 0x57fba8693c5a2873 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
fsgnjx.d f12, f23, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x12, 0x4479dd015b869369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86676a8a5fa59aee # load x3 with value 0x86676a8a5fa59aee
sd x3, 0(x2) # store 0x86676a8a5fa59aee in memory
fld f18, 0(x2) # load 0x86676a8a5fa59aee from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fsgnjx.d f12, f18, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x31, 0x544dfd079f979047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e1786f96ac5f598 # load x3 with value 0x7e1786f96ac5f598
sd x3, 0(x2) # store 0x7e1786f96ac5f598 in memory
fld f22, 0(x2) # load 0x7e1786f96ac5f598 from memory into f22
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fsgnjx.d f31, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x27, 0x8ab06680fbda73fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xded9eb5ca539eb9e # load x3 with value 0xded9eb5ca539eb9e
sd x3, 0(x2) # store 0xded9eb5ca539eb9e in memory
fld f23, 0(x2) # load 0xded9eb5ca539eb9e from memory into f23
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fsgnjx.d f27, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x5, 0x27b044165db542f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97ebed9d6ef91f70 # load x3 with value 0x97ebed9d6ef91f70
sd x3, 0(x2) # store 0x97ebed9d6ef91f70 in memory
fld f21, 0(x2) # load 0x97ebed9d6ef91f70 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fsgnjx.d f5, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x2, 0x6d16dccb6fa4e59a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7af75f307339933 # load x3 with value 0xe7af75f307339933
sd x3, 0(x2) # store 0xe7af75f307339933 in memory
fld f30, 0(x2) # load 0xe7af75f307339933 from memory into f30
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fsgnjx.d f2, f30, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x1, 0x73979b02651ecdc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10135dda495bdaa0 # load x3 with value 0x10135dda495bdaa0
sd x3, 0(x2) # store 0x10135dda495bdaa0 in memory
fld f5, 0(x2) # load 0x10135dda495bdaa0 from memory into f5
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fsgnjx.d f1, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x2, 0xa308bce6888219e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1507689c3430510f # load x3 with value 0x1507689c3430510f
sd x3, 0(x2) # store 0x1507689c3430510f in memory
fld f13, 0(x2) # load 0x1507689c3430510f from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fsgnjx.d f2, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x23, 0xf3336ae9be033bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d7c9b633964a807 # load x3 with value 0x0d7c9b633964a807
sd x3, 0(x2) # store 0x0d7c9b633964a807 in memory
fld f12, 0(x2) # load 0x0d7c9b633964a807 from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fsgnjx.d f23, f12, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x1, 0x3766b08b47d28a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22fffe72d665b5e9 # load x3 with value 0x22fffe72d665b5e9
sd x3, 0(x2) # store 0x22fffe72d665b5e9 in memory
fld f25, 0(x2) # load 0x22fffe72d665b5e9 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fsgnjx.d f1, f25, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x21, 0x7f219b73d9f11062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd95cbd7e1f2cb343 # load x3 with value 0xd95cbd7e1f2cb343
sd x3, 0(x2) # store 0xd95cbd7e1f2cb343 in memory
fld f17, 0(x2) # load 0xd95cbd7e1f2cb343 from memory into f17
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fsgnjx.d f21, f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5830da122384f845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x516b6f6a1fdb3026 # load x3 with value 0x516b6f6a1fdb3026
sd x3, 0(x2) # store 0x516b6f6a1fdb3026 in memory
fld f6, 0(x2) # load 0x516b6f6a1fdb3026 from memory into f6
li x3, 0x5fb074fd64ae0d83 # load x3 with value 0x5fb074fd64ae0d83
sd x3, 0(x2) # store 0x5fb074fd64ae0d83 in memory
fld f15, 0(x2) # load 0x5fb074fd64ae0d83 from memory into f15
fsgnjx.d f0, f6, f15 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x63cc29556ea3412b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d3614eae5f71e68 # load x3 with value 0x7d3614eae5f71e68
sd x3, 0(x2) # store 0x7d3614eae5f71e68 in memory
fld f4, 0(x2) # load 0x7d3614eae5f71e68 from memory into f4
li x3, 0x08655165aa9ee896 # load x3 with value 0x08655165aa9ee896
sd x3, 0(x2) # store 0x08655165aa9ee896 in memory
fld f29, 0(x2) # load 0x08655165aa9ee896 from memory into f29
fsgnjx.d f1, f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb28cf75f7053c3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8e215778d7d9956 # load x3 with value 0xf8e215778d7d9956
sd x3, 0(x2) # store 0xf8e215778d7d9956 in memory
fld f21, 0(x2) # load 0xf8e215778d7d9956 from memory into f21
li x3, 0x49b57cbd26d5ddb3 # load x3 with value 0x49b57cbd26d5ddb3
sd x3, 0(x2) # store 0x49b57cbd26d5ddb3 in memory
fld f22, 0(x2) # load 0x49b57cbd26d5ddb3 from memory into f22
fsgnjx.d f2, f21, f22 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1a1800a5e3087c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x173b5dc6d1a6b4db # load x3 with value 0x173b5dc6d1a6b4db
sd x3, 0(x2) # store 0x173b5dc6d1a6b4db in memory
fld f5, 0(x2) # load 0x173b5dc6d1a6b4db from memory into f5
li x3, 0x8732120a02deb15b # load x3 with value 0x8732120a02deb15b
sd x3, 0(x2) # store 0x8732120a02deb15b in memory
fld f4, 0(x2) # load 0x8732120a02deb15b from memory into f4
fsgnjx.d f3, f5, f4 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2c25ecdba66b3e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a49dae362ab7484 # load x3 with value 0x0a49dae362ab7484
sd x3, 0(x2) # store 0x0a49dae362ab7484 in memory
fld f25, 0(x2) # load 0x0a49dae362ab7484 from memory into f25
li x3, 0x335b2e02292e22aa # load x3 with value 0x335b2e02292e22aa
sd x3, 0(x2) # store 0x335b2e02292e22aa in memory
fld f9, 0(x2) # load 0x335b2e02292e22aa from memory into f9
fsgnjx.d f4, f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa8e20ea13366da23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae0d07de9ce8149b # load x3 with value 0xae0d07de9ce8149b
sd x3, 0(x2) # store 0xae0d07de9ce8149b in memory
fld f17, 0(x2) # load 0xae0d07de9ce8149b from memory into f17
li x3, 0xcc4b19b75b06f9da # load x3 with value 0xcc4b19b75b06f9da
sd x3, 0(x2) # store 0xcc4b19b75b06f9da in memory
fld f26, 0(x2) # load 0xcc4b19b75b06f9da from memory into f26
fsgnjx.d f5, f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x594570e694826d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57f41f8f0ea67590 # load x3 with value 0x57f41f8f0ea67590
sd x3, 0(x2) # store 0x57f41f8f0ea67590 in memory
fld f14, 0(x2) # load 0x57f41f8f0ea67590 from memory into f14
li x3, 0x27b2bd232a171ea7 # load x3 with value 0x27b2bd232a171ea7
sd x3, 0(x2) # store 0x27b2bd232a171ea7 in memory
fld f6, 0(x2) # load 0x27b2bd232a171ea7 from memory into f6
fsgnjx.d f6, f14, f6 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2a725a417948f262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79f1a3dab50424a2 # load x3 with value 0x79f1a3dab50424a2
sd x3, 0(x2) # store 0x79f1a3dab50424a2 in memory
fld f21, 0(x2) # load 0x79f1a3dab50424a2 from memory into f21
li x3, 0xb18eac667d5d5a6c # load x3 with value 0xb18eac667d5d5a6c
sd x3, 0(x2) # store 0xb18eac667d5d5a6c in memory
fld f9, 0(x2) # load 0xb18eac667d5d5a6c from memory into f9
fsgnjx.d f7, f21, f9 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xcfa7acaf39432ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0713838399485837 # load x3 with value 0x0713838399485837
sd x3, 0(x2) # store 0x0713838399485837 in memory
fld f6, 0(x2) # load 0x0713838399485837 from memory into f6
li x3, 0xb8c662ff4408634f # load x3 with value 0xb8c662ff4408634f
sd x3, 0(x2) # store 0xb8c662ff4408634f in memory
fld f18, 0(x2) # load 0xb8c662ff4408634f from memory into f18
fsgnjx.d f8, f6, f18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xd657a971bbf10b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9763c7309884107 # load x3 with value 0xc9763c7309884107
sd x3, 0(x2) # store 0xc9763c7309884107 in memory
fld f21, 0(x2) # load 0xc9763c7309884107 from memory into f21
li x3, 0x49a90b5aa14061d9 # load x3 with value 0x49a90b5aa14061d9
sd x3, 0(x2) # store 0x49a90b5aa14061d9 in memory
fld f2, 0(x2) # load 0x49a90b5aa14061d9 from memory into f2
fsgnjx.d f9, f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x51c42e5af0e27b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8abd5f4f262c1c30 # load x3 with value 0x8abd5f4f262c1c30
sd x3, 0(x2) # store 0x8abd5f4f262c1c30 in memory
fld f25, 0(x2) # load 0x8abd5f4f262c1c30 from memory into f25
li x3, 0xb1715f97242c2390 # load x3 with value 0xb1715f97242c2390
sd x3, 0(x2) # store 0xb1715f97242c2390 in memory
fld f23, 0(x2) # load 0xb1715f97242c2390 from memory into f23
fsgnjx.d f10, f25, f23 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x613a8a6322561f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5706bd0d8229e72f # load x3 with value 0x5706bd0d8229e72f
sd x3, 0(x2) # store 0x5706bd0d8229e72f in memory
fld f19, 0(x2) # load 0x5706bd0d8229e72f from memory into f19
li x3, 0x9c3b0d5480b25288 # load x3 with value 0x9c3b0d5480b25288
sd x3, 0(x2) # store 0x9c3b0d5480b25288 in memory
fld f25, 0(x2) # load 0x9c3b0d5480b25288 from memory into f25
fsgnjx.d f11, f19, f25 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xe2fa1bb8c881919a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0eecdac19151f3e7 # load x3 with value 0x0eecdac19151f3e7
sd x3, 0(x2) # store 0x0eecdac19151f3e7 in memory
fld f26, 0(x2) # load 0x0eecdac19151f3e7 from memory into f26
li x3, 0xab40c4ccf669f542 # load x3 with value 0xab40c4ccf669f542
sd x3, 0(x2) # store 0xab40c4ccf669f542 in memory
fld f31, 0(x2) # load 0xab40c4ccf669f542 from memory into f31
fsgnjx.d f12, f26, f31 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x329af586c73c508a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa481ad35f5f7d9f7 # load x3 with value 0xa481ad35f5f7d9f7
sd x3, 0(x2) # store 0xa481ad35f5f7d9f7 in memory
fld f20, 0(x2) # load 0xa481ad35f5f7d9f7 from memory into f20
li x3, 0x9e2f7d4eb4aa1967 # load x3 with value 0x9e2f7d4eb4aa1967
sd x3, 0(x2) # store 0x9e2f7d4eb4aa1967 in memory
fld f23, 0(x2) # load 0x9e2f7d4eb4aa1967 from memory into f23
fsgnjx.d f13, f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x9e0e1d254fde21e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee08722fd28d9263 # load x3 with value 0xee08722fd28d9263
sd x3, 0(x2) # store 0xee08722fd28d9263 in memory
fld f25, 0(x2) # load 0xee08722fd28d9263 from memory into f25
li x3, 0x8bc039a93ecb01f7 # load x3 with value 0x8bc039a93ecb01f7
sd x3, 0(x2) # store 0x8bc039a93ecb01f7 in memory
fld f3, 0(x2) # load 0x8bc039a93ecb01f7 from memory into f3
fsgnjx.d f14, f25, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xb22b97a1597a1348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3253c71b96bfd4c # load x3 with value 0xa3253c71b96bfd4c
sd x3, 0(x2) # store 0xa3253c71b96bfd4c in memory
fld f28, 0(x2) # load 0xa3253c71b96bfd4c from memory into f28
li x3, 0xed95f7c573ab916c # load x3 with value 0xed95f7c573ab916c
sd x3, 0(x2) # store 0xed95f7c573ab916c in memory
fld f2, 0(x2) # load 0xed95f7c573ab916c from memory into f2
fsgnjx.d f15, f28, f2 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe1ee810bc7deb524 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bf29e93c6bc4d69 # load x3 with value 0x5bf29e93c6bc4d69
sd x3, 0(x2) # store 0x5bf29e93c6bc4d69 in memory
fld f31, 0(x2) # load 0x5bf29e93c6bc4d69 from memory into f31
li x3, 0xb7d02880b7bfc339 # load x3 with value 0xb7d02880b7bfc339
sd x3, 0(x2) # store 0xb7d02880b7bfc339 in memory
fld f4, 0(x2) # load 0xb7d02880b7bfc339 from memory into f4
fsgnjx.d f16, f31, f4 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x802e536614bef90e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98c8982be5ed736b # load x3 with value 0x98c8982be5ed736b
sd x3, 0(x2) # store 0x98c8982be5ed736b in memory
fld f20, 0(x2) # load 0x98c8982be5ed736b from memory into f20
li x3, 0xb6892f9cf64a5407 # load x3 with value 0xb6892f9cf64a5407
sd x3, 0(x2) # store 0xb6892f9cf64a5407 in memory
fld f13, 0(x2) # load 0xb6892f9cf64a5407 from memory into f13
fsgnjx.d f17, f20, f13 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x7a6481bbb1c38dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd059066c2f3ae95 # load x3 with value 0xdd059066c2f3ae95
sd x3, 0(x2) # store 0xdd059066c2f3ae95 in memory
fld f29, 0(x2) # load 0xdd059066c2f3ae95 from memory into f29
li x3, 0x7a150c8853670b80 # load x3 with value 0x7a150c8853670b80
sd x3, 0(x2) # store 0x7a150c8853670b80 in memory
fld f21, 0(x2) # load 0x7a150c8853670b80 from memory into f21
fsgnjx.d f18, f29, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x0698e00f911b18d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x840b4f9f6c1924c3 # load x3 with value 0x840b4f9f6c1924c3
sd x3, 0(x2) # store 0x840b4f9f6c1924c3 in memory
fld f30, 0(x2) # load 0x840b4f9f6c1924c3 from memory into f30
li x3, 0x6ad2bf0a8a83e82e # load x3 with value 0x6ad2bf0a8a83e82e
sd x3, 0(x2) # store 0x6ad2bf0a8a83e82e in memory
fld f8, 0(x2) # load 0x6ad2bf0a8a83e82e from memory into f8
fsgnjx.d f19, f30, f8 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xca3dcc4b7d8a2426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdad345c220531a97 # load x3 with value 0xdad345c220531a97
sd x3, 0(x2) # store 0xdad345c220531a97 in memory
fld f22, 0(x2) # load 0xdad345c220531a97 from memory into f22
li x3, 0x3dd94c365c4e004f # load x3 with value 0x3dd94c365c4e004f
sd x3, 0(x2) # store 0x3dd94c365c4e004f in memory
fld f13, 0(x2) # load 0x3dd94c365c4e004f from memory into f13
fsgnjx.d f20, f22, f13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x8fa53736c2960e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa320b833407d07fb # load x3 with value 0xa320b833407d07fb
sd x3, 0(x2) # store 0xa320b833407d07fb in memory
fld f14, 0(x2) # load 0xa320b833407d07fb from memory into f14
li x3, 0xf8828eeff0a3a920 # load x3 with value 0xf8828eeff0a3a920
sd x3, 0(x2) # store 0xf8828eeff0a3a920 in memory
fld f15, 0(x2) # load 0xf8828eeff0a3a920 from memory into f15
fsgnjx.d f21, f14, f15 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x6a1dd58ebac08d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3afd8be3d39de3d7 # load x3 with value 0x3afd8be3d39de3d7
sd x3, 0(x2) # store 0x3afd8be3d39de3d7 in memory
fld f3, 0(x2) # load 0x3afd8be3d39de3d7 from memory into f3
li x3, 0x6a698581df1174cd # load x3 with value 0x6a698581df1174cd
sd x3, 0(x2) # store 0x6a698581df1174cd in memory
fld f29, 0(x2) # load 0x6a698581df1174cd from memory into f29
fsgnjx.d f22, f3, f29 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xcf56bddb43f7588a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf84f4bda5fda41b5 # load x3 with value 0xf84f4bda5fda41b5
sd x3, 0(x2) # store 0xf84f4bda5fda41b5 in memory
fld f1, 0(x2) # load 0xf84f4bda5fda41b5 from memory into f1
li x3, 0xe977da81bf982c38 # load x3 with value 0xe977da81bf982c38
sd x3, 0(x2) # store 0xe977da81bf982c38 in memory
fld f30, 0(x2) # load 0xe977da81bf982c38 from memory into f30
fsgnjx.d f23, f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x0f4002dc5d5c26e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66c3d86884c6c6b8 # load x3 with value 0x66c3d86884c6c6b8
sd x3, 0(x2) # store 0x66c3d86884c6c6b8 in memory
fld f11, 0(x2) # load 0x66c3d86884c6c6b8 from memory into f11
li x3, 0x6ad13e8eb41d1f70 # load x3 with value 0x6ad13e8eb41d1f70
sd x3, 0(x2) # store 0x6ad13e8eb41d1f70 in memory
fld f8, 0(x2) # load 0x6ad13e8eb41d1f70 from memory into f8
fsgnjx.d f24, f11, f8 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x57788a281856a5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8b5abc6b57fc226 # load x3 with value 0xd8b5abc6b57fc226
sd x3, 0(x2) # store 0xd8b5abc6b57fc226 in memory
fld f19, 0(x2) # load 0xd8b5abc6b57fc226 from memory into f19
li x3, 0xbe125aea4a38267e # load x3 with value 0xbe125aea4a38267e
sd x3, 0(x2) # store 0xbe125aea4a38267e in memory
fld f11, 0(x2) # load 0xbe125aea4a38267e from memory into f11
fsgnjx.d f25, f19, f11 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xe9614a71780d9418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x404b10deb852f03f # load x3 with value 0x404b10deb852f03f
sd x3, 0(x2) # store 0x404b10deb852f03f in memory
fld f20, 0(x2) # load 0x404b10deb852f03f from memory into f20
li x3, 0x91c855c63a56801d # load x3 with value 0x91c855c63a56801d
sd x3, 0(x2) # store 0x91c855c63a56801d in memory
fld f4, 0(x2) # load 0x91c855c63a56801d from memory into f4
fsgnjx.d f26, f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb2bcd5cb214303fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa11f4b2983ed69f4 # load x3 with value 0xa11f4b2983ed69f4
sd x3, 0(x2) # store 0xa11f4b2983ed69f4 in memory
fld f25, 0(x2) # load 0xa11f4b2983ed69f4 from memory into f25
li x3, 0xc3d30bc5388fc94b # load x3 with value 0xc3d30bc5388fc94b
sd x3, 0(x2) # store 0xc3d30bc5388fc94b in memory
fld f12, 0(x2) # load 0xc3d30bc5388fc94b from memory into f12
fsgnjx.d f27, f25, f12 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x87a610e62f00311c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa28240660c9bf3d5 # load x3 with value 0xa28240660c9bf3d5
sd x3, 0(x2) # store 0xa28240660c9bf3d5 in memory
fld f22, 0(x2) # load 0xa28240660c9bf3d5 from memory into f22
li x3, 0xb360b7d768570e8d # load x3 with value 0xb360b7d768570e8d
sd x3, 0(x2) # store 0xb360b7d768570e8d in memory
fld f11, 0(x2) # load 0xb360b7d768570e8d from memory into f11
fsgnjx.d f28, f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x36165f01d7a6ea94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc5fa688a797f00 # load x3 with value 0xdbc5fa688a797f00
sd x3, 0(x2) # store 0xdbc5fa688a797f00 in memory
fld f26, 0(x2) # load 0xdbc5fa688a797f00 from memory into f26
li x3, 0x4033cfff68dc6162 # load x3 with value 0x4033cfff68dc6162
sd x3, 0(x2) # store 0x4033cfff68dc6162 in memory
fld f9, 0(x2) # load 0x4033cfff68dc6162 from memory into f9
fsgnjx.d f29, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5a9016d0087376a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x619cd988dc723d0e # load x3 with value 0x619cd988dc723d0e
sd x3, 0(x2) # store 0x619cd988dc723d0e in memory
fld f12, 0(x2) # load 0x619cd988dc723d0e from memory into f12
li x3, 0xd11b9047bfe79676 # load x3 with value 0xd11b9047bfe79676
sd x3, 0(x2) # store 0xd11b9047bfe79676 in memory
fld f7, 0(x2) # load 0xd11b9047bfe79676 from memory into f7
fsgnjx.d f30, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd68eb469c42d54c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc56d3208039641e2 # load x3 with value 0xc56d3208039641e2
sd x3, 0(x2) # store 0xc56d3208039641e2 in memory
fld f31, 0(x2) # load 0xc56d3208039641e2 from memory into f31
li x3, 0x6295c4321cd82873 # load x3 with value 0x6295c4321cd82873
sd x3, 0(x2) # store 0x6295c4321cd82873 in memory
fld f29, 0(x2) # load 0x6295c4321cd82873 from memory into f29
fsgnjx.d f31, f31, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x8, 0x70cecf753646fda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8aa724da0a9ee855 # load x3 with value 0x8aa724da0a9ee855
sd x3, 0(x2) # store 0x8aa724da0a9ee855 in memory
fld f0, 0(x2) # load 0x8aa724da0a9ee855 from memory into f0
li x3, 0xf87881c666c7daa8 # load x3 with value 0xf87881c666c7daa8
sd x3, 0(x2) # store 0xf87881c666c7daa8 in memory
fld f11, 0(x2) # load 0xf87881c666c7daa8 from memory into f11
fsgnjx.d f8, f0, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x12, 0xe4a21034a3807380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc374ef9cc9772452 # load x3 with value 0xc374ef9cc9772452
sd x3, 0(x2) # store 0xc374ef9cc9772452 in memory
fld f1, 0(x2) # load 0xc374ef9cc9772452 from memory into f1
li x3, 0xd93bc0a447afb11a # load x3 with value 0xd93bc0a447afb11a
sd x3, 0(x2) # store 0xd93bc0a447afb11a in memory
fld f8, 0(x2) # load 0xd93bc0a447afb11a from memory into f8
fsgnjx.d f12, f1, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x20, 0x50fd6f443a24b4fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x394367d193f374ca # load x3 with value 0x394367d193f374ca
sd x3, 0(x2) # store 0x394367d193f374ca in memory
fld f2, 0(x2) # load 0x394367d193f374ca from memory into f2
li x3, 0xa733aae77dba5bc5 # load x3 with value 0xa733aae77dba5bc5
sd x3, 0(x2) # store 0xa733aae77dba5bc5 in memory
fld f18, 0(x2) # load 0xa733aae77dba5bc5 from memory into f18
fsgnjx.d f20, f2, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0x05575d724425e73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1defee561189f2e5 # load x3 with value 0x1defee561189f2e5
sd x3, 0(x2) # store 0x1defee561189f2e5 in memory
fld f3, 0(x2) # load 0x1defee561189f2e5 from memory into f3
li x3, 0x82b75a5d826c00c0 # load x3 with value 0x82b75a5d826c00c0
sd x3, 0(x2) # store 0x82b75a5d826c00c0 in memory
fld f25, 0(x2) # load 0x82b75a5d826c00c0 from memory into f25
fsgnjx.d f6, f3, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x27, 0x74d152d887a7e885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6046bf200678c9bf # load x3 with value 0x6046bf200678c9bf
sd x3, 0(x2) # store 0x6046bf200678c9bf in memory
fld f4, 0(x2) # load 0x6046bf200678c9bf from memory into f4
li x3, 0x321dfa53c7a6a779 # load x3 with value 0x321dfa53c7a6a779
sd x3, 0(x2) # store 0x321dfa53c7a6a779 in memory
fld f19, 0(x2) # load 0x321dfa53c7a6a779 from memory into f19
fsgnjx.d f27, f4, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0xcacf185eef0b9407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x990b2fb0a68f3dc1 # load x3 with value 0x990b2fb0a68f3dc1
sd x3, 0(x2) # store 0x990b2fb0a68f3dc1 in memory
fld f5, 0(x2) # load 0x990b2fb0a68f3dc1 from memory into f5
li x3, 0xde007753da8a5f7e # load x3 with value 0xde007753da8a5f7e
sd x3, 0(x2) # store 0xde007753da8a5f7e in memory
fld f13, 0(x2) # load 0xde007753da8a5f7e from memory into f13
fsgnjx.d f10, f5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x9, 0xfe5c78f17e0b52cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e9f2157bd93ad37 # load x3 with value 0x0e9f2157bd93ad37
sd x3, 0(x2) # store 0x0e9f2157bd93ad37 in memory
fld f6, 0(x2) # load 0x0e9f2157bd93ad37 from memory into f6
li x3, 0x4a6d8fa82a89a991 # load x3 with value 0x4a6d8fa82a89a991
sd x3, 0(x2) # store 0x4a6d8fa82a89a991 in memory
fld f15, 0(x2) # load 0x4a6d8fa82a89a991 from memory into f15
fsgnjx.d f9, f6, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0xf1b13b40597ef5e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb931855d4fb2b4 # load x3 with value 0xccb931855d4fb2b4
sd x3, 0(x2) # store 0xccb931855d4fb2b4 in memory
fld f7, 0(x2) # load 0xccb931855d4fb2b4 from memory into f7
li x3, 0x139ec2ffb8b79a86 # load x3 with value 0x139ec2ffb8b79a86
sd x3, 0(x2) # store 0x139ec2ffb8b79a86 in memory
fld f20, 0(x2) # load 0x139ec2ffb8b79a86 from memory into f20
fsgnjx.d f12, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x19, 0x46361c78d741092d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5e61d27dd07a9aa # load x3 with value 0xa5e61d27dd07a9aa
sd x3, 0(x2) # store 0xa5e61d27dd07a9aa in memory
fld f8, 0(x2) # load 0xa5e61d27dd07a9aa from memory into f8
li x3, 0xb6ecffbe695c158a # load x3 with value 0xb6ecffbe695c158a
sd x3, 0(x2) # store 0xb6ecffbe695c158a in memory
fld f28, 0(x2) # load 0xb6ecffbe695c158a from memory into f28
fsgnjx.d f19, f8, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0x7b01dba9dc13077c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40fa877b19ae6ae1 # load x3 with value 0x40fa877b19ae6ae1
sd x3, 0(x2) # store 0x40fa877b19ae6ae1 in memory
fld f9, 0(x2) # load 0x40fa877b19ae6ae1 from memory into f9
li x3, 0xacb48f9299be8376 # load x3 with value 0xacb48f9299be8376
sd x3, 0(x2) # store 0xacb48f9299be8376 in memory
fld f2, 0(x2) # load 0xacb48f9299be8376 from memory into f2
fsgnjx.d f29, f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x19, 0x94e9efb4a4bb8a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3363bae196208fbf # load x3 with value 0x3363bae196208fbf
sd x3, 0(x2) # store 0x3363bae196208fbf in memory
fld f10, 0(x2) # load 0x3363bae196208fbf from memory into f10
li x3, 0x96523eae617c8563 # load x3 with value 0x96523eae617c8563
sd x3, 0(x2) # store 0x96523eae617c8563 in memory
fld f7, 0(x2) # load 0x96523eae617c8563 from memory into f7
fsgnjx.d f19, f10, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0x10dc83086a0815d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f2e8d337e3bd09f # load x3 with value 0x3f2e8d337e3bd09f
sd x3, 0(x2) # store 0x3f2e8d337e3bd09f in memory
fld f11, 0(x2) # load 0x3f2e8d337e3bd09f from memory into f11
li x3, 0xe99e348e743eccab # load x3 with value 0xe99e348e743eccab
sd x3, 0(x2) # store 0xe99e348e743eccab in memory
fld f17, 0(x2) # load 0xe99e348e743eccab from memory into f17
fsgnjx.d f20, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0xae057fa2ead167f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x581ea317616656e4 # load x3 with value 0x581ea317616656e4
sd x3, 0(x2) # store 0x581ea317616656e4 in memory
fld f12, 0(x2) # load 0x581ea317616656e4 from memory into f12
li x3, 0x636d8d1c4632822b # load x3 with value 0x636d8d1c4632822b
sd x3, 0(x2) # store 0x636d8d1c4632822b in memory
fld f29, 0(x2) # load 0x636d8d1c4632822b from memory into f29
fsgnjx.d f24, f12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x9, 0x509b06838cdcb174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26f5b61e8ab1f7a3 # load x3 with value 0x26f5b61e8ab1f7a3
sd x3, 0(x2) # store 0x26f5b61e8ab1f7a3 in memory
fld f13, 0(x2) # load 0x26f5b61e8ab1f7a3 from memory into f13
li x3, 0x26f33f3a2df4f515 # load x3 with value 0x26f33f3a2df4f515
sd x3, 0(x2) # store 0x26f33f3a2df4f515 in memory
fld f29, 0(x2) # load 0x26f33f3a2df4f515 from memory into f29
fsgnjx.d f9, f13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0xe79f05c7eb91e481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e390521e5468f06 # load x3 with value 0x3e390521e5468f06
sd x3, 0(x2) # store 0x3e390521e5468f06 in memory
fld f14, 0(x2) # load 0x3e390521e5468f06 from memory into f14
li x3, 0x541396c01d7bf9eb # load x3 with value 0x541396c01d7bf9eb
sd x3, 0(x2) # store 0x541396c01d7bf9eb in memory
fld f7, 0(x2) # load 0x541396c01d7bf9eb from memory into f7
fsgnjx.d f8, f14, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x5, 0x89184604be973ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5cbb1d9688974e8 # load x3 with value 0xc5cbb1d9688974e8
sd x3, 0(x2) # store 0xc5cbb1d9688974e8 in memory
fld f15, 0(x2) # load 0xc5cbb1d9688974e8 from memory into f15
li x3, 0x5cdd018b71f18242 # load x3 with value 0x5cdd018b71f18242
sd x3, 0(x2) # store 0x5cdd018b71f18242 in memory
fld f29, 0(x2) # load 0x5cdd018b71f18242 from memory into f29
fsgnjx.d f5, f15, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0x633f151c68b80471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f04aea8640dded3 # load x3 with value 0x1f04aea8640dded3
sd x3, 0(x2) # store 0x1f04aea8640dded3 in memory
fld f16, 0(x2) # load 0x1f04aea8640dded3 from memory into f16
li x3, 0x5281267aa9dc3c1b # load x3 with value 0x5281267aa9dc3c1b
sd x3, 0(x2) # store 0x5281267aa9dc3c1b in memory
fld f18, 0(x2) # load 0x5281267aa9dc3c1b from memory into f18
fsgnjx.d f23, f16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x17, 0x323c020c724701c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55acc1a8c2fe37e1 # load x3 with value 0x55acc1a8c2fe37e1
sd x3, 0(x2) # store 0x55acc1a8c2fe37e1 in memory
fld f17, 0(x2) # load 0x55acc1a8c2fe37e1 from memory into f17
li x3, 0x6ce465f126b5548f # load x3 with value 0x6ce465f126b5548f
sd x3, 0(x2) # store 0x6ce465f126b5548f in memory
fld f2, 0(x2) # load 0x6ce465f126b5548f from memory into f2
fsgnjx.d f17, f17, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x22, 0x8b719d91c0b5cc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfeecc1671448c8e # load x3 with value 0xdfeecc1671448c8e
sd x3, 0(x2) # store 0xdfeecc1671448c8e in memory
fld f18, 0(x2) # load 0xdfeecc1671448c8e from memory into f18
li x3, 0x621fa80f209f9c53 # load x3 with value 0x621fa80f209f9c53
sd x3, 0(x2) # store 0x621fa80f209f9c53 in memory
fld f11, 0(x2) # load 0x621fa80f209f9c53 from memory into f11
fsgnjx.d f22, f18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x5, 0x1e35a60cdf84ceff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb979edf0f32ac9a1 # load x3 with value 0xb979edf0f32ac9a1
sd x3, 0(x2) # store 0xb979edf0f32ac9a1 in memory
fld f19, 0(x2) # load 0xb979edf0f32ac9a1 from memory into f19
li x3, 0x6601c137bdf1bf3f # load x3 with value 0x6601c137bdf1bf3f
sd x3, 0(x2) # store 0x6601c137bdf1bf3f in memory
fld f2, 0(x2) # load 0x6601c137bdf1bf3f from memory into f2
fsgnjx.d f5, f19, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0xb248112e4009c047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf43b4d948932c380 # load x3 with value 0xf43b4d948932c380
sd x3, 0(x2) # store 0xf43b4d948932c380 in memory
fld f20, 0(x2) # load 0xf43b4d948932c380 from memory into f20
li x3, 0x4b344cb428efa079 # load x3 with value 0x4b344cb428efa079
sd x3, 0(x2) # store 0x4b344cb428efa079 in memory
fld f31, 0(x2) # load 0x4b344cb428efa079 from memory into f31
fsgnjx.d f25, f20, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x11, 0x41a4e40c3575ee79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5a315e7b3394a45 # load x3 with value 0xd5a315e7b3394a45
sd x3, 0(x2) # store 0xd5a315e7b3394a45 in memory
fld f21, 0(x2) # load 0xd5a315e7b3394a45 from memory into f21
li x3, 0x24ed5bd349523c7a # load x3 with value 0x24ed5bd349523c7a
sd x3, 0(x2) # store 0x24ed5bd349523c7a in memory
fld f30, 0(x2) # load 0x24ed5bd349523c7a from memory into f30
fsgnjx.d f11, f21, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0x1340044a838db0de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc84a79a5bc3ce56e # load x3 with value 0xc84a79a5bc3ce56e
sd x3, 0(x2) # store 0xc84a79a5bc3ce56e in memory
fld f22, 0(x2) # load 0xc84a79a5bc3ce56e from memory into f22
li x3, 0x6be133871bcb0116 # load x3 with value 0x6be133871bcb0116
sd x3, 0(x2) # store 0x6be133871bcb0116 in memory
fld f28, 0(x2) # load 0x6be133871bcb0116 from memory into f28
fsgnjx.d f30, f22, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x19, 0xe0cce109df27214a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66fb38e3f006d0bf # load x3 with value 0x66fb38e3f006d0bf
sd x3, 0(x2) # store 0x66fb38e3f006d0bf in memory
fld f23, 0(x2) # load 0x66fb38e3f006d0bf from memory into f23
li x3, 0x6bf71acb750e4c7d # load x3 with value 0x6bf71acb750e4c7d
sd x3, 0(x2) # store 0x6bf71acb750e4c7d in memory
fld f6, 0(x2) # load 0x6bf71acb750e4c7d from memory into f6
fsgnjx.d f19, f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x3, 0xa0f742df558052c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefd68d24e61ab2c3 # load x3 with value 0xefd68d24e61ab2c3
sd x3, 0(x2) # store 0xefd68d24e61ab2c3 in memory
fld f24, 0(x2) # load 0xefd68d24e61ab2c3 from memory into f24
li x3, 0x5ac5c0564691ed3d # load x3 with value 0x5ac5c0564691ed3d
sd x3, 0(x2) # store 0x5ac5c0564691ed3d in memory
fld f27, 0(x2) # load 0x5ac5c0564691ed3d from memory into f27
fsgnjx.d f3, f24, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x10, 0xe0489284f0b78361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f0c1995d15a5f6a # load x3 with value 0x6f0c1995d15a5f6a
sd x3, 0(x2) # store 0x6f0c1995d15a5f6a in memory
fld f25, 0(x2) # load 0x6f0c1995d15a5f6a from memory into f25
li x3, 0x9e76fb139cb50f08 # load x3 with value 0x9e76fb139cb50f08
sd x3, 0(x2) # store 0x9e76fb139cb50f08 in memory
fld f24, 0(x2) # load 0x9e76fb139cb50f08 from memory into f24
fsgnjx.d f10, f25, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x5, 0x0780c918452e1787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf3383123ef6312e # load x3 with value 0xbf3383123ef6312e
sd x3, 0(x2) # store 0xbf3383123ef6312e in memory
fld f26, 0(x2) # load 0xbf3383123ef6312e from memory into f26
li x3, 0x9baa9b17d999d9ba # load x3 with value 0x9baa9b17d999d9ba
sd x3, 0(x2) # store 0x9baa9b17d999d9ba in memory
fld f24, 0(x2) # load 0x9baa9b17d999d9ba from memory into f24
fsgnjx.d f5, f26, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x28, 0xfd1be91994c7667d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52b5187a7d946a51 # load x3 with value 0x52b5187a7d946a51
sd x3, 0(x2) # store 0x52b5187a7d946a51 in memory
fld f27, 0(x2) # load 0x52b5187a7d946a51 from memory into f27
li x3, 0x4d17aef5ee5f2804 # load x3 with value 0x4d17aef5ee5f2804
sd x3, 0(x2) # store 0x4d17aef5ee5f2804 in memory
fld f1, 0(x2) # load 0x4d17aef5ee5f2804 from memory into f1
fsgnjx.d f28, f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x21, 0x164289eb7b4c4e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd98889e65fd4ade1 # load x3 with value 0xd98889e65fd4ade1
sd x3, 0(x2) # store 0xd98889e65fd4ade1 in memory
fld f28, 0(x2) # load 0xd98889e65fd4ade1 from memory into f28
li x3, 0x95c6f211e6bffa30 # load x3 with value 0x95c6f211e6bffa30
sd x3, 0(x2) # store 0x95c6f211e6bffa30 in memory
fld f3, 0(x2) # load 0x95c6f211e6bffa30 from memory into f3
fsgnjx.d f21, f28, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x27, 0x2a70207d39189e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa672ca1cb5ec4c54 # load x3 with value 0xa672ca1cb5ec4c54
sd x3, 0(x2) # store 0xa672ca1cb5ec4c54 in memory
fld f29, 0(x2) # load 0xa672ca1cb5ec4c54 from memory into f29
li x3, 0x6a144737b5fb6c9e # load x3 with value 0x6a144737b5fb6c9e
sd x3, 0(x2) # store 0x6a144737b5fb6c9e in memory
fld f30, 0(x2) # load 0x6a144737b5fb6c9e from memory into f30
fsgnjx.d f27, f29, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0xebdbc74226660a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2226a671f031c6ac # load x3 with value 0x2226a671f031c6ac
sd x3, 0(x2) # store 0x2226a671f031c6ac in memory
fld f30, 0(x2) # load 0x2226a671f031c6ac from memory into f30
li x3, 0x151e8a2163fe3e89 # load x3 with value 0x151e8a2163fe3e89
sd x3, 0(x2) # store 0x151e8a2163fe3e89 in memory
fld f3, 0(x2) # load 0x151e8a2163fe3e89 from memory into f3
fsgnjx.d f31, f30, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x13, 0xeb2a607c28c6dc34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d3156df8632dde5 # load x3 with value 0x7d3156df8632dde5
sd x3, 0(x2) # store 0x7d3156df8632dde5 in memory
fld f31, 0(x2) # load 0x7d3156df8632dde5 from memory into f31
li x3, 0x66fab095e933934e # load x3 with value 0x66fab095e933934e
sd x3, 0(x2) # store 0x66fab095e933934e in memory
fld f26, 0(x2) # load 0x66fab095e933934e from memory into f26
fsgnjx.d f13, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x26, 0x4ef9763e74d8f5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d1cbc23f1401d00 # load x3 with value 0x1d1cbc23f1401d00
sd x3, 0(x2) # store 0x1d1cbc23f1401d00 in memory
fld f18, 0(x2) # load 0x1d1cbc23f1401d00 from memory into f18
li x3, 0xd0f41ffd1179b7a3 # load x3 with value 0xd0f41ffd1179b7a3
sd x3, 0(x2) # store 0xd0f41ffd1179b7a3 in memory
fld f0, 0(x2) # load 0xd0f41ffd1179b7a3 from memory into f0
fsgnjx.d f26, f18, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x6, 0x5b55c4dc939ec0d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8f3b4b613d1f75f # load x3 with value 0xd8f3b4b613d1f75f
sd x3, 0(x2) # store 0xd8f3b4b613d1f75f in memory
fld f25, 0(x2) # load 0xd8f3b4b613d1f75f from memory into f25
li x3, 0xb9c83e276377c0a5 # load x3 with value 0xb9c83e276377c0a5
sd x3, 0(x2) # store 0xb9c83e276377c0a5 in memory
fld f1, 0(x2) # load 0xb9c83e276377c0a5 from memory into f1
fsgnjx.d f6, f25, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x11, 0xfd3740dc72a5f64c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb933bc8610ce986a # load x3 with value 0xb933bc8610ce986a
sd x3, 0(x2) # store 0xb933bc8610ce986a in memory
fld f7, 0(x2) # load 0xb933bc8610ce986a from memory into f7
li x3, 0xe0d34b3590df06fd # load x3 with value 0xe0d34b3590df06fd
sd x3, 0(x2) # store 0xe0d34b3590df06fd in memory
fld f2, 0(x2) # load 0xe0d34b3590df06fd from memory into f2
fsgnjx.d f11, f7, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x17, 0x17539468b950d5d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3653acb3dac99a14 # load x3 with value 0x3653acb3dac99a14
sd x3, 0(x2) # store 0x3653acb3dac99a14 in memory
fld f12, 0(x2) # load 0x3653acb3dac99a14 from memory into f12
li x3, 0x7de7374697b0ce14 # load x3 with value 0x7de7374697b0ce14
sd x3, 0(x2) # store 0x7de7374697b0ce14 in memory
fld f3, 0(x2) # load 0x7de7374697b0ce14 from memory into f3
fsgnjx.d f17, f12, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x19, 0x9b3b35a3d65ea53c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2bd1d0e264aca88 # load x3 with value 0xd2bd1d0e264aca88
sd x3, 0(x2) # store 0xd2bd1d0e264aca88 in memory
fld f1, 0(x2) # load 0xd2bd1d0e264aca88 from memory into f1
li x3, 0x29b8842a0479e24f # load x3 with value 0x29b8842a0479e24f
sd x3, 0(x2) # store 0x29b8842a0479e24f in memory
fld f4, 0(x2) # load 0x29b8842a0479e24f from memory into f4
fsgnjx.d f19, f1, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x1, 0x48cc5fad38219f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67efc7354ccb024e # load x3 with value 0x67efc7354ccb024e
sd x3, 0(x2) # store 0x67efc7354ccb024e in memory
fld f27, 0(x2) # load 0x67efc7354ccb024e from memory into f27
li x3, 0x2164d385d518d29f # load x3 with value 0x2164d385d518d29f
sd x3, 0(x2) # store 0x2164d385d518d29f in memory
fld f5, 0(x2) # load 0x2164d385d518d29f from memory into f5
fsgnjx.d f1, f27, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x28, 0xf00ca145890ac584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8241ec01ec574ba1 # load x3 with value 0x8241ec01ec574ba1
sd x3, 0(x2) # store 0x8241ec01ec574ba1 in memory
fld f18, 0(x2) # load 0x8241ec01ec574ba1 from memory into f18
li x3, 0x3e223f79efc78ee3 # load x3 with value 0x3e223f79efc78ee3
sd x3, 0(x2) # store 0x3e223f79efc78ee3 in memory
fld f6, 0(x2) # load 0x3e223f79efc78ee3 from memory into f6
fsgnjx.d f28, f18, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x11, 0x7fc247e3b3867fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa11c1be2c8cb8b30 # load x3 with value 0xa11c1be2c8cb8b30
sd x3, 0(x2) # store 0xa11c1be2c8cb8b30 in memory
fld f3, 0(x2) # load 0xa11c1be2c8cb8b30 from memory into f3
li x3, 0xb9d30b9d181a8e94 # load x3 with value 0xb9d30b9d181a8e94
sd x3, 0(x2) # store 0xb9d30b9d181a8e94 in memory
fld f7, 0(x2) # load 0xb9d30b9d181a8e94 from memory into f7
fsgnjx.d f11, f3, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x12, 0xfaeab2d8ef312426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe0659259ffee1c8 # load x3 with value 0xbe0659259ffee1c8
sd x3, 0(x2) # store 0xbe0659259ffee1c8 in memory
fld f22, 0(x2) # load 0xbe0659259ffee1c8 from memory into f22
li x3, 0xdc89849cebf45414 # load x3 with value 0xdc89849cebf45414
sd x3, 0(x2) # store 0xdc89849cebf45414 in memory
fld f8, 0(x2) # load 0xdc89849cebf45414 from memory into f8
fsgnjx.d f12, f22, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x16, 0x3af5103eb50ade04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4255e1ef72c00feb # load x3 with value 0x4255e1ef72c00feb
sd x3, 0(x2) # store 0x4255e1ef72c00feb in memory
fld f26, 0(x2) # load 0x4255e1ef72c00feb from memory into f26
li x3, 0x3dda6c068ca938ab # load x3 with value 0x3dda6c068ca938ab
sd x3, 0(x2) # store 0x3dda6c068ca938ab in memory
fld f9, 0(x2) # load 0x3dda6c068ca938ab from memory into f9
fsgnjx.d f16, f26, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x20, 0x9d67630aca0add7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9643306f0a692a62 # load x3 with value 0x9643306f0a692a62
sd x3, 0(x2) # store 0x9643306f0a692a62 in memory
fld f21, 0(x2) # load 0x9643306f0a692a62 from memory into f21
li x3, 0x3283187131790fad # load x3 with value 0x3283187131790fad
sd x3, 0(x2) # store 0x3283187131790fad in memory
fld f10, 0(x2) # load 0x3283187131790fad from memory into f10
fsgnjx.d f20, f21, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x9349f50c55db2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3284085ef098149f # load x3 with value 0x3284085ef098149f
sd x3, 0(x2) # store 0x3284085ef098149f in memory
fld f18, 0(x2) # load 0x3284085ef098149f from memory into f18
li x3, 0xf731f81c175b1438 # load x3 with value 0xf731f81c175b1438
sd x3, 0(x2) # store 0xf731f81c175b1438 in memory
fld f11, 0(x2) # load 0xf731f81c175b1438 from memory into f11
fsgnjx.d f11, f18, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x22, 0xef85ebdff1ef7bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2a8dace349809f9 # load x3 with value 0xe2a8dace349809f9
sd x3, 0(x2) # store 0xe2a8dace349809f9 in memory
fld f19, 0(x2) # load 0xe2a8dace349809f9 from memory into f19
li x3, 0xa71504194ee023b0 # load x3 with value 0xa71504194ee023b0
sd x3, 0(x2) # store 0xa71504194ee023b0 in memory
fld f12, 0(x2) # load 0xa71504194ee023b0 from memory into f12
fsgnjx.d f22, f19, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x1, 0x07fb7e4a69180424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe03c3fa648193836 # load x3 with value 0xe03c3fa648193836
sd x3, 0(x2) # store 0xe03c3fa648193836 in memory
fld f24, 0(x2) # load 0xe03c3fa648193836 from memory into f24
li x3, 0xebd79b4257ebd62a # load x3 with value 0xebd79b4257ebd62a
sd x3, 0(x2) # store 0xebd79b4257ebd62a in memory
fld f13, 0(x2) # load 0xebd79b4257ebd62a from memory into f13
fsgnjx.d f1, f24, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x4, 0x19c8258f9ee6544e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc742e5226314cb3b # load x3 with value 0xc742e5226314cb3b
sd x3, 0(x2) # store 0xc742e5226314cb3b in memory
fld f1, 0(x2) # load 0xc742e5226314cb3b from memory into f1
li x3, 0x3393bf98493172a0 # load x3 with value 0x3393bf98493172a0
sd x3, 0(x2) # store 0x3393bf98493172a0 in memory
fld f14, 0(x2) # load 0x3393bf98493172a0 from memory into f14
fsgnjx.d f4, f1, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x30, 0xb87516dd17b01077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56084a05d8114de1 # load x3 with value 0x56084a05d8114de1
sd x3, 0(x2) # store 0x56084a05d8114de1 in memory
fld f24, 0(x2) # load 0x56084a05d8114de1 from memory into f24
li x3, 0xe499e8fcaad04d54 # load x3 with value 0xe499e8fcaad04d54
sd x3, 0(x2) # store 0xe499e8fcaad04d54 in memory
fld f15, 0(x2) # load 0xe499e8fcaad04d54 from memory into f15
fsgnjx.d f30, f24, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x27, 0xa4049416ddeb778e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23c4c04d9e1a13bd # load x3 with value 0x23c4c04d9e1a13bd
sd x3, 0(x2) # store 0x23c4c04d9e1a13bd in memory
fld f5, 0(x2) # load 0x23c4c04d9e1a13bd from memory into f5
li x3, 0x3057b11313dfb5ba # load x3 with value 0x3057b11313dfb5ba
sd x3, 0(x2) # store 0x3057b11313dfb5ba in memory
fld f16, 0(x2) # load 0x3057b11313dfb5ba from memory into f16
fsgnjx.d f27, f5, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x12, 0x78078fc5c06fbe82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaadc43d6b0fd0a3 # load x3 with value 0xbaadc43d6b0fd0a3
sd x3, 0(x2) # store 0xbaadc43d6b0fd0a3 in memory
fld f24, 0(x2) # load 0xbaadc43d6b0fd0a3 from memory into f24
li x3, 0xfae274930d895823 # load x3 with value 0xfae274930d895823
sd x3, 0(x2) # store 0xfae274930d895823 in memory
fld f17, 0(x2) # load 0xfae274930d895823 from memory into f17
fsgnjx.d f12, f24, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x30, 0x0f6f860a3b8a7d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b6c6c1a6403e37e # load x3 with value 0x6b6c6c1a6403e37e
sd x3, 0(x2) # store 0x6b6c6c1a6403e37e in memory
fld f23, 0(x2) # load 0x6b6c6c1a6403e37e from memory into f23
li x3, 0xe3e750f69dfa8ca4 # load x3 with value 0xe3e750f69dfa8ca4
sd x3, 0(x2) # store 0xe3e750f69dfa8ca4 in memory
fld f18, 0(x2) # load 0xe3e750f69dfa8ca4 from memory into f18
fsgnjx.d f30, f23, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x18, 0x656c82eb0c2c11d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75fba66f1fd59b5a # load x3 with value 0x75fba66f1fd59b5a
sd x3, 0(x2) # store 0x75fba66f1fd59b5a in memory
fld f29, 0(x2) # load 0x75fba66f1fd59b5a from memory into f29
li x3, 0x249c6ce226bb0d5e # load x3 with value 0x249c6ce226bb0d5e
sd x3, 0(x2) # store 0x249c6ce226bb0d5e in memory
fld f19, 0(x2) # load 0x249c6ce226bb0d5e from memory into f19
fsgnjx.d f18, f29, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x19, 0xc03c5aebd8e922f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6184c203da305e41 # load x3 with value 0x6184c203da305e41
sd x3, 0(x2) # store 0x6184c203da305e41 in memory
fld f23, 0(x2) # load 0x6184c203da305e41 from memory into f23
li x3, 0x5f49f88ee4892600 # load x3 with value 0x5f49f88ee4892600
sd x3, 0(x2) # store 0x5f49f88ee4892600 in memory
fld f20, 0(x2) # load 0x5f49f88ee4892600 from memory into f20
fsgnjx.d f19, f23, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x15, 0x82a3e511cd393b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7665de95b7f51c18 # load x3 with value 0x7665de95b7f51c18
sd x3, 0(x2) # store 0x7665de95b7f51c18 in memory
fld f18, 0(x2) # load 0x7665de95b7f51c18 from memory into f18
li x3, 0x40ceac59ca9335eb # load x3 with value 0x40ceac59ca9335eb
sd x3, 0(x2) # store 0x40ceac59ca9335eb in memory
fld f21, 0(x2) # load 0x40ceac59ca9335eb from memory into f21
fsgnjx.d f15, f18, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x16, 0xa81a16d00722ec90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d041e439ff1a6c1 # load x3 with value 0x2d041e439ff1a6c1
sd x3, 0(x2) # store 0x2d041e439ff1a6c1 in memory
fld f11, 0(x2) # load 0x2d041e439ff1a6c1 from memory into f11
li x3, 0x5b1b84a5e117a0b0 # load x3 with value 0x5b1b84a5e117a0b0
sd x3, 0(x2) # store 0x5b1b84a5e117a0b0 in memory
fld f22, 0(x2) # load 0x5b1b84a5e117a0b0 from memory into f22
fsgnjx.d f16, f11, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x20, 0x11fd148fe2e92b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53fe1f040b3c0765 # load x3 with value 0x53fe1f040b3c0765
sd x3, 0(x2) # store 0x53fe1f040b3c0765 in memory
fld f21, 0(x2) # load 0x53fe1f040b3c0765 from memory into f21
li x3, 0xddb00f4ff2696247 # load x3 with value 0xddb00f4ff2696247
sd x3, 0(x2) # store 0xddb00f4ff2696247 in memory
fld f23, 0(x2) # load 0xddb00f4ff2696247 from memory into f23
fsgnjx.d f20, f21, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x25, 0x40edf9559713fb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaac48c1b47ed83de # load x3 with value 0xaac48c1b47ed83de
sd x3, 0(x2) # store 0xaac48c1b47ed83de in memory
fld f17, 0(x2) # load 0xaac48c1b47ed83de from memory into f17
li x3, 0xe8fe6189a84f4150 # load x3 with value 0xe8fe6189a84f4150
sd x3, 0(x2) # store 0xe8fe6189a84f4150 in memory
fld f24, 0(x2) # load 0xe8fe6189a84f4150 from memory into f24
fsgnjx.d f25, f17, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x6, 0x1c96d6f4aec589b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ccb0cf2bf3490e8 # load x3 with value 0x8ccb0cf2bf3490e8
sd x3, 0(x2) # store 0x8ccb0cf2bf3490e8 in memory
fld f11, 0(x2) # load 0x8ccb0cf2bf3490e8 from memory into f11
li x3, 0x11d230814c1bf4b5 # load x3 with value 0x11d230814c1bf4b5
sd x3, 0(x2) # store 0x11d230814c1bf4b5 in memory
fld f25, 0(x2) # load 0x11d230814c1bf4b5 from memory into f25
fsgnjx.d f6, f11, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x27, 0x8c3e8de9fe8b42fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf811730138cdcf48 # load x3 with value 0xf811730138cdcf48
sd x3, 0(x2) # store 0xf811730138cdcf48 in memory
fld f2, 0(x2) # load 0xf811730138cdcf48 from memory into f2
li x3, 0x6c46c264f324d681 # load x3 with value 0x6c46c264f324d681
sd x3, 0(x2) # store 0x6c46c264f324d681 in memory
fld f26, 0(x2) # load 0x6c46c264f324d681 from memory into f26
fsgnjx.d f27, f2, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x7, 0x04daff9d20247e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50ea328f7999ad25 # load x3 with value 0x50ea328f7999ad25
sd x3, 0(x2) # store 0x50ea328f7999ad25 in memory
fld f2, 0(x2) # load 0x50ea328f7999ad25 from memory into f2
li x3, 0x40b8061a9588ace8 # load x3 with value 0x40b8061a9588ace8
sd x3, 0(x2) # store 0x40b8061a9588ace8 in memory
fld f27, 0(x2) # load 0x40b8061a9588ace8 from memory into f27
fsgnjx.d f7, f2, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x19, 0x964333e6837e1906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b3500f76c611c31 # load x3 with value 0x4b3500f76c611c31
sd x3, 0(x2) # store 0x4b3500f76c611c31 in memory
fld f14, 0(x2) # load 0x4b3500f76c611c31 from memory into f14
li x3, 0xa034042ad6329d01 # load x3 with value 0xa034042ad6329d01
sd x3, 0(x2) # store 0xa034042ad6329d01 in memory
fld f28, 0(x2) # load 0xa034042ad6329d01 from memory into f28
fsgnjx.d f19, f14, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x5, 0xc4cd79e04e8292d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63c5b64b794a3f15 # load x3 with value 0x63c5b64b794a3f15
sd x3, 0(x2) # store 0x63c5b64b794a3f15 in memory
fld f23, 0(x2) # load 0x63c5b64b794a3f15 from memory into f23
li x3, 0x5fb04ae1a5c8435a # load x3 with value 0x5fb04ae1a5c8435a
sd x3, 0(x2) # store 0x5fb04ae1a5c8435a in memory
fld f29, 0(x2) # load 0x5fb04ae1a5c8435a from memory into f29
fsgnjx.d f5, f23, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x10, 0xae9608f36c1b2630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x732c93cc7d287cf5 # load x3 with value 0x732c93cc7d287cf5
sd x3, 0(x2) # store 0x732c93cc7d287cf5 in memory
fld f12, 0(x2) # load 0x732c93cc7d287cf5 from memory into f12
li x3, 0x92e85634a8c20568 # load x3 with value 0x92e85634a8c20568
sd x3, 0(x2) # store 0x92e85634a8c20568 in memory
fld f30, 0(x2) # load 0x92e85634a8c20568 from memory into f30
fsgnjx.d f10, f12, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x10, 0xecc1a05ed74373a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fff7f04b76fcc2e # load x3 with value 0x7fff7f04b76fcc2e
sd x3, 0(x2) # store 0x7fff7f04b76fcc2e in memory
fld f14, 0(x2) # load 0x7fff7f04b76fcc2e from memory into f14
li x3, 0xbfec5332dc44d761 # load x3 with value 0xbfec5332dc44d761
sd x3, 0(x2) # store 0xbfec5332dc44d761 in memory
fld f31, 0(x2) # load 0xbfec5332dc44d761 from memory into f31
fsgnjx.d f10, f14, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
