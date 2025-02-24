///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaD//WALLY-COV-fmvp.d.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.118689
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x23, 0x15a492e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x39cf5de7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x2)
li x5, 0x898f7ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0xdb5d4725 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x203998ea # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x5)
li x29, 0x9fa606fe # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0xdc2c9f9b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x89467026 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x30d99935 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0xdb117b55 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x5105ee93 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0xc6e51c3a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x0404de6c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x13)
li x6, 0xc14facbb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0xb7efcda5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x6f0b4556 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x16)
li x24, 0xf6fb2ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0xd815946f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x0933d574 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x19)
li x6, 0x80e95321 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x20)
li x17, 0x0a6fc029 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x6dc219e8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0xc72396de # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0xb4ef2827 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x24)
li x28, 0xe31b73b3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x52b34ebb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0xbf272faf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x27)
li x21, 0x9e7feb8f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0xfd71f32f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x6eee2add # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0xe1cc15a7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0x5b8c73df # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0x2eab4d72 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x441a7589 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xe47f1fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0xc6e1af9d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0xba6704b1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x5)
li x6, 0x32c1e30d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0xa1db36cb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x7)
li x9, 0x2ecc8121 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x8)
li x10, 0x25176c93 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x274f437d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0xec12f7aa # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0xb59961e4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0xa0c2d522 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xfec0f6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0x166b4129 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0x79f79071 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x16)
li x13, 0x811ef11e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x0bb2dfc9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x3baadc35 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0xb74e5fea # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x20)
li x3, 0xd84e7fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0xd4734eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x1009b8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x163f018c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x24)
li x19, 0x90102357 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0x4931c06f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x305d776b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x27)
li x29, 0xf75dc87d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0x4df0e62e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x1a272728 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x94bf4107 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x51d70fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0xce4a148d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x9c529021 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x4abcfed8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x7f58a418 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0xa26bcf5c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x24, 0x1f929515 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x70f197de # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xea8937dc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x69756124 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x15, 0x0387e605 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xb21568e6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0xf0a13e44 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0xec8825e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x67184fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x19, 0x2cfd3b30 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x19, 0xe46f774d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x21, 0xfb16b10b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0x3acd9b5a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0x1ea47376 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xc821bff6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0xea808f25 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x2, 0x5b2e9e9c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x28, 0xde7db58c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x7, 0x049223c5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x21b55d6a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xe06cc991 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x28568e94 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xf7e14455 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe87848dc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8ebb3fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xeb16eda5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x4d0bd537 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa3a15211 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x34620bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc2516b92 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x4b71d651 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc307884a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc2d491bf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xe75a6e1e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x9f23a149 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xd740f347 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x37295781 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xb9557992 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2f5ddd84 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x00a3365a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe37b529d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x972f4238 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xfc7bbcff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa3ad9fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x280dee19 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xaba9b8cb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x93613402 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x7529e944 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x023bbfbc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x466fa0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x255ca560 # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
