///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-ori.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.487850
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xa1e8ef890bb63e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7c035a42ce41348d # initialize rs1
ori x0, x18, 846 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x806a135aa3dc1c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcee025bca1b789c9 # initialize rs1
ori x1, x21, -1781 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x461c7f3b6c02a19d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6e02ae4eca7b99e1 # initialize rs1
ori x2, x20, -814 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe548097e18072134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x377387e4a114323b # initialize rs1
ori x3, x19, -1184 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x50f3fcba022310c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf00af14d5aacb650 # initialize rs1
ori x4, x30, -1245 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x670549e4524774dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf3b9e2a3bf4dba7e # initialize rs1
ori x5, x20, -143 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc57be870cea23971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd4d0ea53543685af # initialize rs1
ori x6, x9, 88 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe04eb716c388bee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x835428d7eef5fef0 # initialize rs1
ori x7, x18, -586 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x28521dcfcebb098f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4af1e5a666a0a2ba # initialize rs1
ori x8, x16, 1111 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6ba9cbe4882ba886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3ac46b3874a03dc4 # initialize rs1
ori x9, x16, 680 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5cfe783722b5585c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d153f3b9ad35ccd # initialize rs1
ori x10, x14, 1989 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb1dc3093e19a3220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x42bc57e7828a37cc # initialize rs1
ori x11, x14, 689 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8f2621cb499e7dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2bfcdb47317f46e3 # initialize rs1
ori x12, x18, 1422 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x35a6b709930b29c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80e15b8ae60149ec # initialize rs1
ori x13, x12, 1741 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7c0bde89bf9834d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9ba501a4d2a99ab5 # initialize rs1
ori x14, x30, -540 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x818d13316731554e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8c1eebdc81c5d07e # initialize rs1
ori x15, x28, -406 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x98384d6f4a50f718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe088ba520022c417 # initialize rs1
ori x16, x22, -1610 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7558742df0ce1b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa343f438d123b016 # initialize rs1
ori x17, x20, 369 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xfa69fe8339b5db1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1c1a03b6972a0489 # initialize rs1
ori x18, x11, -573 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x19fad8b2a27fbae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x78f2ab18826000bc # initialize rs1
ori x19, x19, -359 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x1395cde687a7b70e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb6337f8b8a9f6c82 # initialize rs1
ori x20, x8, -17 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2d7d0f26e89352e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xca7b07c0b5211adc # initialize rs1
ori x21, x22, -914 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5ab9414625b5f130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x46959d85ff6cd88d # initialize rs1
ori x22, x6, 1177 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x4f25c08a25a1f22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaeb340095c95393c # initialize rs1
ori x23, x26, 215 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc9d2e1fcc6f8f5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xebcb7fcc55983bbd # initialize rs1
ori x24, x29, -1437 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0b3752c5eef00da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xccd258e2349b27fb # initialize rs1
ori x25, x6, 342 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xde57c30dc06b87fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5d805dacf81df60f # initialize rs1
ori x26, x20, -1947 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xca4e3d27c04080d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdf1aa4bb9502f5e3 # initialize rs1
ori x27, x22, 1527 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x72630f529399afe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x04d22d98760a55a5 # initialize rs1
ori x28, x8, 1528 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x094853f2200ececf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4016115eef830a7b # initialize rs1
ori x29, x28, -62 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xed2429882dfb73b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b9277f86f42958f # initialize rs1
ori x30, x26, 891 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9aa91ca4257343b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x02d7fbb667923141 # initialize rs1
ori x31, x4, -786 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x21, 0x9ce8aaddab6ec467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0bc4c064a9acae5d # initialize rs1
ori x21, x0, -277 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x8, 0xdac0ed7e4fcbb2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8591e370b73b5db5 # initialize rs1
ori x8, x1, 274 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x4ed9ec5962ee1463 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x98a36b42580cafa8 # initialize rs1
ori x1, x2, -112 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0xddc2a675b9946c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x633b624f1e37573d # initialize rs1
ori x25, x3, -652 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x31, 0xe1c5d5bc0a69a35b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x01e87ea3f47a91d1 # initialize rs1
ori x31, x4, 757 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0x8b012a3f963afefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x16a5d4f3534ae202 # initialize rs1
ori x8, x5, -1285 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0x84f034c941fa63e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55a936ced6903140 # initialize rs1
ori x18, x6, 242 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0x41d41bd34041715a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1b463e374647cfa3 # initialize rs1
ori x5, x7, 730 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x8802ae334464a3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc0336c6acac65a40 # initialize rs1
ori x19, x8, 1045 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0xe7043f50d6766451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf8e3147cdf41ff0b # initialize rs1
ori x23, x9, -1659 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0x776835944fd7d9ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1a0d44f8d0b86f32 # initialize rs1
ori x17, x10, -995 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x18, 0xd428e30d3bc75b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x19f77c53faccb965 # initialize rs1
ori x18, x11, 574 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0xfe8830e7ca0dfa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaa839184cbdfc054 # initialize rs1
ori x2, x12, -448 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0xfdd0b909da3ab145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9f8d8093bdc96fab # initialize rs1
ori x17, x13, 330 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x0a8b5b914282b21f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xecca761e66034299 # initialize rs1
ori x3, x14, -1988 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xa11c8305ad33706d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4dbbcc946f529b1e # initialize rs1
ori x13, x15, 1971 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0xfa74bdc5d9761ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xacc9c6a7ecc36f49 # initialize rs1
ori x4, x16, 1041 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x6a077174e05d4b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdbfd7d15ed4f246d # initialize rs1
ori x28, x17, 526 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x83023f74511cd876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb735726e5fe2ac2b # initialize rs1
ori x22, x18, 1149 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x7a2f098c0fcbc791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xca29627076af2a77 # initialize rs1
ori x21, x19, -1191 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x008c5e6fbd917c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1c6f14d3cfc23007 # initialize rs1
ori x15, x20, -1007 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x00772c22a2261954 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4597a6f72d2e9ff6 # initialize rs1
ori x5, x21, -115 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0x52bef26d1e9c950a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb41d97f63700e6c0 # initialize rs1
ori x12, x22, 1860 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xd030bed01ff7390a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4bdde0ce8e0e3811 # initialize rs1
ori x30, x23, 641 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x494955cf324c0198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1a010f4a89dc5311 # initialize rs1
ori x14, x24, -689 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x69bd7cc6350167ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe0e34ebd814b3aec # initialize rs1
ori x10, x25, 1420 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x8, 0xfd27ab7959e3370f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x355f467394d02b41 # initialize rs1
ori x8, x26, 1048 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0x6c065c87d8ee36d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa7fad2032c89246d # initialize rs1
ori x29, x27, 1999 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x25, 0xe37ef8aa0b7205a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6393edbf279e5163 # initialize rs1
ori x25, x28, -1852 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x28, 0x65f382a31058f1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbd25f2f84ffbff9f # initialize rs1
ori x28, x29, -1399 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0xf8f2b8f8f25bddd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa56417f9483124fc # initialize rs1
ori x10, x30, 1454 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x128a3f9e35b32070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd41c4e7267984b10 # initialize rs1
ori x10, x31, 1089 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xcea3c1cb4b8b925d)
li x27, 0x3eeb333f113deb67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3eeb333f113deb67 # initialize rs1
ori x27, x3, -2034 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x2a2ad23115027fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
ori x12, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x014257c322f55bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
ori x28, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xa2f4cc0a261bd94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
ori x26, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x5e7c423fa0cfdc38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
ori x6, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x7087c3bfa0fe1d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs1
ori x16, x1, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0x4f6d5ee6797ec740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
ori x1, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x4df25820726098d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
ori x8, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x9c0c9dd47b31df78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
ori x9, x7, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x327300b59d0a62e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
ori x24, x13, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x28, 0xae1a23ec7c70b65b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
ori x28, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x25, 0xb25bcd70bc5deaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
ori x25, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x19, 0x0134da501234587e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
ori x19, x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x8, 0x43d85742b275dffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
ori x8, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x28, 0x3050483181a37691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x28, x24, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x6, 0x884dce2245aa02b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
ori x6, x22, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x2, 0x763c9ecdc7e959b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
ori x2, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x25, 0x9839a397276cb003 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
ori x25, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x2, 0x8f7ae4926f1834bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
ori x2, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x20, 0x9a8f3e6197a16bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
ori x20, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x11, 0xfb18e62b9607c70d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffffffffffe # initialize rs1
ori x11, x4, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x14, 0x5bb800efa73095ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
ori x14, x13, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x26, 0xcacfc9aecdaf9517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
ori x26, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0xdee60f63d0a57879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
ori x13, x8, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0x3f52047db56e3e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
ori x3, x9, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x23, 0x9f7a5e7b0711b4b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
ori x23, x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x4, 0xa5b072f9c95bfcf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs1
ori x4, x27, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x28, 0x144f8d5e86e499c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
ori x28, x1, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0x6621a0e1eecd4cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
ori x31, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x12, 0x0bb72096b13cab5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
ori x12, x31, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x24, 0xc3cca03e7727fd9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
ori x24, x22, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0f3ca0e23bd37902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x21, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x1c40cb8e189c1324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x16, x19, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x295c20b6d9c4e5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
ori x23, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x15, 0xd2ab55e71bb32a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
ori x15, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x7, 0x338b65e58cc63d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # initialize rs1
ori x7, x16, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x21, 0xe89a86409d09e7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
ori x21, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x15, 0x92441f07616e08f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize rs1
ori x15, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x0306bb072dcc472c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
ori x1, x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xadc6393347d27603 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
ori x20, x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x494b0a088289e05a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
ori x7, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x20, 0x83fd3e665264d636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
ori x20, x19, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0xe67b2d250532edf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
ori x10, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x20, 0x492ee094fc629e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000000 # initialize rs1
ori x20, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x17, 0xf180e45d8951d73a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000000 # initialize rs1
ori x17, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x11, 0xd6d9c8577a70637d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
ori x11, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x5, 0x50180bdd077fc58b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs1
ori x5, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x29, 0x3e2edb8ec33259cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
ori x29, x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x6, 0xb2e73c252ff43a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
ori x6, x14, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0x3cd5f88e8ff86a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
ori x5, x23, -1408 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x8849b97404832b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
ori x5, x22, 2036 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0xad650a8e0ece1f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # initialize rs1
ori x19, x7, 516 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x40d7285986302f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
ori x25, x30, 1307 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x21, 0x94d86feadde4d5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
ori x21, x23, 169 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0xcb3193f2bbd86b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
ori x20, x26, -1416 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x2, 0x54f8ba038a9a08e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
ori x2, x7, 1610 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0xe308fd625c5f8366 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x3, x24, -1462 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xdf69b35f89de077c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
ori x17, x11, 8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0xc314427c1f8d8f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x15, -417 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0x19bc4f917948f1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x30, x4, 126 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x3d497914c82b1131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
ori x12, x23, 85 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x0babd74f44191e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
ori x19, x30, -1575 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xf381080c5fc7bf44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x2, x24, 104 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x43938e296b5674b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs1
ori x2, x17, -475 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x97712b4076286079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
ori x10, x11, 1507 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc83e270ffc82e950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6948290b3b256485 # initialize rs1
ori x0, x0, 601 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x23f7a6e2de3a62ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x05e1a6ebbcef7c8a # initialize rs1
ori x1, x1, -736 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x819cf7eb00c14dff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5b36ccac38fbec3d # initialize rs1
ori x2, x2, -1780 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9f5de2e6c8402e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x14674a2cd33114ff # initialize rs1
ori x3, x3, 730 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x80f4d9d7ca75f28f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5aca20f0106444d5 # initialize rs1
ori x4, x4, 1540 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7b00b07f2e8791f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x76300252ad8e1bff # initialize rs1
ori x5, x5, -909 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x68eca13a17160ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb1c34e95a543375e # initialize rs1
ori x6, x6, 1974 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xeab776b99d4bfc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0eeb789633408f1d # initialize rs1
ori x7, x7, -491 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf791b925936fdcd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3e5b15e0e6ea79f5 # initialize rs1
ori x8, x8, -1398 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6e8e8777abc0f47c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3cc5c2529140b832 # initialize rs1
ori x9, x9, 1428 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd40f5afd01d6a05c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a0c3d363097e7a5 # initialize rs1
ori x10, x10, -1103 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x383e7e9dd53c2cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7957bd77a3bd1dfd # initialize rs1
ori x11, x11, -1043 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xffcc3e49ea35ac6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9a07c9b06809c5c0 # initialize rs1
ori x12, x12, -1726 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0752f1b1c47feb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x25ed75d16d97fa51 # initialize rs1
ori x13, x13, 1478 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3ea46b8b3205e866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfd0fd9d2a49d3e05 # initialize rs1
ori x14, x14, 2021 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4d67b2e8d180287a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3b57e150f9ea82db # initialize rs1
ori x15, x15, 887 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6f35fe1956c4b32d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x183ba706ec6886db # initialize rs1
ori x16, x16, -883 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9bbbb256989a8b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb2510770376b5650 # initialize rs1
ori x17, x17, 375 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x93acc53ef85bdec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4193f8fff2708689 # initialize rs1
ori x18, x18, -388 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6cf43aa3f8cb6f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9cbf89de37b82926 # initialize rs1
ori x19, x19, -1411 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc7f58c7100739deb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2572d2d6f33bfb53 # initialize rs1
ori x20, x20, -1054 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb6ab8a4984b57a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x618ca9134ecf7e6a # initialize rs1
ori x21, x21, -1696 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa6e68e330fd5cf76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdbc67949d8649277 # initialize rs1
ori x22, x22, 1198 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x759f5ffffcb3e1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc480d324c1c9cf72 # initialize rs1
ori x23, x23, 138 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe9f8685a453aac11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8600af7a5a30c6d4 # initialize rs1
ori x24, x24, 1384 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xad1767148a98ee26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc656e2dc9e1bece7 # initialize rs1
ori x25, x25, 132 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0727e95ca8b45735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4be6f6d16988ccd1 # initialize rs1
ori x26, x26, 1492 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x45e8f0dac8fba533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2e5c2f9c1f4474cc # initialize rs1
ori x27, x27, 648 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfcac159af6f2a187 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4182fff5d58f67fa # initialize rs1
ori x28, x28, -941 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3c4cfdd4edafc1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x375b143a14dc093a # initialize rs1
ori x29, x29, 1222 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3f80574f09dc26d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2928bf6aa7440368 # initialize rs1
ori x30, x30, 1368 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfd23d9073b0d7d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb08a59fb264fc7ff # initialize rs1
ori x31, x31, -1416 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x24def4afdee9b7cc)
li x9, 0xa2fc02997354050d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x24def4afdee9b7cc # initialize rs1
ori x9, x7, 1556 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x11e27785501b4d2f)
li x18, 0xa831cc310847853c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xee1d887aafe4b2d1 # initialize rs1
ori x18, x24, -1894 # perform operation

# Testcase cp_imm_zero
li x8, 0x08ed94c1c2d2e915 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb2ec2e99c1c3f3d9 # initialize rs1
ori x8, x4, 0 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 0 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 1 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 2 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 1023 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 1024 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, 2047 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, -2048 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, -2047 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, -2 # perform operation

# Testcase cp_imm_corners
li x23, 0x9e4a5f31e9cb2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4094be834a8036c9 # initialize rs1
ori x23, x1, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000002 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc887763ae86f7 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5555555555555555 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
ori x25, x24, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x25, 0xabe103c90e77a37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000001 # initialize rs1
ori x25, x24, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
