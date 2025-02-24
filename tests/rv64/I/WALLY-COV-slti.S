///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-slti.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.498976
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7b901bdd66948940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x81d5a928a946f15e # initialize rs1
slti x0, x29, 547 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf0b09241889df819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa08b924597c40b1a # initialize rs1
slti x1, x5, -705 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf985d337a62b5eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd275385bc4c61a82 # initialize rs1
slti x2, x11, -34 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x381c0a1dac983c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x524e5b28e475c44d # initialize rs1
slti x3, x25, -669 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x312b9463cc7ae7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdf9758a52bc9a0a0 # initialize rs1
slti x4, x9, 209 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7097b21b0e07b288 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x006733f933747b4f # initialize rs1
slti x5, x1, -1420 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4a2e1567a4928c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6d3c14b59210fddd # initialize rs1
slti x6, x27, -1421 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xad2161bb7c4488b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x522314991c492a3a # initialize rs1
slti x7, x25, -231 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xeab197fab2aa9ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc11ffe41fb7b1d96 # initialize rs1
slti x8, x24, 694 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x1bee91c788b939be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x25b36b815958a118 # initialize rs1
slti x9, x6, -1252 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd0889bc310dd6121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8e795a653df17d12 # initialize rs1
slti x10, x22, 551 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x809ffe8033b45caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xadcdaa2dd85a494e # initialize rs1
slti x11, x23, 353 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa6f7bde72d357ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9b41754bedecbbb9 # initialize rs1
slti x12, x18, -13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x465efc449cfda84e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaec0cc50d0b11735 # initialize rs1
slti x13, x26, -611 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7dd1e42f07bd76cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x568de5d0f0987975 # initialize rs1
slti x14, x23, 164 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x84813c245cd70912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x992320c551d76bd5 # initialize rs1
slti x15, x11, -1236 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0afa926f35071565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xab4de5305f964c2b # initialize rs1
slti x16, x9, 845 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9590c55c7249e419 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6c0921ecab45be54 # initialize rs1
slti x17, x10, 1144 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x13202b40cad6cf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1d5b027575f17b7e # initialize rs1
slti x18, x12, 92 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x2142adce18722ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9c4638e2068de584 # initialize rs1
slti x19, x12, -1888 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x020226b002f53165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa9f0e6f4adae4e09 # initialize rs1
slti x20, x30, -1296 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc1c5dde3d295705a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf63862849de81229 # initialize rs1
slti x21, x10, 265 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8f92d78d6d7a3c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x57aba18071782bf6 # initialize rs1
slti x22, x12, 1720 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7f6d401f57d59d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x273b9bfa35141f78 # initialize rs1
slti x23, x9, 1862 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x75f5469368bd74ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd322352b899cd122 # initialize rs1
slti x24, x30, 915 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x41c7d9d4fdc7c8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdc9463a0dbf1dead # initialize rs1
slti x25, x27, -1206 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0cf48e94348ca0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7e07f15115d79273 # initialize rs1
slti x26, x5, -880 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x493ef23923ed61fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x30db00849705a4a0 # initialize rs1
slti x27, x24, 298 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x523971da13478194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x35d9ad2c6949725f # initialize rs1
slti x28, x22, 1952 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd77d89875ea4cca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x39c350efe51318ef # initialize rs1
slti x29, x25, -838 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9b7beae9d78123c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6412b5ba4c517111 # initialize rs1
slti x30, x25, 1831 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x89110c53b8b4c09e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x70835ae83a75af7c # initialize rs1
slti x31, x1, 709 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x30, 0xefc2326425385031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1ce548de420a8cac # initialize rs1
slti x30, x0, 258 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x3ec4bfe2a823133c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a4935e233bd62b0 # initialize rs1
slti x4, x1, 782 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x3, 0x92622b2fd64b5e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x78dcc99659fdef0b # initialize rs1
slti x3, x2, 344 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x817949d6492062b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x41bf9da71d640449 # initialize rs1
slti x27, x3, -1690 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0x74fec469f6e1049e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb0e793d14d455710 # initialize rs1
slti x15, x4, -1775 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x22, 0x19310c343c5cd2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3c185887b4f06c3f # initialize rs1
slti x22, x5, 1372 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x87a08bda23057b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x30909cb33e591cfd # initialize rs1
slti x17, x6, -1505 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0xfffb0523c9f9700c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x234e763cb8b9401d # initialize rs1
slti x27, x7, -713 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x7b13c11d3ef48246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7e2479155e07b0cd # initialize rs1
slti x11, x8, -707 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x7b4b5958d1305c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x60e5cb78ff33c250 # initialize rs1
slti x17, x9, -1439 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x20, 0xefdc3aabd7315488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xed153ff51e4727e5 # initialize rs1
slti x20, x10, 1707 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xdc66a1eef895dc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdcf2b7c40258b1ba # initialize rs1
slti x16, x11, -1490 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0x7a1ec150258af80a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb94462b069169430 # initialize rs1
slti x27, x12, 411 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x55787d2d8d254028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x94e29e6f49637f5e # initialize rs1
slti x12, x13, -446 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x0bd75f84e41fd152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d281281ed0ffd64 # initialize rs1
slti x31, x14, 623 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0x83f2b9f335201550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0bb064ed4521d3e9 # initialize rs1
slti x30, x15, 926 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x14, 0x1c4147c9058ce877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5672e6d0f0a7d151 # initialize rs1
slti x14, x16, -722 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x4, 0x86d36e6cc3ef2d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdfba45deb1017fd8 # initialize rs1
slti x4, x17, -1523 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0x5c74b8c0326f7454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3b57e2d909d2ac65 # initialize rs1
slti x14, x18, -1773 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x23, 0x5460d43128e5a35e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfc036a3c5a9715d4 # initialize rs1
slti x23, x19, 914 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x82803acec63e53a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x30cb9412fbc50ace # initialize rs1
slti x2, x20, -1919 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x7cb0e9db61fca780 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xed84cd9a89f3d75b # initialize rs1
slti x29, x21, -1609 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0x47d2058f8446f2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xde6c590cb5939632 # initialize rs1
slti x24, x22, 1458 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x3, 0x0f5de56d941fa004 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb32dfe73e13c0f02 # initialize rs1
slti x3, x23, -1552 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x94e7c89170a9016e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x075c531240da04a2 # initialize rs1
slti x15, x24, -1753 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0xa6a5bb69c65d0f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaac7fb9aabf63185 # initialize rs1
slti x1, x25, -1793 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0xab1ad9aa73ffb420 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6a4f8ab464f68002 # initialize rs1
slti x25, x26, -1689 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0xc46f418c4784d8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x18af2ebbd1305eb1 # initialize rs1
slti x1, x27, -1007 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0xf217ea354d1b65bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3e823aeb2e107a2a # initialize rs1
slti x4, x28, -389 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x960b38b31166f7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x840f53b248c8a575 # initialize rs1
slti x1, x29, 1854 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x4373cfac7637b4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe56a338bbdeede90 # initialize rs1
slti x9, x30, -233 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0xbeebb521a4d480ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xac9888c0b37dfbd5 # initialize rs1
slti x13, x31, -363 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x9631da4dae354253)
li x18, 0x7c011af3a5c9eac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7c011af3a5c9eac7 # initialize rs1
slti x18, x31, -482 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0xff89316bf4d5dfe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs1
slti x13, x14, 1479 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x6b3a31d2a76cb0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
slti x18, x26, -812 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x05714f6c09575531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
slti x5, x1, -691 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x0f6f87b7946377e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
slti x21, x31, -883 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0xccecddc40a67ee7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
slti x11, x23, -218 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x97e7488ce1148723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
slti x11, x18, -257 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x1e39125c6eef1b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
slti x30, x22, 341 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x4, 0x3a85d45e907d9a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
slti x4, x9, 1577 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0x2c80a5a7e39d4feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
slti x24, x14, -973 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x7, 0x8148227d441cc648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
slti x7, x31, -367 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x936be5889e823b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x30, x6, -15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0xe40151c570acf6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
slti x2, x21, -1761 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x6b978bd14a4ecd67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
slti x19, x26, 1119 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xc46448560c818e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
slti x8, x24, 141 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x6dde0fb5de23263c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
slti x9, x8, -539 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0xf8b324f5424b80e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000001 # initialize rs1
slti x9, x20, 1085 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xba442585f9ff43a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd7cecf36322d3754 # initialize rs1
slti x0, x0, 1526 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbbd88487dedc9c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4901924c1d243e74 # initialize rs1
slti x1, x1, -537 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x25dfe66d586cfb1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x19aea3f0b89f6cea # initialize rs1
slti x2, x2, -2028 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2ecbffc452db2ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x665d6d77b44079b0 # initialize rs1
slti x3, x3, -995 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x2afdc730ba68312c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x11bd751a3a8e29a8 # initialize rs1
slti x4, x4, 1923 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xcbffc88add418587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc48b5b7843372e81 # initialize rs1
slti x5, x5, -1467 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x340cb4790066fd10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9444b8500b4e36a3 # initialize rs1
slti x6, x6, -1218 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x541b80a2961cb1ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xadf7c8c6aae0ab90 # initialize rs1
slti x7, x7, -1921 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x59b7bad938cc4f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4d2d10e9a96aafbc # initialize rs1
slti x8, x8, 880 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbfc566c13c9b10c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbd98c04d90294a9c # initialize rs1
slti x9, x9, 1347 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0170464bb12abf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x98dedb23aed32170 # initialize rs1
slti x10, x10, 1118 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xafc73704d27dcfcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1289387318168d7c # initialize rs1
slti x11, x11, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb903db951bd980fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7015e59643cfe6d4 # initialize rs1
slti x12, x12, -1359 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1c6a13685a2519f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x08c22b108aa038a0 # initialize rs1
slti x13, x13, -1079 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x76eacdb09f679c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1517981ddeb4321a # initialize rs1
slti x14, x14, -1020 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xab2d3887063d9cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9f083a8d41220888 # initialize rs1
slti x15, x15, -1073 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb3cdc83b275567a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfe7d275731321276 # initialize rs1
slti x16, x16, 371 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9a69dd412cf25ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcd7147f1aafcadaf # initialize rs1
slti x17, x17, 1181 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4317d3b35cde0958 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2cc8735f072e576a # initialize rs1
slti x18, x18, 1252 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3c8698e057f28c22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf7614d6811933d6e # initialize rs1
slti x19, x19, 1048 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6d27379a98003093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x63e261b7db3135d5 # initialize rs1
slti x20, x20, -386 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa96010c8224e5370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf350ab13ace9bdda # initialize rs1
slti x21, x21, -668 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x04a1f8eb2a0aafd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb9caa3c5ff0b5267 # initialize rs1
slti x22, x22, -257 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbcf4a0d76b2a4abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdf9e97051a4f3ec6 # initialize rs1
slti x23, x23, -1749 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf2971b3f0aae7fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc67aa3985c34c2cb # initialize rs1
slti x24, x24, -728 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc3eee361c0836262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf35500cb966adb52 # initialize rs1
slti x25, x25, 1171 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3d6f6ec0165db487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b446e31096af63b # initialize rs1
slti x26, x26, 1730 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xac87e646304b5d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2a89eff828c1ccac # initialize rs1
slti x27, x27, -108 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2492f640c4462a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf01ad15f6fe29673 # initialize rs1
slti x28, x28, -590 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x30db4dcfc638d0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe1822fd942177cb9 # initialize rs1
slti x29, x29, -159 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb0daf34981b26fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x29b9b72f017a327c # initialize rs1
slti x30, x30, -2005 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb237ec695d1826be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x33526ff5840ebd9b # initialize rs1
slti x31, x31, -435 # perform operation

# Testcase cp_imm_zero
li x19, 0xb959a7850ec7b211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc9cd466bfb4de60a # initialize rs1
slti x19, x18, 0 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 0 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 1 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 2 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 1023 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 1024 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, 2047 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, -2048 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, -2047 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, -2 # perform operation

# Testcase cp_imm_corners
li x28, 0xe40f6cdf3a664e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x57215cd3b486dddd # initialize rs1
slti x28, x7, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc887763ae86f7 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs1
slti x2, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x2, 0xdf70a478fa600664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
slti x2, x27, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
