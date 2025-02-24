//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.mul.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x6b6fae134e60d5ba)
li x9, 0x6b6fae134e60d5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6b6fae134e60d5ba # initialize leagalized rd to a random value that should get changed
li x13, 0x6b6fae134e60d5ba # initialize rs2
c.mul x9, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x65e48718ff16a6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x791bd90c26fa867c # initialize leagalized rd to a random value that should get changed
li x8, 0xb532b7851fc05560 # initialize rs2
c.mul x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x24373e5bfaaf43eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x74e61998506fd266 # initialize leagalized rd to a random value that should get changed
li x9, 0x6d4b0032de317eb5 # initialize rs2
c.mul x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xb69fcb8bc9b20148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x804627f3dc5dc253 # initialize leagalized rd to a random value that should get changed
li x10, 0x04de8964e94ede9b # initialize rs2
c.mul x10, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xd876c8f051f6044b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c998aa846fe3568 # initialize leagalized rd to a random value that should get changed
li x11, 0x7184574254e39512 # initialize rs2
c.mul x11, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x6913e7c9e9221f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x07c13df5bc3990da # initialize leagalized rd to a random value that should get changed
li x12, 0x2a938ede7cbf4d23 # initialize rs2
c.mul x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x3306aa1f145ba6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2c08e9c62d594187 # initialize leagalized rd to a random value that should get changed
li x13, 0x8626ae175e43808d # initialize rs2
c.mul x13, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x10be2a9568d3e675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3462f372bd768b8b # initialize leagalized rd to a random value that should get changed
li x14, 0x2d15a3d994b87fb6 # initialize rs2
c.mul x14, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xba175dddcda5880d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5ecf75911229f00d # initialize leagalized rd to a random value that should get changed
li x15, 0xa7d30799a2ab637d # initialize rs2
c.mul x15, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x29870622aa250344)
li x6, 0x57310b3042f0e1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2196d5818778da35 # initialize leagalized rd to a random value that should get changed
li x13, 0x29870622aa250344 # initialize rs2
c.mul x14, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xd1c34a388c535c0)
li x31, 0x031c14f152618ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2588323cb4eb750a # initialize leagalized rd to a random value that should get changed
li x15, 0xf2e3cb5c773aca40 # initialize rs2
c.mul x15, x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x349b5454f182f5c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7b2bb5226542bb45 # initialize leagalized rd to a random value that should get changed
li x13, 0x764c1d451789aaeb # initialize rs2
c.mul x8, x13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x56c6e368ab987a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x098bd11a3af3912a # initialize leagalized rd to a random value that should get changed
li x12, 0x18ac5954abc10c24 # initialize rs2
c.mul x9, x12 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb264ce2279f8c09a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb6a9956e28ac4ef4 # initialize leagalized rd to a random value that should get changed
li x13, 0xb72185f882ea68b2 # initialize rs2
c.mul x10, x13 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xf7895c019b9bd6f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeca4035735409512 # initialize leagalized rd to a random value that should get changed
li x10, 0x6b2b993555384326 # initialize rs2
c.mul x11, x10 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9eb2a8c2ac38d802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x409f001542ae0a0c # initialize leagalized rd to a random value that should get changed
li x10, 0xc664b9410a8ead86 # initialize rs2
c.mul x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa25dae202500a36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa62828255a9338b1 # initialize leagalized rd to a random value that should get changed
li x15, 0x278e6625f79b15f8 # initialize rs2
c.mul x13, x15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe64b2f94ab6ece27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc2366caceaf1fe17 # initialize leagalized rd to a random value that should get changed
li x10, 0x8a9afd1d24073524 # initialize rs2
c.mul x14, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3fd5c572d6c108fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x695954534e56b300 # initialize leagalized rd to a random value that should get changed
li x11, 0xd1d79d5a1ef9b466 # initialize rs2
c.mul x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0xeec1ef91631b9fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdff0554a16cff128 # initialize leagalized rd to a random value that should get changed
li x8, 0xa5dd8c3e13924bdb # initialize rs2
c.mul x13, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x100b7b770809b7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeb6370115a4eee8f # initialize leagalized rd to a random value that should get changed
li x9, 0x1e465b2e024b908a # initialize rs2
c.mul x8, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x23, 0x9b7ffde75fa2052a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x780834eac5c7c254 # initialize leagalized rd to a random value that should get changed
li x10, 0xf1f97ddc358cd2e2 # initialize rs2
c.mul x15, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x10, 0xc8de60fbad06aa6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd27b447945aa076c # initialize leagalized rd to a random value that should get changed
li x11, 0xd87b2902c4d5a1bf # initialize rs2
c.mul x10, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0x05692575f2dffa41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5eca00323d361c77 # initialize leagalized rd to a random value that should get changed
li x12, 0x2fdc7e9ca89cc124 # initialize rs2
c.mul x10, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xbb355e8484f8c903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x093a190f7d09e2e8 # initialize leagalized rd to a random value that should get changed
li x13, 0x2979a88422d31b97 # initialize rs2
c.mul x13, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x2f6635767c2f2686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x98e396b9ef59473a # initialize leagalized rd to a random value that should get changed
li x14, 0xd93b4368f9f2cff2 # initialize rs2
c.mul x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0x293b6bddc6bb8aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2feaa86c3ba0c7fd # initialize leagalized rd to a random value that should get changed
li x15, 0xcfcba9d857f7fc84 # initialize rs2
c.mul x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x9b6c7c0b4d88d004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.mul x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x21fe87754272344a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000001 # initialize rs2
c.mul x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x58f2147395754866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000002 # initialize rs2
c.mul x11, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x29, 0x348d9a8b143a7325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000000 # initialize rs2
c.mul x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x16, 0x6a642dd0cb9c1e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000001 # initialize rs2
c.mul x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0xec23bdd0080a08e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.mul x9, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x20, 0xe09f2194defacdde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffffffffffe # initialize rs2
c.mul x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x29, 0x654087dd082dc093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0xffffffffffffffff # initialize rs2
c.mul x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x22, 0x08a91a3e80f90892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x9, 0xfffffffffffffffe # initialize rs2
c.mul x14, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x21, 0x399dd29d7cf379eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x5bbc887763ae86f7 # initialize rs2
c.mul x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x7c15b05562320e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.mul x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x7, 0xfafd50939189a4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x14, 0x5555555555555555 # initialize rs2
c.mul x15, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0xc74b5b09d6db4eef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x8, 0x00000000ffffffff # initialize rs2
c.mul x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0x7a5b1cffb968d0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000000fffffffe # initialize rs2
c.mul x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x10, 0xda6ef429ae696d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000100000000 # initialize rs2
c.mul x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x24, 0x975a98c2e8ceb211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.mul x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xb6c59695f595a30b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7357c6d821119e33 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000000 # initialize rs2
c.mul x14, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x0413ec742f3e35e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2c8ec42d7034ef3f # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000001 # initialize rs2
c.mul x8, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x4cbbe1893c334d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc13d06de5b1a1759 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000002 # initialize rs2
c.mul x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0xdd63dfbcaeceaa70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x42efe72e89a98283 # initialize leagalized rd to a random value that should get changed
li x10, 0x8000000000000000 # initialize rs2
c.mul x12, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0xee652e58046fd503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdaebafdd78cdb8ab # initialize leagalized rd to a random value that should get changed
li x13, 0x8000000000000001 # initialize rs2
c.mul x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0x3493d4544250f132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc5656ecd340044b9 # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.mul x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x0e8c15c4f7b94f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x70065fcbfff1b3c1 # initialize leagalized rd to a random value that should get changed
li x11, 0x7ffffffffffffffe # initialize rs2
c.mul x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0xfbc067a6ff08f6ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x834e757cd2205eaf # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.mul x12, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x3adf05397ebba155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4011026a0e1e8afe # initialize leagalized rd to a random value that should get changed
li x9, 0xfffffffffffffffe # initialize rs2
c.mul x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x10, 0x1784db08b733737b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc636ac7b0096e3ae # initialize leagalized rd to a random value that should get changed
li x8, 0x5bbc887763ae86f7 # initialize rs2
c.mul x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xbb818a7dfb155881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe6a0acb61107a891 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.mul x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x26cff3d5ee640563 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8964b6e8ce83f8ad # initialize leagalized rd to a random value that should get changed
li x13, 0x5555555555555555 # initialize rs2
c.mul x15, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x3d22eb147194b070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd774f31367b42074 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000ffffffff # initialize rs2
c.mul x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x0a7739438bddad39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3ff18abdca447087 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000000fffffffe # initialize rs2
c.mul x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x63aefbc7ac05dd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6b52f28367ca5267 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000000 # initialize rs2
c.mul x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x251a486eb4a5b039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe1e0ed2f19c37459 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000100000001 # initialize rs2
c.mul x11, x15 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
