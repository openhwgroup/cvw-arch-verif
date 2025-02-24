///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-slt.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.984158
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x6d707302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe7ae731f # initialize rs1
li x4, 0x100590fd # initialize rs2
slt x0, x26, x4 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0304382a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7cd75272 # initialize rs1
li x31, 0xa63c4eeb # initialize rs2
slt x1, x23, x31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5b02ed59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x31fd283f # initialize rs1
li x16, 0xb14480dc # initialize rs2
slt x2, x29, x16 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7263507e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4e1dc129 # initialize rs1
li x28, 0x0ca891f2 # initialize rs2
slt x3, x1, x28 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x152bb74a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbb3e27b5 # initialize rs1
li x2, 0x0f3f74ca # initialize rs2
slt x4, x7, x2 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9188a62a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x181281bf # initialize rs1
li x19, 0xc35707c9 # initialize rs2
slt x5, x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb0603a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0a161606 # initialize rs1
li x5, 0x8faa1221 # initialize rs2
slt x6, x1, x5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc917aa36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9809ac8a # initialize rs1
li x30, 0xb7e07272 # initialize rs2
slt x7, x24, x30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x723f6d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5d2b472f # initialize rs1
li x30, 0x6fdf62ca # initialize rs2
slt x8, x13, x30 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6f31787f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5afe3407 # initialize rs1
li x28, 0x4781ac24 # initialize rs2
slt x9, x9, x28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd91cd83f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa38f834d # initialize rs1
li x4, 0x1be1169e # initialize rs2
slt x10, x13, x4 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96383064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d67cfd3 # initialize rs1
li x9, 0x8dfe19d6 # initialize rs2
slt x11, x15, x9 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x43caeecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x61eb9969 # initialize rs1
li x5, 0x3d675806 # initialize rs2
slt x12, x1, x5 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x69fb73b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe2a5e19e # initialize rs1
li x25, 0x8525c176 # initialize rs2
slt x13, x10, x25 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x22adcbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdd6cc81b # initialize rs1
li x6, 0xe7c92f83 # initialize rs2
slt x14, x20, x6 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc1475dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55635623 # initialize rs1
li x16, 0xb15430b0 # initialize rs2
slt x15, x14, x16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc1f898ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7dd07aad # initialize rs1
li x21, 0x1371688a # initialize rs2
slt x16, x25, x21 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xdb49c93c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x08eca62f # initialize rs1
li x19, 0x331087fb # initialize rs2
slt x17, x1, x19 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2104dae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd3ab1b46 # initialize rs1
li x19, 0x8e3f157e # initialize rs2
slt x18, x23, x19 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xbe0770f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc4c6ddb3 # initialize rs1
li x5, 0x388cf4b4 # initialize rs2
slt x19, x28, x5 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf2c1fd27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x69db969f # initialize rs1
li x19, 0x8f1e4a89 # initialize rs2
slt x20, x1, x19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7931209d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x25d9a31a # initialize rs1
li x2, 0xefc79cae # initialize rs2
slt x21, x16, x2 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc5a9d76a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x927dd91b # initialize rs1
li x2, 0x0e6200b8 # initialize rs2
slt x22, x14, x2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x24df19cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6c7ddaae # initialize rs1
li x12, 0x75b4ba08 # initialize rs2
slt x23, x18, x12 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xff857da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcd551e56 # initialize rs1
li x24, 0xdd15a07f # initialize rs2
slt x24, x25, x24 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x24663c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x370d493f # initialize rs1
li x28, 0xe9bb614f # initialize rs2
slt x25, x20, x28 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xef92a1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0b9c56de # initialize rs1
li x19, 0x531d0a57 # initialize rs2
slt x26, x28, x19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x83824d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc329b4d7 # initialize rs1
li x8, 0x0ba23acf # initialize rs2
slt x27, x20, x8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x23cc6fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1eac6584 # initialize rs1
li x20, 0x91f94d08 # initialize rs2
slt x28, x6, x20 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x5a6b48f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xba2b167e # initialize rs1
li x29, 0xc54585ca # initialize rs2
slt x29, x12, x29 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x878296fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2a338205 # initialize rs1
li x6, 0xeb77af14 # initialize rs2
slt x30, x15, x6 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x84e16bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0f4cdf60 # initialize rs1
li x29, 0x89a49dbe # initialize rs2
slt x31, x12, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x20, 0xe758b2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe33a57ab # initialize rs1
li x7, 0x9822f4f3 # initialize rs2
slt x20, x0, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x6, 0xfa0def22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6292c48f # initialize rs1
li x11, 0x758fdf08 # initialize rs2
slt x6, x1, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x1b38130f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc076cc6b # initialize rs1
li x22, 0xd08fa533 # initialize rs2
slt x1, x2, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x28, 0xf8177930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xee46ebd1 # initialize rs1
li x5, 0x983eb0b8 # initialize rs2
slt x28, x3, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x31, 0x06f1c051 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xda72b5a4 # initialize rs1
li x18, 0x2b7ea96d # initialize rs2
slt x31, x4, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x7, 0x84671ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x388c6af8 # initialize rs1
li x31, 0x26c65c45 # initialize rs2
slt x7, x5, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0xf3ab11d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x496eefc2 # initialize rs1
li x2, 0xba97c417 # initialize rs2
slt x11, x6, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x17, 0x05b52618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd7769e5 # initialize rs1
li x26, 0x6d5e75b0 # initialize rs2
slt x17, x7, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x6fbca871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa336cf17 # initialize rs1
li x19, 0x97179df7 # initialize rs2
slt x23, x8, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x53365c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9a955e43 # initialize rs1
li x16, 0xeedaf576 # initialize rs2
slt x23, x9, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x2a410e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8bca2ac6 # initialize rs1
li x9, 0x3eddfefd # initialize rs2
slt x3, x10, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0x3dc156bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x72915435 # initialize rs1
li x14, 0x7acf0bfd # initialize rs2
slt x25, x11, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xaef43a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0b6a4b6a # initialize rs1
li x25, 0x15f7ed12 # initialize rs2
slt x27, x12, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0x49ae3e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1f17abca # initialize rs1
li x16, 0x00ec8e3b # initialize rs2
slt x21, x13, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x590a78ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x190af189 # initialize rs1
li x26, 0x4c3316f9 # initialize rs2
slt x3, x14, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xe21a1172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfb7718b5 # initialize rs1
li x10, 0x630c76b6 # initialize rs2
slt x30, x15, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0x70871775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc293a01c # initialize rs1
li x21, 0xde91e90c # initialize rs2
slt x4, x16, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x21, 0x214624d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x724aa694 # initialize rs1
li x30, 0xb47d5c44 # initialize rs2
slt x21, x17, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0x7489b69b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2048c6ff # initialize rs1
li x24, 0x6dc8d6bb # initialize rs2
slt x23, x18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x4, 0x8fbed2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x397a204d # initialize rs1
li x2, 0xe5b05e98 # initialize rs2
slt x4, x19, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x7fa1098b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x81258ac3 # initialize rs1
li x21, 0x42baff50 # initialize rs2
slt x23, x20, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x9c2406c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe53d000b # initialize rs1
li x4, 0x0d5fe713 # initialize rs2
slt x20, x21, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0xecdd5ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb9d308f9 # initialize rs1
li x3, 0x64782399 # initialize rs2
slt x31, x22, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x25, 0x0c8909da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xff3b420b # initialize rs1
li x5, 0xc270057c # initialize rs2
slt x25, x23, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0x7b283aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0fff44ef # initialize rs1
li x16, 0xe5d8af08 # initialize rs2
slt x6, x24, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x2c7e6513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfa52445e # initialize rs1
li x2, 0x0cecf0ba # initialize rs2
slt x31, x25, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x1327e5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe58a8394 # initialize rs1
li x11, 0x3fc4b043 # initialize rs2
slt x12, x26, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0x27608416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x91eb2aa0 # initialize rs1
li x21, 0xaa12a75f # initialize rs2
slt x17, x27, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x11, 0x40f578ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa93d6646 # initialize rs1
li x12, 0x18f9cc96 # initialize rs2
slt x11, x28, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0x90ce8d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x90674bd0 # initialize rs1
li x31, 0x680fd5ac # initialize rs2
slt x2, x29, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0x0ec86543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0d8792dc # initialize rs1
li x20, 0x75ea8fc5 # initialize rs2
slt x23, x30, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0xe98528dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x11f42167 # initialize rs1
li x20, 0xbd4f4979 # initialize rs2
slt x14, x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x79e2fd3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd0ee9dc6 # initialize rs1
li x0, 0x4499bef3 # initialize rs2
slt x17, x19, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x290fd7ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9ac5ebdd # initialize rs1
li x1, 0x128079fe # initialize rs2
slt x10, x2, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x14, 0x9614fb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb5211004 # initialize rs1
li x2, 0xb51514f2 # initialize rs2
slt x14, x26, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0x2b214a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x72819b5c # initialize rs1
li x3, 0x06be7629 # initialize rs2
slt x6, x17, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x12, 0x2977c509 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x09c5c8f1 # initialize rs1
li x4, 0x3c738c31 # initialize rs2
slt x12, x11, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0x16808f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe7939dba # initialize rs1
li x5, 0xd423fdd6 # initialize rs2
slt x1, x18, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x24, 0xbd3b79ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8c54ba5a # initialize rs1
li x6, 0x290d0b23 # initialize rs2
slt x24, x4, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0xc41de743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x58c59567 # initialize rs1
li x7, 0x99d6cc17 # initialize rs2
slt x31, x14, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x27, 0x2b82f257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb4185c0c # initialize rs1
li x8, 0x2bf2aac1 # initialize rs2
slt x27, x18, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x18, 0x4fd2402a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x02d99ed6 # initialize rs1
li x9, 0xc6be4414 # initialize rs2
slt x18, x19, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x23, 0x2674d2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1c617213 # initialize rs1
li x10, 0xd755736b # initialize rs2
slt x23, x21, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x3, 0x0679dc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x787e4aec # initialize rs1
li x11, 0xe9315cfa # initialize rs2
slt x3, x18, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0xb788a278 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdb548ac7 # initialize rs1
li x12, 0xc73acd8d # initialize rs2
slt x1, x26, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x659762bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7c1239df # initialize rs1
li x13, 0x18b49c5b # initialize rs2
slt x22, x25, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xdb6e630b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xed455331 # initialize rs1
li x14, 0x352c87f1 # initialize rs2
slt x21, x28, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0x4bbbbd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x76cc1751 # initialize rs1
li x15, 0xca65d1e0 # initialize rs2
slt x23, x25, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0x0ad4599b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x403bd00f # initialize rs1
li x16, 0x080ed41f # initialize rs2
slt x23, x7, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x70b0548d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7e626133 # initialize rs1
li x17, 0x488d5ab6 # initialize rs2
slt x6, x26, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x9e7a566f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6c0730ef # initialize rs1
li x18, 0xe9f258f1 # initialize rs2
slt x20, x12, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x440941f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xf8e1e18f # initialize rs1
li x19, 0xa77990eb # initialize rs2
slt x17, x31, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0xf301ead7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb7658308 # initialize rs1
li x20, 0xb16ee20d # initialize rs2
slt x12, x3, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0x079acafe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xefdffce3 # initialize rs1
li x21, 0x653f0603 # initialize rs2
slt x19, x20, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0xc48a8545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6d3272ce # initialize rs1
li x22, 0xbcba9dd3 # initialize rs2
slt x6, x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x28, 0xb52411f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf3d3f0cd # initialize rs1
li x23, 0x6f999314 # initialize rs2
slt x28, x27, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0xaee9c23b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2e237da2 # initialize rs1
li x24, 0xc3f0cebc # initialize rs2
slt x16, x3, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x52b6984a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x364f241f # initialize rs1
li x25, 0x37489d56 # initialize rs2
slt x3, x5, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x8cc57e20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xeffd7b96 # initialize rs1
li x26, 0x8a080ab9 # initialize rs2
slt x28, x18, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0xd601c65d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x273e92de # initialize rs1
li x27, 0x374b77af # initialize rs2
slt x21, x6, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0x8d2440d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x996ee435 # initialize rs1
li x28, 0x896c9b6e # initialize rs2
slt x29, x1, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x218081ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x16923b27 # initialize rs1
li x29, 0xe54d0363 # initialize rs2
slt x14, x6, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0xdfc0d252 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x31849ef1 # initialize rs1
li x30, 0xf096f6ca # initialize rs2
slt x27, x25, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0xcccf6ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4d9aec16 # initialize rs1
li x31, 0x9f94cc43 # initialize rs2
slt x8, x6, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd77a4dc9)
li x4, 0x2cfbbb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2cfbbb0c # initialize rs1
li x0, 0xcee976b5 # initialize rs2
slt x4, x18, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xa9f6793e)
li x19, 0xa9f6793e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa9f6793e # initialize rs1
li x10, 0xa9f6793e # initialize rs2
slt x19, x0, x10 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xa4901c58)
li x9, 0xdbd88cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa4901c58 # initialize rs1
li x12, 0xa4901c58 # initialize rs2
slt x9, x29, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0xf48d16a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x3, 0x6a3463b7 # initialize rs2
slt x5, x12, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x4, 0xb2a206f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs1
li x11, 0xc22ebaea # initialize rs2
slt x4, x25, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x043e2b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x10, 0x1aac9c91 # initialize rs2
slt x24, x3, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x7e3665e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x29, 0x58d5b19e # initialize rs2
slt x12, x27, x29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x27, 0x974daa3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x3, 0x973d905a # initialize rs2
slt x27, x13, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x19, 0x09314ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
li x27, 0x56a83473 # initialize rs2
slt x19, x15, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x18, 0x042d1de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x17, 0xad1e2e3d # initialize rs2
slt x18, x5, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x78692ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x21, 0xa593c2fc # initialize rs2
slt x29, x14, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x18, 0xb26843c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
li x19, 0x4aec1798 # initialize rs2
slt x18, x30, x19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x10, 0xc1594649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
li x26, 0xe2118c2c # initialize rs2
slt x10, x20, x26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0x699c8741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x28, 0x2ea5219a # initialize rs2
slt x15, x8, x28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x13, 0x333858e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
li x14, 0x6a8a2dc8 # initialize rs2
slt x13, x31, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x2722ca4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x60f2b774 # initialize rs1
li x7, 0x00000000 # initialize rs2
slt x15, x17, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x010fdc6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4f0f41c3 # initialize rs1
li x2, 0x00000001 # initialize rs2
slt x1, x24, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x53444663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa512b905 # initialize rs1
li x16, 0x00000002 # initialize rs2
slt x25, x4, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x9, 0x2db9a049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1cda9e03 # initialize rs1
li x18, 0x80000000 # initialize rs2
slt x9, x4, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0x076280f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2789b4e7 # initialize rs1
li x24, 0x80000001 # initialize rs2
slt x31, x6, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0xfcc95609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe3e5027e # initialize rs1
li x26, 0x7fffffff # initialize rs2
slt x30, x25, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x40a6b579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf0292647 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
slt x2, x8, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0xf60930f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x08599b99 # initialize rs1
li x11, 0xffffffff # initialize rs2
slt x30, x1, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xbec5558b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2f409059 # initialize rs1
li x28, 0xfffffffe # initialize rs2
slt x18, x15, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x31, 0xdf1fc83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x9192b811 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
slt x31, x5, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x29, 0x320389fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7c7cf913 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
slt x29, x23, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x28, 0xbf941a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa1b8f7eb # initialize rs1
li x17, 0x55555555 # initialize rs2
slt x28, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x8, 0xcd5dd210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
slt x8, x21, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x6063ee07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
slt x11, x19, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0xce09ff18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
slt x11, x24, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0x4a5edcea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
slt x15, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x28, 0xb9f2270a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x4, 0x80000001 # initialize rs2
slt x28, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x18, 0x7d9c05ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
slt x18, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x0f785db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
slt x1, x6, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0xc9c660b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
slt x26, x21, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x6e5d6204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
slt x10, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x19, 0xa7547315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
li x2, 0x5bbc8877 # initialize rs2
slt x19, x28, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x74e47b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
slt x26, x25, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x31, 0xcbc75f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
slt x31, x9, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x2ed2eec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
li x23, 0x00000000 # initialize rs2
slt x10, x15, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0xe8e98e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
slt x26, x2, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0xaf292f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
slt x29, x7, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x29, 0x69be607c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x23, 0x80000000 # initialize rs2
slt x29, x20, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x25, 0xfdce81e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
slt x25, x21, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x23, 0x0f5353b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
li x8, 0x7fffffff # initialize rs2
slt x23, x2, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x6baec3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
slt x14, x20, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0xd4945dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
slt x27, x31, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x59876a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
slt x3, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x31, 0xb72ce17c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
slt x31, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0xdfe67a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
slt x18, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x31, 0xcfdaf3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
slt x31, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0xcd8151db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
slt x22, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0xb05b295c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x20, 0x00000001 # initialize rs2
slt x18, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0xc4f68254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000002 # initialize rs1
li x31, 0x00000002 # initialize rs2
slt x25, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x13, 0xdbd4531d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
li x5, 0x80000000 # initialize rs2
slt x13, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x30, 0x2dc29ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
li x26, 0x80000001 # initialize rs2
slt x30, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x24, 0x647ff825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x14, 0x7fffffff # initialize rs2
slt x24, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x22, 0x4b444d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000002 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
slt x22, x17, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x537b10e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
slt x19, x16, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x5, 0xff180c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # initialize rs1
li x12, 0xfffffffe # initialize rs2
slt x5, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x16, 0xd2f18fea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x13, 0x5bbc8877 # initialize rs2
slt x16, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0x2129e818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
slt x1, x19, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x7, 0x78b84f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
li x13, 0x55555555 # initialize rs2
slt x7, x30, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x19, 0x08a3ebc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
slt x19, x30, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x23, 0x2374ef7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
slt x23, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x5, 0x0fe5a52f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
slt x5, x8, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x30, 0xb3b5e999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
slt x30, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x21, 0x145e2195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
li x16, 0x80000001 # initialize rs2
slt x21, x15, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x12, 0xc19b2e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
slt x12, x11, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x3, 0x94761da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
slt x3, x27, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x17, 0x2e1199ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
slt x17, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x27, 0xaaa160e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
li x22, 0xfffffffe # initialize rs2
slt x27, x30, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x13, 0x491ee782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x17, 0x5bbc8877 # initialize rs2
slt x13, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x9, 0x04d3bff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
slt x9, x24, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x15, 0x9fb97f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x22, 0x55555555 # initialize rs2
slt x15, x8, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x20, 0x343ec75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
slt x20, x28, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x20, 0x50cfab18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
slt x20, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x9, 0xacb7f9c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x10, 0x00000002 # initialize rs2
slt x9, x14, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x5696b2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
slt x24, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0xa6d55156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
slt x8, x5, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x009235b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
slt x18, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x3, 0xc8a5bac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
slt x3, x23, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x10, 0x0664cf2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
slt x10, x23, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x20, 0x2a0772a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
slt x20, x10, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x13, 0x55bf3db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
li x28, 0x5bbc8877 # initialize rs2
slt x13, x16, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x15, 0x7bb08cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
slt x15, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x4, 0x064a0172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs1
li x9, 0x55555555 # initialize rs2
slt x4, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x51682a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
slt x26, x4, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x29, 0x878ebd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs1
li x31, 0x00000001 # initialize rs2
slt x29, x20, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x15, 0xd8c94aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
li x11, 0x00000002 # initialize rs2
slt x15, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x25, 0xd92aca4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
slt x25, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x22, 0x154754a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
slt x22, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x17, 0x915b099e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
slt x17, x5, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x17, 0x3c453c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
slt x17, x5, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x12, 0xe2a12203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
slt x12, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x5, 0xb0bad391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
slt x5, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x28, 0x0e7bfbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x14, 0x5bbc8877 # initialize rs2
slt x28, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x66f9a4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
slt x6, x27, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0xa0b72e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
slt x20, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x21, 0x20ca97cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
slt x21, x1, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x11, 0xb71b5157 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x3, 0x00000001 # initialize rs2
slt x11, x27, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x18, 0x9db1b56c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
slt x18, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0xab8dc337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
slt x18, x25, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x18, 0xea969260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
slt x18, x17, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x11, 0x2ea849c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
slt x11, x31, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x20, 0x7cd3b5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
slt x20, x27, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x22, 0xf07e954c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
slt x22, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x29, 0x32e95df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
slt x29, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x2, 0x5b545600 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x4, 0x5bbc8877 # initialize rs2
slt x2, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x63665373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
slt x26, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x14, 0x8c456a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
slt x14, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0xcf7c8c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x19, 0x00000000 # initialize rs2
slt x17, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0x2afca4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
slt x8, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x93215952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
li x8, 0x00000002 # initialize rs2
slt x23, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x29, 0xe9e4bcde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
slt x29, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x14, 0x768dbc84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
slt x14, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x31, 0x59a37ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
slt x31, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0xd8f02ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
slt x10, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x9665e492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
slt x1, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x6, 0xd19728b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
slt x6, x11, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x19, 0xcec5a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
slt x19, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x6, 0x07cb0ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
slt x6, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0xb277e394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
slt x27, x2, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xc3053322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
slt x23, x15, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0x511ee7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x16, 0x00000001 # initialize rs2
slt x6, x4, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x67adb04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffe # initialize rs1
li x15, 0x00000002 # initialize rs2
slt x2, x5, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x21, 0xbbf000aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
li x23, 0x80000000 # initialize rs2
slt x21, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xa8e17791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
slt x10, x11, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xc63f4bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
slt x30, x10, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x4, 0x90fcaf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
slt x4, x14, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0x19d782b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
slt x12, x18, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x3, 0x7ef8b403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
li x4, 0xfffffffe # initialize rs2
slt x3, x20, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x24, 0x8172dd89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
li x15, 0x5bbc8877 # initialize rs2
slt x24, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x3, 0xdd7a6120 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
slt x3, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x8, 0x56d278d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize rs1
li x27, 0x55555555 # initialize rs2
slt x8, x9, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x23, 0x0622fa5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
li x19, 0x00000000 # initialize rs2
slt x23, x31, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x21, 0x06c8c4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # initialize rs1
li x24, 0x00000001 # initialize rs2
slt x21, x2, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x31, 0x762d7e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x26, 0x00000002 # initialize rs2
slt x31, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x22, 0x14f9c07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x26, 0x80000000 # initialize rs2
slt x22, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x24, 0x9cc84531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
li x31, 0x80000001 # initialize rs2
slt x24, x9, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x23, 0x9677a6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs1
li x3, 0x7fffffff # initialize rs2
slt x23, x7, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x2, 0x6c063572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
slt x2, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x4, 0x4a3df61c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x7, 0xffffffff # initialize rs2
slt x4, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x29, 0x3e1d1646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x17, 0xfffffffe # initialize rs2
slt x29, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x17, 0x4770fbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
li x12, 0x5bbc8877 # initialize rs2
slt x17, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x9, 0xd2ac38cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
slt x9, x5, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x9, 0x426cbc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
li x28, 0x55555555 # initialize rs2
slt x9, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x3, 0x55e5cece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
slt x3, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x17, 0x62c52733 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x15, 0x00000001 # initialize rs2
slt x17, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x6, 0x41825203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x29, 0x00000002 # initialize rs2
slt x6, x23, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0x793b5224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
li x11, 0x80000000 # initialize rs2
slt x10, x29, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xae882678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x7, 0x80000001 # initialize rs2
slt x8, x12, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x17, 0x3a416cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaa # initialize rs1
li x14, 0x7fffffff # initialize rs2
slt x17, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0x84ee8114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
slt x3, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x15, 0x16e9472a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
slt x15, x20, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xf955ecf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x26, 0xfffffffe # initialize rs2
slt x15, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x20, 0x96c8bd7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x24, 0x5bbc8877 # initialize rs2
slt x20, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0x642f810d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
slt x5, x15, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x9, 0x65bb2a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
li x18, 0x55555555 # initialize rs2
slt x9, x23, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x15, 0x374375ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
slt x15, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0x6f5ae3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x22, 0x00000001 # initialize rs2
slt x7, x1, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x4, 0x9624f1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x20, 0x00000002 # initialize rs2
slt x4, x15, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x14, 0x078fed88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x27, 0x80000000 # initialize rs2
slt x14, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x15, 0x2df8e881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x4, 0x80000001 # initialize rs2
slt x15, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x17, 0xf7b3e7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x12, 0x7fffffff # initialize rs2
slt x17, x19, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x8, 0xd66ad499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
slt x8, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x26, 0xbe85aa98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x6, 0xffffffff # initialize rs2
slt x26, x27, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x27, 0x48c3cdbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
li x2, 0xfffffffe # initialize rs2
slt x27, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x2, 0x7bc9ac61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
li x9, 0x5bbc8877 # initialize rs2
slt x2, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x16, 0x5ed64e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
slt x16, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0xf2aef52f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
slt x9, x14, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4f7ab22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6d8623ef # initialize rs1
li x30, 0xd24a1361 # initialize rs2
slt x0, x0, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xacb52b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa7056f1b # initialize rs1
li x17, 0x5e8db73d # initialize rs2
slt x1, x1, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf0cab627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3f15038c # initialize rs1
li x29, 0x76b045a5 # initialize rs2
slt x2, x2, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd6f33041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa5fd47ea # initialize rs1
li x31, 0x07ce0c3e # initialize rs2
slt x3, x3, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x710019a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8c405db7 # initialize rs1
li x28, 0xc1c22822 # initialize rs2
slt x4, x4, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x08574633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfa5c5589 # initialize rs1
li x23, 0x2a166595 # initialize rs2
slt x5, x5, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x494cee5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf39b8c77 # initialize rs1
li x9, 0x5e4651bc # initialize rs2
slt x6, x6, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x567933c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x46fd6f1d # initialize rs1
li x7, 0x30a22c0e # initialize rs2
slt x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4a36aadf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x15f8268e # initialize rs1
li x17, 0xac0a706e # initialize rs2
slt x8, x8, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd80d5405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7936abe2 # initialize rs1
li x27, 0x8685ac6c # initialize rs2
slt x9, x9, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x86ac2e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2f2c2c3c # initialize rs1
li x19, 0x8d2494f2 # initialize rs2
slt x10, x10, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7e977572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb8b4540a # initialize rs1
li x27, 0x7f89c6af # initialize rs2
slt x11, x11, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6c082786 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb49cc3e3 # initialize rs1
li x31, 0x094f7314 # initialize rs2
slt x12, x12, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x03930428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf480ab17 # initialize rs1
li x7, 0x260a97b6 # initialize rs2
slt x13, x13, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1aef1393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xef798c22 # initialize rs1
li x22, 0xbc742d81 # initialize rs2
slt x14, x14, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa0aebd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf581dc55 # initialize rs1
li x3, 0x42435f9a # initialize rs2
slt x15, x15, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3b68e80e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3fb7bd76 # initialize rs1
li x14, 0x8d6db44b # initialize rs2
slt x16, x16, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x230918eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd7f3afbb # initialize rs1
li x7, 0x81f2e145 # initialize rs2
slt x17, x17, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x36a2203d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9e30f991 # initialize rs1
li x11, 0x061c1349 # initialize rs2
slt x18, x18, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x661da868 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd7e21257 # initialize rs1
li x26, 0x48007a9d # initialize rs2
slt x19, x19, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0707ffa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x10b91a40 # initialize rs1
li x12, 0x8f389502 # initialize rs2
slt x20, x20, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa09baca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa2f99d99 # initialize rs1
li x10, 0x43f952ad # initialize rs2
slt x21, x21, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3509767e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xda14ef40 # initialize rs1
li x25, 0x3f557ae8 # initialize rs2
slt x22, x22, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x79bf6f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00a26aa8 # initialize rs1
li x26, 0x52def6da # initialize rs2
slt x23, x23, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7a4047db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9858f0b0 # initialize rs1
li x17, 0xf2072a99 # initialize rs2
slt x24, x24, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1be388e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x92235224 # initialize rs1
li x7, 0xb0953343 # initialize rs2
slt x25, x25, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1b9ca91b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1fb3de19 # initialize rs1
li x24, 0x73a298a4 # initialize rs2
slt x26, x26, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0c35ccaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x48f3093d # initialize rs1
li x7, 0x39367a3a # initialize rs2
slt x27, x27, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcc200015 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x797c9ebb # initialize rs1
li x5, 0x291a8ee7 # initialize rs2
slt x28, x28, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x944c9c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xddda6954 # initialize rs1
li x6, 0xf7831c76 # initialize rs2
slt x29, x29, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbd6e836b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71347e51 # initialize rs1
li x4, 0xf9272100 # initialize rs2
slt x30, x30, x4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x973d4f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa2efa145 # initialize rs1
li x12, 0x494534f3 # initialize rs2
slt x31, x31, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x3b21bc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xebd35c44 # initialize rs1
li x0, 0xaa8549e0 # initialize rs2
slt x0, x12, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x06be16d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7bcbf5b9 # initialize rs1
li x1, 0x10e4b737 # initialize rs2
slt x1, x15, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x7f001268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd88fedc4 # initialize rs1
li x2, 0xa3adfecb # initialize rs2
slt x2, x7, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xff351a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x750f91fd # initialize rs1
li x3, 0x66d8686d # initialize rs2
slt x3, x14, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0xe1d8ce38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3ac587e1 # initialize rs1
li x4, 0x804cbb96 # initialize rs2
slt x4, x23, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x5b89f692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x326f60ac # initialize rs1
li x5, 0x3f09ab98 # initialize rs2
slt x5, x24, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x86afb35e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf6ace740 # initialize rs1
li x6, 0x26316cf0 # initialize rs2
slt x6, x18, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x54321628 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8968e114 # initialize rs1
li x7, 0xfb849b87 # initialize rs2
slt x7, x21, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x5c094196 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x214e1ef7 # initialize rs1
li x8, 0x91ff114f # initialize rs2
slt x8, x14, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x795ff6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x987fdc3d # initialize rs1
li x9, 0x6df2bbc2 # initialize rs2
slt x9, x10, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x4966e732 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0346a71f # initialize rs1
li x10, 0x5a0c5b9d # initialize rs2
slt x10, x18, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0xaf737cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdb2dd2d1 # initialize rs1
li x11, 0x3ff56a76 # initialize rs2
slt x11, x29, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xf5285a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x16e8a0ab # initialize rs1
li x12, 0xf9828ceb # initialize rs2
slt x12, x22, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x15e9befd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbde13dfc # initialize rs1
li x13, 0xec4d1bea # initialize rs2
slt x13, x14, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x843f36fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc3c4f4ab # initialize rs1
li x14, 0x4bcd5ecf # initialize rs2
slt x14, x18, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xf93c2d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6d949835 # initialize rs1
li x15, 0x63c6215d # initialize rs2
slt x15, x5, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xc981a110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd4798a16 # initialize rs1
li x16, 0x3d30a3ec # initialize rs2
slt x16, x25, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xc1b87f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0154787e # initialize rs1
li x17, 0xa5fdb9e7 # initialize rs2
slt x17, x4, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xd3744287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1d6754a3 # initialize rs1
li x18, 0xe445623e # initialize rs2
slt x18, x30, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xd812f7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x31ac1e75 # initialize rs1
li x19, 0xa946cd74 # initialize rs2
slt x19, x2, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xbd4b5b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xddb6871e # initialize rs1
li x20, 0x277c09ca # initialize rs2
slt x20, x3, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x15336f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcd8311e5 # initialize rs1
li x21, 0xeee2b5c6 # initialize rs2
slt x21, x16, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x9eae22a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7f9a1306 # initialize rs1
li x22, 0x3753b94e # initialize rs2
slt x22, x8, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xc9a2919c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xee8726ba # initialize rs1
li x23, 0x26ba7ccb # initialize rs2
slt x23, x3, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x73bf3dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x48333ee1 # initialize rs1
li x24, 0x21c9d5e8 # initialize rs2
slt x24, x16, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x1bc51239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf7cc6ece # initialize rs1
li x25, 0x032725b3 # initialize rs2
slt x25, x30, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0xee9ce38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0fa56585 # initialize rs1
li x26, 0x3ca570fe # initialize rs2
slt x26, x3, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0xb972ff42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc06e6fa6 # initialize rs1
li x27, 0xe0796a1b # initialize rs2
slt x27, x13, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xe50903a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2a36db7a # initialize rs1
li x28, 0x6cac39c9 # initialize rs2
slt x28, x6, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xf429e8ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x98114243 # initialize rs1
li x29, 0x4d3f45ad # initialize rs2
slt x29, x7, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xbe473750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbfcb6173 # initialize rs1
li x30, 0x491c00c6 # initialize rs2
slt x30, x19, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xce6171a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2cb0b2d8 # initialize rs1
li x31, 0x84d1b5ad # initialize rs2
slt x31, x21, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa334e022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd9012cfc # initialize rs1
li x0, 0x934e9efb # initialize rs2
slt x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x20ef17ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x42721c4a # initialize rs1
li x1, 0xba47d32d # initialize rs2
slt x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7fc72154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1f57efe8 # initialize rs1
li x2, 0xc4b12421 # initialize rs2
slt x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x98a32a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc5aaf6ee # initialize rs1
li x3, 0x891c5969 # initialize rs2
slt x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xeed4afa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfeb3df1c # initialize rs1
li x4, 0x5f1ad91e # initialize rs2
slt x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xe1136ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x945b55bc # initialize rs1
li x5, 0x5707d8bf # initialize rs2
slt x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x68c7d384 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0fa86dad # initialize rs1
li x6, 0x70915152 # initialize rs2
slt x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x17954142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x206b09cb # initialize rs1
li x7, 0x967c9619 # initialize rs2
slt x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb374f5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdddaca82 # initialize rs1
li x8, 0xc7cf2c24 # initialize rs2
slt x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xc0d58dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd44e68d3 # initialize rs1
li x9, 0x7599c0c0 # initialize rs2
slt x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x40469bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc4a66074 # initialize rs1
li x10, 0x5ebba763 # initialize rs2
slt x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x3300f882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x47cc4266 # initialize rs1
li x11, 0x326ad8e0 # initialize rs2
slt x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xee3f9565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc8fa9889 # initialize rs1
li x12, 0x12040d51 # initialize rs2
slt x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xcfb7d78c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb12d561d # initialize rs1
li x13, 0x3cddb9ce # initialize rs2
slt x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xaf665ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4e4cc9cf # initialize rs1
li x14, 0x5951fc2d # initialize rs2
slt x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9a6817a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x01a209fc # initialize rs1
li x15, 0x1e3ba178 # initialize rs2
slt x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xdf2b30d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x200ede40 # initialize rs1
li x16, 0xeb61f10a # initialize rs2
slt x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3fc1cd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe8f4d1a4 # initialize rs1
li x17, 0x4eeeea4c # initialize rs2
slt x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6ba1e9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xce658a86 # initialize rs1
li x18, 0x045d0f9f # initialize rs2
slt x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x4e7ada85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0b4b7b89 # initialize rs1
li x19, 0xcf9314a9 # initialize rs2
slt x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfe5af34e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd1e4d87c # initialize rs1
li x20, 0x931b8163 # initialize rs2
slt x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x672ff4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaf9c0f1a # initialize rs1
li x21, 0xd5079bba # initialize rs2
slt x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa4fdf70b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61993911 # initialize rs1
li x22, 0x16c760e2 # initialize rs2
slt x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xafb08eab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe5cb490b # initialize rs1
li x23, 0xbaed4fcc # initialize rs2
slt x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd7a2dd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6332ea0e # initialize rs1
li x24, 0x1156dffe # initialize rs2
slt x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1bff8e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x628be715 # initialize rs1
li x25, 0x34ad87c6 # initialize rs2
slt x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x3c7aaf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0f6cb7bb # initialize rs1
li x26, 0x533d000c # initialize rs2
slt x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x140b5883 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3de71d26 # initialize rs1
li x27, 0xcaf098a0 # initialize rs2
slt x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5cb6a140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x64f32b5a # initialize rs1
li x28, 0xa83920bb # initialize rs2
slt x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2df1f7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb27f0087 # initialize rs1
li x29, 0xf498ae35 # initialize rs2
slt x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa4768f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb92ed827 # initialize rs1
li x30, 0xa93b565f # initialize rs2
slt x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x69578c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd361c5ea # initialize rs1
li x31, 0x728c6e25 # initialize rs2
slt x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x30, 0x6dd0d7c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x99caa89f # initialize rs1
li x0, 0x914c0078 # initialize rs2
slt x30, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x4, 0xd03d4c62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5814f7c8 # initialize rs1
li x1, 0x021706d7 # initialize rs2
slt x4, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x24, 0x2e544494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x574736c6 # initialize rs1
li x2, 0x62be15f7 # initialize rs2
slt x24, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x15, 0x3e10a8c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffa1a0b4 # initialize rs1
li x3, 0xdabfd65d # initialize rs2
slt x15, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x23, 0x53eeea50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3311c8b8 # initialize rs1
li x4, 0x35d8f05d # initialize rs2
slt x23, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x4, 0x75867fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x722a0453 # initialize rs1
li x5, 0x2986f02f # initialize rs2
slt x4, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x16, 0x8b2cecfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8c8cae44 # initialize rs1
li x6, 0x4c4be8f8 # initialize rs2
slt x16, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x26, 0xd8cc16b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa8a6f1d8 # initialize rs1
li x7, 0x3e1c92c7 # initialize rs2
slt x26, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x19, 0x23269909 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3c0ba2d7 # initialize rs1
li x8, 0xc53d9062 # initialize rs2
slt x19, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x26, 0xf707512a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x357008f0 # initialize rs1
li x9, 0x27f672e1 # initialize rs2
slt x26, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x30, 0xa2f87c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc0b97299 # initialize rs1
li x10, 0x21f7ecff # initialize rs2
slt x30, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x2, 0xc69cd488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65df95b6 # initialize rs1
li x11, 0x277078e2 # initialize rs2
slt x2, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0xe8790507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd9c0190d # initialize rs1
li x12, 0x7881f567 # initialize rs2
slt x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0x1086215e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x46284d51 # initialize rs1
li x13, 0xd8a18abf # initialize rs2
slt x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x11, 0x673a9492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbc209d32 # initialize rs1
li x14, 0xe1ae384b # initialize rs2
slt x11, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x11, 0x457d4197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xee57d8df # initialize rs1
li x15, 0x8914f134 # initialize rs2
slt x11, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x8, 0x1ddb2f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2f13a525 # initialize rs1
li x16, 0xcf00aa12 # initialize rs2
slt x8, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x11, 0x7d770975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xeceb0222 # initialize rs1
li x17, 0x3b1c8b6a # initialize rs2
slt x11, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x26, 0x1fba39d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6723d94d # initialize rs1
li x18, 0xd6ab7379 # initialize rs2
slt x26, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x20, 0x892a76c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x110b2f01 # initialize rs1
li x19, 0xac14a9c5 # initialize rs2
slt x20, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x95c908c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf56284b8 # initialize rs1
li x20, 0x61344c30 # initialize rs2
slt x20, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x30, 0x03928fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1496675a # initialize rs1
li x21, 0x0d1d5937 # initialize rs2
slt x30, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x14, 0x21dd2d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e809adf # initialize rs1
li x22, 0x7a85daee # initialize rs2
slt x14, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x7, 0x95249a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x14bc8707 # initialize rs1
li x23, 0x88b27b4c # initialize rs2
slt x7, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x28, 0x30552ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x460e498b # initialize rs1
li x24, 0xb3d2d902 # initialize rs2
slt x28, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x7, 0xbdf74ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6f4886bd # initialize rs1
li x25, 0xa72c5024 # initialize rs2
slt x7, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0xb002c3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0b16a834 # initialize rs1
li x26, 0xe8a7c7d2 # initialize rs2
slt x10, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x19, 0x61cf4862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb1343db9 # initialize rs1
li x27, 0x562dddba # initialize rs2
slt x19, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x18, 0x899c390d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2434cb36 # initialize rs1
li x28, 0x2101f52d # initialize rs2
slt x18, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x27, 0x506bf293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6c72cc16 # initialize rs1
li x29, 0x2e2b131b # initialize rs2
slt x27, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x9, 0x2d740b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9c1a5d75 # initialize rs1
li x30, 0x76770485 # initialize rs2
slt x9, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x6, 0xdd0075fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa803cc5c # initialize rs1
li x31, 0x7b0bafda # initialize rs2
slt x6, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x6d3c1741)
li x16, 0xbef746fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6d3c1741 # initialize rs1
li x25, 0x02ecdb2f # initialize rs2
slt x16, x29, x25 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x12a931a5)
li x4, 0x48a928fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xed56ce5b # initialize rs1
li x30, 0x22bfecfa # initialize rs2
slt x4, x23, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6be6d60e)
li x14, 0xf677d9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaf4f37 # initialize rs1
li x8, 0x6be6d60e # initialize rs2
slt x14, x31, x8 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x2310ac10)
li x7, 0x9b4a669e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0eca59a8 # initialize rs1
li x29, 0xdcef53f0 # initialize rs2
slt x7, x17, x29 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
