///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-mulh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.660304
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x25f0f72edb5e0095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1315fb1fd30c0941 # initialize rs1
li x6, 0xdd0d16a02e57af7c # initialize rs2
mulh x0, x21, x6 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x18ff62d9507eb071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x21c8d9cefa88411f # initialize rs1
li x6, 0x4f504029a71cad92 # initialize rs2
mulh x1, x29, x6 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x9cb9b8f0bb7cee91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0ed0d790356c280c # initialize rs1
li x19, 0xfc703bb1c4b1ea88 # initialize rs2
mulh x2, x20, x19 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4664f721a94b25a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2cb32a7d60dc568e # initialize rs1
li x12, 0x868baf330b37aa9a # initialize rs2
mulh x3, x20, x12 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x371dc56f33d29d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa7224202180582ea # initialize rs1
li x1, 0x360733267fefb68c # initialize rs2
mulh x4, x15, x1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7f22ebf93705fb91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8917860f88b007e5 # initialize rs1
li x5, 0x0d72695055743aa3 # initialize rs2
mulh x5, x14, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x75ad69f44582d996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x3f166960cc4b0521 # initialize rs1
li x6, 0x19d005b9c75920c9 # initialize rs2
mulh x6, x25, x6 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x1948653dc7337794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5b41a216392de1d2 # initialize rs1
li x16, 0x44af4c4dd3f4ef43 # initialize rs2
mulh x7, x6, x16 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9123a90a7c0e01fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x236d66cbdf00e080 # initialize rs1
li x2, 0xdb2da26d5ec929e5 # initialize rs2
mulh x8, x11, x2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb4698b394feb33e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x88f75e0df3943173 # initialize rs1
li x30, 0xab4e84d6dbbe2e90 # initialize rs2
mulh x9, x24, x30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfbaa5faa4b898c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd61c1c5610097e9e # initialize rs1
li x11, 0x7304b25e0570a93d # initialize rs2
mulh x10, x21, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xaafa256fab48103b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x93b393d4f296e2f6 # initialize rs1
li x26, 0xe9c04cf72158f0e4 # initialize rs2
mulh x11, x15, x26 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x56fb095a44eba7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x13e756e6aeaa1282 # initialize rs1
li x7, 0xaa2a38280d4a8da6 # initialize rs2
mulh x12, x24, x7 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9657bf6305efb5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa67c9983b7dbabf4 # initialize rs1
li x12, 0xbcf33f3448d88686 # initialize rs2
mulh x13, x29, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x4af9606dfb0c4473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6b53f3e15351abc2 # initialize rs1
li x23, 0xcc2523c1a64b7848 # initialize rs2
mulh x14, x2, x23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1ffa791e8fab644e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x01f46ba9b6110613 # initialize rs1
li x18, 0x06151c7e3cbfd9f4 # initialize rs2
mulh x15, x11, x18 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x69b36cc4a11a2b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdc160fb8d59b711d # initialize rs1
li x25, 0x4d541c42e08cdfc5 # initialize rs2
mulh x16, x23, x25 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x005135ba370b0171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x68ac8455a48be16a # initialize rs1
li x28, 0xd86467328f9c72c6 # initialize rs2
mulh x17, x30, x28 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1891ed25cdc38eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xca441e1318f4fd2c # initialize rs1
li x2, 0x72b907d4e51ef281 # initialize rs2
mulh x18, x8, x2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x42e9f3a59161251a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x92dc8e2dcfc69650 # initialize rs1
li x29, 0x78841165c2a9b7f3 # initialize rs2
mulh x19, x22, x29 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x43f044553a8c59d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xecb0f949502d5317 # initialize rs1
li x3, 0xc2282a7063dae71f # initialize rs2
mulh x20, x23, x3 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf742b4e288fbabd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa2d145a7a178ea2f # initialize rs1
li x7, 0xd422fcae2b8c95c0 # initialize rs2
mulh x21, x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x189e4f975a096a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf0dd61eda5ca6c87 # initialize rs1
li x9, 0xfd4ea4b7e610718b # initialize rs2
mulh x22, x20, x9 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x12394ea311ff33ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3b0a781d34349580 # initialize rs1
li x14, 0x42162627240a7a45 # initialize rs2
mulh x23, x5, x14 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xeb4a4b57317af3fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x32204ab8a0690c28 # initialize rs1
li x19, 0x6d52c969dda1f442 # initialize rs2
mulh x24, x26, x19 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x8653b115c835cd6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xac123adc49cc370d # initialize rs1
li x26, 0x42f4c0146ddc34f5 # initialize rs2
mulh x25, x10, x26 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x75efa2f9c9c5a614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xca537c9e9deb7184 # initialize rs1
li x29, 0xfb8f26e2bf9d105b # initialize rs2
mulh x26, x16, x29 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xc99abc7e3eb42249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbda96fba038d7416 # initialize rs1
li x5, 0x643ba77a4aa560dd # initialize rs2
mulh x27, x11, x5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0c8dd8d734b32ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf2f27eae2fe5c186 # initialize rs1
li x9, 0x6a75a0a4cf7ddeb9 # initialize rs2
mulh x28, x18, x9 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x0b56a11f9a712f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7dead760f167217a # initialize rs1
li x18, 0x0eea450d5b9a8d1d # initialize rs2
mulh x29, x14, x18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x84d03a1386848d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4fffd6f33d85b8ab # initialize rs1
li x22, 0x280c70fb43d9f2bb # initialize rs2
mulh x30, x6, x22 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x585f131b19379582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2968c54b455313f6 # initialize rs1
li x25, 0xb53d403e26781b41 # initialize rs2
mulh x31, x6, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x15, 0xaf2f4ffc9e2821da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7b27c7554480eda5 # initialize rs1
li x26, 0x9d683ce1a62c59b5 # initialize rs2
mulh x15, x0, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x8, 0x617b4b5c76efca6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1792eccb7b549d0b # initialize rs1
li x20, 0x45f08a0b0c2d7a6e # initialize rs2
mulh x8, x1, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0x7e761ad6c51e904b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8e65affc9ed86adb # initialize rs1
li x10, 0xeeca1061445d6006 # initialize rs2
mulh x30, x2, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x2ae4f8b47a88dd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3f46f034d771577b # initialize rs1
li x14, 0x693dd2b6e3d16e25 # initialize rs2
mulh x1, x3, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x26, 0x20bcacde9c7b41e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe7e1ad61191f763c # initialize rs1
li x1, 0x6ff35890a487a8f6 # initialize rs2
mulh x26, x4, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0xbfc0d73ae98e5f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x62288f8a0215ff57 # initialize rs1
li x31, 0x80fcf1e553a7313f # initialize rs2
mulh x15, x5, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x19, 0x46f86f715b7b9257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x667be3f0ac0d3c92 # initialize rs1
li x12, 0x78e071e5ef82686f # initialize rs2
mulh x19, x6, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x2, 0xcacf2afbf7a7b893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc4b94c227c6811e2 # initialize rs1
li x18, 0xbaaa44a854195dc5 # initialize rs2
mulh x2, x7, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0xe07cb0e25b3e0e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd6d6e69fbff2adce # initialize rs1
li x7, 0xd7f047f6647ddf99 # initialize rs2
mulh x19, x8, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x2, 0x4a085e60cace9316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf8b53702ede7f6bb # initialize rs1
li x20, 0xf18cec0aea1f88c0 # initialize rs2
mulh x2, x9, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0xdad953310b358a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa0fd882ee0bdb375 # initialize rs1
li x13, 0xce034ab0b3b71faa # initialize rs2
mulh x14, x10, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x2, 0x5e85feeb75512135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd54fb3d5f51fc2f # initialize rs1
li x19, 0x7a446b420c20454e # initialize rs2
mulh x2, x11, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x1bdedadf0c8531da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7cddb424b0112c27 # initialize rs1
li x2, 0xa6e2cdd4fd43ff67 # initialize rs2
mulh x7, x12, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0xb051397d8a135656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6891eb6bf6fb7412 # initialize rs1
li x19, 0xf9694faf75766c6c # initialize rs2
mulh x27, x13, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0xdb1ca2b2f7362825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x318f3da488bf31e2 # initialize rs1
li x4, 0x1b0f76c267f9da7c # initialize rs2
mulh x22, x14, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x4, 0xf7caebe7a7881189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x479b090eaafa0bc9 # initialize rs1
li x11, 0x2f3ff52be8de93d7 # initialize rs2
mulh x4, x15, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xa84cc2f545787d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5070e83ab41aad6a # initialize rs1
li x7, 0x162e1aec28318c62 # initialize rs2
mulh x2, x16, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x3eaa99d6d7d0a1ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7e461153d99fb82e # initialize rs1
li x1, 0x052a7ea7683f37bf # initialize rs2
mulh x30, x17, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x17, 0x3e2758d3cc610ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe639a174629e484a # initialize rs1
li x25, 0x8e50f88bb1a182e0 # initialize rs2
mulh x17, x18, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x2b83f89a6b0fca95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8a782515a8e683ac # initialize rs1
li x8, 0xaeb0b26db96e6984 # initialize rs2
mulh x7, x19, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x6c7965b20a039934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4f07f4cf903581b2 # initialize rs1
li x4, 0xa722ff59074e7e8f # initialize rs2
mulh x21, x20, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0x453816dbecd98e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdc83c40a316ac6e6 # initialize rs1
li x19, 0xcfbd8afe88214760 # initialize rs2
mulh x22, x21, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0x019d9e06a154a282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2c2229aa1917f5ad # initialize rs1
li x7, 0xafa1673ada85fb0a # initialize rs2
mulh x5, x22, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0xbf4613c100307240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x23315d727c02ca5a # initialize rs1
li x22, 0x877b2ba8570aa5ef # initialize rs2
mulh x7, x23, x22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0x03d6b38b628c17d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9b787dba48d7f3ba # initialize rs1
li x25, 0x3b7be349d9902ddd # initialize rs2
mulh x19, x24, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x9719e5cfa0fb18a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x15b30e0776b9fc7c # initialize rs1
li x29, 0x05f5cc1790019935 # initialize rs2
mulh x31, x25, x29 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x412a63f2131b816b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7f8698db67146f28 # initialize rs1
li x13, 0x8c6ffff594c8a604 # initialize rs2
mulh x1, x26, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0xafae4a0d0d34dfd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x87629746573f0353 # initialize rs1
li x30, 0x1d3702b4cf4fafd1 # initialize rs2
mulh x14, x27, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x07a49b42d1e15330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfe1ccef528b35aa2 # initialize rs1
li x6, 0x46908f4feb2b0a5e # initialize rs2
mulh x17, x28, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0xbf38f3fe2dad4be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb4fb736b0b2082cf # initialize rs1
li x26, 0xc0a3945f728cc98c # initialize rs2
mulh x18, x29, x26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xf42a7eb9ca51a072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5786656b86e0e3af # initialize rs1
li x1, 0xec2a23d9173f8dc8 # initialize rs2
mulh x3, x30, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x1165da4506146d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x75695827f0134c92 # initialize rs1
li x14, 0x3ada412f23012d0f # initialize rs2
mulh x19, x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x28, 0x0dcf531274d3ed81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x47acdca0e717cabf # initialize rs1
li x0, 0x4611e7c4803cdd18 # initialize rs2
mulh x28, x7, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xa0ed8ac1b5b91490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x86b1e8286d6a3696 # initialize rs1
li x1, 0x2faf8f5324341db5 # initialize rs2
mulh x14, x16, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0xd2fc03a9447bf3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc514627905602f85 # initialize rs1
li x2, 0x68df7c849eb0ab97 # initialize rs2
mulh x23, x31, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0x8f1777ebc072a3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb26af8b2d4fbf325 # initialize rs1
li x3, 0x9b7ed0b83a67a7e7 # initialize rs2
mulh x25, x5, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x19, 0x9cc9440688d3efc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8c80638109118200 # initialize rs1
li x4, 0x53485c53b866325a # initialize rs2
mulh x19, x14, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x29, 0xaa1e3c2a06a1b41d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe300e4e58e260654 # initialize rs1
li x5, 0x63c6034c26882c2d # initialize rs2
mulh x29, x19, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x16, 0xc6073a57f579c215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x70bc713644b95bf3 # initialize rs1
li x6, 0x94a2c0c0b8cfe5f9 # initialize rs2
mulh x16, x5, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x23, 0x523624177606d008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe46fce0317d2b5a1 # initialize rs1
li x7, 0x9544be70cf2d88aa # initialize rs2
mulh x23, x1, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0x9d58d10bbebfc01c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8cffbac5d8b1d63f # initialize rs1
li x8, 0x8d95de4673589c64 # initialize rs2
mulh x6, x19, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x7506bacccb4581d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x66ae5b7bfc27c522 # initialize rs1
li x9, 0xfc665f79f7a3b12b # initialize rs2
mulh x1, x26, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0xb54663d0cf36b924 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x774a9d7d01b2f66a # initialize rs1
li x10, 0x9bb7a6433006253b # initialize rs2
mulh x29, x26, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x732da6b9608b3b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5a3a98697848164b # initialize rs1
li x11, 0x678443ddc582bff7 # initialize rs2
mulh x18, x7, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x27f3255362584594 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x746772d36b90f87a # initialize rs1
li x12, 0xb5477f37c6a19ac3 # initialize rs2
mulh x27, x1, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x0ce1642792883728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x827ee3c50c6274ba # initialize rs1
li x13, 0x1721c9340c7a0bb2 # initialize rs2
mulh x8, x27, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x5, 0xa62a3d72e7ae58db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x683096785f857c5f # initialize rs1
li x14, 0xd4b2641482ee5c58 # initialize rs2
mulh x5, x16, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x21, 0x64fae27e5ab7b7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8bde09e114802b21 # initialize rs1
li x15, 0xf1bb731cbcf6f308 # initialize rs2
mulh x21, x19, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0x56c388ed87aed1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x54dd4330513b05a5 # initialize rs1
li x16, 0xeb63406ad6148638 # initialize rs2
mulh x5, x11, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x2c41ef7b37bdbe8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb84a0aedd94a1690 # initialize rs1
li x17, 0x20fe82a344903e14 # initialize rs2
mulh x8, x5, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0xce6f7e3cfb7bd049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6cd9d81605fa8775 # initialize rs1
li x18, 0x58503f2af9e64353 # initialize rs2
mulh x20, x21, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0x6655e4a5ad848a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x587f5e2100b39e5f # initialize rs1
li x19, 0xcb05f419010ae745 # initialize rs2
mulh x16, x24, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xbcaf49170b38c331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7b7b59996a41ae70 # initialize rs1
li x20, 0xfa94f9a4b60b05b4 # initialize rs2
mulh x11, x8, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xf31c293281382887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9ac637ac6eee0bf3 # initialize rs1
li x21, 0x37f79aad67e6e600 # initialize rs2
mulh x31, x12, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x29, 0x1ca91c4f8e63289e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xee3159203b5dd914 # initialize rs1
li x22, 0xf32234a33fddea90 # initialize rs2
mulh x29, x19, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0xe10350374df2a8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c2576dbf2be4489 # initialize rs1
li x23, 0x82bf4911bbd0be73 # initialize rs2
mulh x14, x8, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x034dcdaa4deec7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc457b76f9539d5d7 # initialize rs1
li x24, 0x05038802156a6b7f # initialize rs2
mulh x6, x21, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xeaf335322c140acf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x33929dd20d85dc4f # initialize rs1
li x25, 0x5b26ac2f5c4fb606 # initialize rs2
mulh x23, x12, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0xb5ee88f8b2f43a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3eba3ccc229e60b0 # initialize rs1
li x26, 0x3e0eaa498dba243c # initialize rs2
mulh x16, x6, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x7138bc5c383029c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe069d8a05f112fe3 # initialize rs1
li x27, 0xeef8f7458dd41131 # initialize rs2
mulh x7, x26, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x54eca060b26aec21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ba9a0596c12c587 # initialize rs1
li x28, 0x438a983c05923619 # initialize rs2
mulh x12, x15, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0xb82f46201900757f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x75b410df6f2e2632 # initialize rs1
li x29, 0x528c6b84e8a75537 # initialize rs2
mulh x1, x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x21aa0e15e3e36a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xedf151247829fd57 # initialize rs1
li x30, 0x2aac670f1408707e # initialize rs2
mulh x4, x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0x693e1c4c91ae77e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4988dcc277dc4d93 # initialize rs1
li x31, 0xc404934894456718 # initialize rs2
mulh x6, x20, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x335db1695ef5ce03)
li x3, 0xb666ac254d7ed26c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb666ac254d7ed26c # initialize rs1
li x0, 0xe4b9817c41c5d64e # initialize rs2
mulh x3, x15, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xa6c1a1f853dbec0a)
li x21, 0xa6c1a1f853dbec0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa6c1a1f853dbec0a # initialize rs1
li x10, 0xa6c1a1f853dbec0a # initialize rs2
mulh x21, x0, x10 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xd5f49d8ff3a87719)
li x12, 0x06df53cd17163617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd5f49d8ff3a87719 # initialize rs1
li x20, 0xd5f49d8ff3a87719 # initialize rs2
mulh x12, x4, x20 # perform operation

# Testcase cmp_gpr_hazard raw test
mulh x30, x28, x2 # perform first operation
mulh x2, x30, x9 # perform second operation

# Testcase cmp_gpr_hazard raw test
mulh x22, x27, x28 # perform first operation
mulh x19, x8, x22 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x1, x30, x20 # perform first operation
mulh x1, x23, x12 # perform second operation

# Testcase cmp_gpr_hazard waw test
mulh x31, x15, x30 # perform first operation
mulh x31, x28, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x4, x18, x3 # perform first operation
mulh x18, x17, x12 # perform second operation

# Testcase cmp_gpr_hazard war test
mulh x16, x27, x24 # perform first operation
mulh x24, x21, x14 # perform second operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x2cbb557f92f77079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs1
li x17, 0xaef3197ad097ac86 # initialize rs2
mulh x12, x23, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x966688b7c6e70205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x31, 0x9735b7f8a4a0fd1d # initialize rs2
mulh x30, x27, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x57caece329640368 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x13, 0x390c035fd199fa22 # initialize rs2
mulh x9, x3, x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x708c9caeba7b600d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
li x11, 0x4fc564609baddca9 # initialize rs2
mulh x18, x28, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8159e158ad6bdb9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x21, 0x69ba534635a53ff1 # initialize rs2
mulh x18, x25, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x25cc472182753b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x4, 0xf74394db6d9b6a4f # initialize rs2
mulh x3, x5, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x0aa6eb4aadd3e074 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x24, 0x649f3173a4162284 # initialize rs2
mulh x18, x1, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xd6630e09226ceb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x31, 0x6a3e08be1c59160b # initialize rs2
mulh x25, x26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0x76189f8b44cedb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x8, 0xb8b71d2f52193eba # initialize rs2
mulh x25, x24, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x11, 0x2b6ec78bfd38471a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x30, 0x250d5b4b070e518f # initialize rs2
mulh x11, x13, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x44fe3e1b0a4849bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x4b9a439ba98a32d7 # initialize rs2
mulh x8, x3, x25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x8e80484cf8fc1590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x755e4e71cbd026c5 # initialize rs2
mulh x31, x6, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0x557b15d04733066a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x1, 0x15a79523fe648bfd # initialize rs2
mulh x25, x23, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x076e248c1fbf30a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x27, 0x1e3cb2145040864f # initialize rs2
mulh x21, x1, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0xf18bc29ee0355cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x16, 0x43d1988447fc62d1 # initialize rs2
mulh x26, x13, x16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x9db5b0e39732615c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x20, 0x741830ef8b1c04ed # initialize rs2
mulh x2, x21, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xdb2e1f4f6a3f5421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x37901565aeb53d24 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulh x17, x2, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0xf6bd3b4157a865d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa8fd18bce27d61f6 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulh x5, x16, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x21d5fba14bcfc061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7883a562afa188a7 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
mulh x9, x13, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x28d962822384016f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbae99e3ce91b8272 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mulh x24, x28, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x30, 0x5594f08afa97e1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfe843e13c2d4fd8d # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
mulh x30, x25, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x6029550f246a1cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x348f6a354e7684bb # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulh x8, x24, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0xc7ad18208463245e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9907fbd10181ded0 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulh x2, x15, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x1, 0xb916ba1d68ae332e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x030dc760ad361178 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulh x1, x4, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x4, 0xa7e6b94711723b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8a0379a3ad085a99 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mulh x4, x19, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x1, 0x0f945e24dbfcdf7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc23112d32da94a71 # initialize rs1
li x24, 0x5bbc887763ae86f7 # initialize rs2
mulh x1, x9, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x04b55d1939622a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6e8d30529e49be58 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x19, x7, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x382741d4e909c23d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4b21678b72a0fe09 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulh x8, x22, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x452021cb3f3def58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x09f78624b431231e # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulh x29, x4, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x0dd2153d1f004337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x46f38f61ee12a8b1 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulh x20, x4, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x5ffb98340bcb48c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x15dbb5551cc672a2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulh x6, x11, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0xfd46704cc15fe59f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe7995bcf4a8599d1 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
mulh x11, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0xfe846a0ef7a0e6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulh x27, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0xa00f457f96395a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulh x29, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x5, 0x93f374156fad34a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulh x5, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0xc93d5782105c3517 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mulh x31, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x2, 0x9fe7e9f8429a94a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulh x2, x19, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x4, 0x6d2717eb5ce77a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mulh x4, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x119f406781faec86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulh x12, x28, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x29, 0xcf0211af44760e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulh x29, x21, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x16, 0xe829d8297c7954bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mulh x16, x4, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x20, 0xf2cb9529e55d4e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f7 # initialize rs2
mulh x20, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x73a09e6971c310fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x30, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x14, 0x00a978370c2e6d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulh x14, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x08228dc6e2a22add # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulh x22, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x6611b7afc01b1a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulh x2, x12, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x12, 0x2ae0f68b9ca86b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulh x12, x18, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x5, 0x5c6d9e9d579b3f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
mulh x5, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x4, 0x25790d6ed503af95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulh x4, x11, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0046465b0eef0bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulh x27, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0xc1e97c95ff4fe555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulh x8, x23, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x27, 0xa3878a1a307520dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulh x27, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x28, 0x0c712749e60f9d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulh x28, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x17, 0x43933ffe53ab906f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulh x17, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0xcb6121432955534f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulh x23, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0x343e10431d74423e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
mulh x29, x8, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x7b761c84a13a1803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
mulh x27, x3, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x23, 0x0e838f2753060f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x31, 0x5bbc887763ae86f7 # initialize rs2
mulh x23, x13, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xc0f8bcd2ad8855e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x20, x6, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x3, 0x90b0b94aafd49658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulh x3, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0xf7669e2cb2a22ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
mulh x26, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0xe0901828f69d2f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x21, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x31, 0xe5b0756b3caac996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulh x31, x22, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x29, 0x28d7e17c755a666d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulh x29, x31, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0x1a1ca1e887e269ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulh x22, x25, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x3f6f01bab212b602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mulh x3, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x00e698d1d20b1d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulh x28, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x22, 0xe2fe070fc141a0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulh x22, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x45ac5d12f6becbec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulh x17, x29, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x5, 0x9f42c6a891f12188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulh x5, x9, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x10, 0x377245a943e37ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulh x10, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x8, 0x7a900eca1b79f0c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
mulh x8, x9, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x15, 0x8f172ee31ea41e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
mulh x15, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x8, 0xa9bb2bdcdf4fe558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
mulh x8, x6, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x96db7a2520abe46d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x29, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x2, 0x22be03592f760301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
mulh x2, x13, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x4, 0x8652dc0674d1cc23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
mulh x4, x30, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0xe06f61414f8324f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulh x7, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x7c2669c4f0f81690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulh x2, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x14, 0x43a05750d0e6af7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulh x14, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x8, 0x3ff7bee7c0ad16f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
mulh x8, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x26, 0xe3481ca64914b610 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mulh x26, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x21, 0xe745db2a4096b31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulh x21, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x23, 0xb34b5fd50c74c711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
mulh x23, x30, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x15, 0x38d0198792eb1c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mulh x15, x18, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x25, 0x9da9405cbd5c4750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
mulh x25, x4, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x379ab8365bcb8bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulh x15, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x2, 0x7619774daaafdc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulh x2, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x30, 0xbe5ca1037db015ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulh x30, x24, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x13, 0xc4bdbccb4e96db3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f7 # initialize rs2
mulh x13, x22, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x623e775bc5dfab0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x8, x6, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x5, 0xa0c3a0a26555e9db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
mulh x5, x4, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x29, 0x7df16a454565f930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
mulh x29, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x774bdb9b36730185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulh x7, x13, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x14, 0xfe2ee23803a0c8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulh x14, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x22, 0x02e90a0c59fa0e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
mulh x22, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x2, 0xb8124e7667eff297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mulh x2, x20, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x24, 0xb88017ad70444371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulh x24, x16, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0xb014e5a25531f19a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulh x12, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x28, 0x522fbc46c57c5992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulh x28, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0xc2083bac6e690fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulh x15, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x4, 0x71b030d49ad982a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mulh x4, x27, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x3f840ec218050e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulh x15, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x4, 0xd03c166387fc2835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mulh x4, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x16, 0xfe9bc3e58d113421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
mulh x16, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x31, 0x0121788919376415 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
mulh x31, x3, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xbe647379ea31e3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x28, x13, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x7, 0xd5b41bc064ad42b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulh x7, x2, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x18, 0x9ba709f239f1ace7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
mulh x18, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x13, 0xb4b3b0f01f4aa3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mulh x13, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x2, 0x3958d04db8622e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
mulh x2, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0xa726b2a20978f97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulh x7, x19, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x26ce34cd437eab30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
mulh x1, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x21, 0xe5bdd3b5345dadb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulh x21, x1, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x20, 0x8fe50544d306e564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulh x20, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xd4d657af055f5b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffffffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulh x7, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x17, 0xbe7524816e4990ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mulh x17, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x36e1a8200f807749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
mulh x24, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0x2aff197b97da04fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
mulh x7, x13, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xbc5462b1976adb2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulh x1, x2, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x27, 0xb17adb39ba7ba654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
mulh x27, x29, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x4, 0xae6e8f67f1d9f36c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f7 # initialize rs2
mulh x4, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x412e5a8ad1994acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x29, x25, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7e0b40f57c8d75c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulh x2, x5, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x11, 0xa4c5ba7ed501db7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulh x11, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x23, 0x3d8cbf9b0e380654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulh x23, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x11, 0x635e449bd1b4cd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulh x11, x31, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x6, 0x8cf7da8fbb055694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulh x6, x17, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x20, 0xb52a25285d5528a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
mulh x20, x6, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x10, 0x20133d89704324e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulh x10, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x23, 0x350f0a6b899412a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mulh x23, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0xca816a2f92ca9136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulh x16, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x5d8da6bedb93d8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulh x14, x2, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xa7eac1124861612d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mulh x19, x25, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x298cd69a0c1f3d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
mulh x16, x28, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x4, 0x4585196a00adf60c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
mulh x4, x27, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfea52470c80fbc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulh x18, x1, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x7, 0xb8b12cefd5359bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffffffffffe # initialize rs1
li x29, 0x5bbc887763ae86f7 # initialize rs2
mulh x7, x9, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xb6a5d1b4385b7cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x6, x13, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0x5e0229ae13ae6f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulh x20, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x26, 0xcd1bb272e6187e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulh x26, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0x954bdbfe3d7cfaac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
mulh x9, x1, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x3, 0x27f4c2923054477b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mulh x3, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x9, 0xe91b39caa7ab0847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulh x9, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x30, 0x0f435f7552bb30b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulh x30, x12, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x3, 0x5da3b8afe3b69741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulh x3, x1, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x14, 0xe0fe676dc3e78596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulh x14, x19, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x9, 0xbb3d31412d3f0c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
mulh x9, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0x3db24452a28b78de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulh x20, x15, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x59c3a41ca6f25f83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
mulh x22, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x10, 0xb410c829adfd6fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulh x10, x14, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0xa53bbca3c0a214af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
mulh x24, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x602edd30ccb5f820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulh x22, x4, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x19, 0x85b508ce3b37d27a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
mulh x19, x21, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x119ac1fda6501ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x17, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xdf9818d736358bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulh x21, x17, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x15, 0x208c689754868657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
mulh x15, x21, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x4, 0xfc59f49a58b7c5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
mulh x4, x28, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x16, 0xb6a6a778ef78f0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulh x16, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x24, 0x16ead6077b098e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
mulh x24, x7, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0x030f55e3427bb161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mulh x5, x21, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x21, 0x134068676a26829c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulh x21, x8, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x16, 0x41c81c11bf8c984f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
mulh x16, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0x858d1d0997552335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mulh x1, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0x9091ce164f6848b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulh x21, x6, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x3ad87e665d7911aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulh x3, x15, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xfa057ebee42be950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x30, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xdb10a5809146baeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
mulh x15, x4, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x4d2288735916718c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulh x6, x19, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0xec5f324be651ce04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
mulh x11, x4, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xa40d7749dc977177 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x7, x13, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0x2c24f3f4a208a784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulh x25, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x31, 0x120a59732ba1a3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulh x31, x23, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x4af01681326f5a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulh x25, x13, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x22, 0xf7e20e2dd13cc1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulh x22, x30, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x23, 0xcd2a4b61984eaf1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulh x23, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x10, 0xd745b886d5d6b798 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x10, x11, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x15, 0x8de9f6e6170355a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulh x15, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x29, 0xaa6f99ca7767639f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulh x29, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x5, 0x4ecde0c81e684a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulh x5, x25, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x11, 0x3effc4a34246aa66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5bbc887763ae86f7 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
mulh x11, x3, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x22, 0x09ed699f3ba513fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
mulh x22, x28, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x28, 0xc82d485d6773321d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulh x28, x20, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x28, 0xf1d2c00c320df327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulh x28, x14, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x9, 0xd7f9ced4f571e3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulh x9, x19, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x30, 0x808d8be4cb7d69f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
mulh x30, x26, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0xd222df3fc02a85f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x4, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x15, 0xbc3b6cbe3ea3d8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc887763ae86f7 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
mulh x15, x10, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x19, 0x8ba6476276237e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
mulh x19, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x30, 0xb66b4f348ef0aa63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
mulh x30, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x2, 0x6c592b0e6bcd2330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulh x2, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x4, 0x63be5f32ee325c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulh x4, x28, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x24, 0x433e9e9a8ef7aca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulh x24, x15, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x27, 0xb5fba9e4f1c81869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
mulh x27, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x26, 0x99b1483877ec474f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
mulh x26, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0xb19c92392d95ffe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulh x7, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x17, 0x3b5d5751f1c60bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulh x17, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x7, 0xe2d55abf48c44343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulh x7, x1, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x4, 0x444e50060ad0a8bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
mulh x4, x19, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x16, 0xdd1fbd4398a4829f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mulh x16, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x23, 0xf821a4025335894d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mulh x23, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x6, 0xc1e5571bef854719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
mulh x6, x16, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x58cfbfbecc5197e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x10, x14, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x6, 0xab96fe6bfc0a8b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mulh x6, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xb01ea3452ee58740 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulh x20, x14, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x18, 0x7b947d29a1e198e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulh x18, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0x45f30a8fe8781929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulh x30, x10, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x6, 0xb5859800aae46d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulh x6, x22, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x24, 0xb2c294dbe3037cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
mulh x24, x8, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x11, 0x74e9c2ea3487d26f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
mulh x11, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x21, 0x6dd3011cf6878d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulh x21, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0xeb942c31abcbf7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulh x31, x25, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0xdaab64538af225e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulh x22, x21, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0xe539e228522f0d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mulh x23, x12, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x672bd705ff1a0eec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulh x20, x30, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x15, 0xc588e7db081f5442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulh x15, x4, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x15, 0x7781f9e10cd184da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulh x15, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x1, 0x00383fd99ccf8f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
mulh x1, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x9fcd3b1ea9cdbc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x28, x14, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x31, 0xd36f4f5df431f876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulh x31, x12, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x87e105c5b63fd20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulh x19, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x15, 0x48ea83c60a62f2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mulh x15, x27, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x1, 0x71bed86656782d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulh x1, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0xe88863cae3f463ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
mulh x28, x27, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x19, 0x7b04e16ed95619cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulh x19, x7, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x10, 0xd09aecfb32d3a08c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulh x10, x26, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0xa7e742f84bde0e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulh x13, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x10, 0xa8fed7df5d67c50b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mulh x10, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x11, 0x41571c8146bc5b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulh x11, x26, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x433c1accfc61f0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulh x13, x27, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0xf8bd767d827b08b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
mulh x13, x6, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x12, 0x6aef91c17a30ab1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulh x12, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x90357694f403eff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
mulh x25, x1, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x13, 0x0b3936bbb356c1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
mulh x13, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x25df475985a4b5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x29, x11, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x161332a581082a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulh x5, x15, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0x1c6abb735b2fdd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulh x11, x24, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0xda6621f06b0f5137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulh x19, x8, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x25, 0xb4abcb315244dc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mulh x25, x15, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x18, 0x518615bd9a56bdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulh x18, x20, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0xe713d8efb8f5f4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulh x16, x19, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0xd09b3cd6f2236215 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
mulh x31, x25, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x808be588bd7c472a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulh x1, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x1, 0x334ab78c172931b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulh x1, x28, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x13, 0x6e9982313a588bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
mulh x13, x26, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x85a4a3c05f619085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mulh x11, x24, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0xe1146e3d99cf32fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x20, x3, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x3840ce67a0709a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
mulh x17, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x26, 0xbba8376ae2c4b70d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000fffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulh x26, x25, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x11, 0xade94455fd3a56a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
mulh x11, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xe4dd946b94638ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000fffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x11, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x5, 0x771847eae6e85a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulh x5, x29, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0xf6b01dff1866c697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mulh x24, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x23, 0x4570c29017b748e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulh x23, x12, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x24, 0x1839a8c90c3bee5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulh x24, x26, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x22, 0x824127e0506679c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mulh x22, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x34d22a6e55a2efb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulh x28, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0xe439856776de36d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulh x23, x18, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x24, 0x9f455f67b05fd81b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulh x24, x16, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x6, 0x52760e3fdad18943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulh x6, x26, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x14, 0x973cc08b23392626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulh x14, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x12, 0xb92b03fd80f68d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulh x12, x23, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x23, 0x27d8224894d3e730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulh x23, x14, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x29, 0x3185630012791c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulh x29, x12, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x24, 0xf237589d5dabd617 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulh x24, x16, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x10, 0x65fac339d59d2413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
li x22, 0x5bbc887763ae86f7 # initialize rs2
mulh x10, x20, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaa8b287e193bf986 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x20, x14, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0xb13321348ed13534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
mulh x15, x24, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x26, 0xb25b353a2b7ae41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
mulh x26, x14, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x7ae6f501b0793da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
mulh x6, x28, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x31, 0x32918104d1881a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
mulh x31, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x24, 0xb7a7a53a5da09aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
mulh x24, x7, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x31, 0xcb0f685ae13ae7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulh x31, x19, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x21, 0xa29988e7db401eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
mulh x21, x29, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x4, 0x19349099b2daa291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulh x4, x10, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x8, 0x6f945d2b9db1ac78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
mulh x8, x17, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0xaa71135c737a8064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulh x20, x18, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x24, 0xe6dffa81d921ee55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulh x24, x3, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x31, 0xac87b6906e956dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
mulh x31, x17, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x31, 0x7d998e76e8bf32c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mulh x31, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x7, 0x4164c45bcdc73cce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
mulh x7, x12, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x12, 0x44cd8851ec46113a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000001 # initialize rs1
li x30, 0x5bbc887763ae86f7 # initialize rs2
mulh x12, x26, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x14a193806453e7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulh x16, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x24, 0x84dec91cc4837d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mulh x24, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x11, 0x4ce441a0db157017 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
mulh x11, x5, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x9e331533d94629ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000100000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulh x24, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x6, 0x2cd82ef4ce69c33b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulh x6, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0x8695129343bd9bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
mulh x26, x1, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6f4359eecedc9bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd39ef2c65dab8108 # initialize rs1
li x7, 0x78c68e2f706564cd # initialize rs2
mulh x0, x0, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x070bd5673996e7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x81e383101344a24e # initialize rs1
li x24, 0xc5d6cb9a9cadb242 # initialize rs2
mulh x1, x1, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x0d4d72d3da316172 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x11f3d438c5d29c19 # initialize rs1
li x13, 0x5d4f2a67ddc6a805 # initialize rs2
mulh x2, x2, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc27bed14be43dab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeaa388eee84dc5ef # initialize rs1
li x19, 0x9b20c965ddc3cb7a # initialize rs2
mulh x3, x3, x19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xbda49405b879019c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5d154b75e6e3b161 # initialize rs1
li x3, 0xd8983993f1f46a1b # initialize rs2
mulh x4, x4, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x4c244cdbea0c3727 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6eea53f5534753c5 # initialize rs1
li x30, 0x37401412d8d7491a # initialize rs2
mulh x5, x5, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xdb365b0b52270f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa7bb2d35354731ef # initialize rs1
li x21, 0x60bb21620d114ded # initialize rs2
mulh x6, x6, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x79b7f9a2669d2ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe01b5ebdf6078c7c # initialize rs1
li x20, 0x77e18f36434d3cf5 # initialize rs2
mulh x7, x7, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x89b836ff2970234d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9f3af50fc11a173d # initialize rs1
li x6, 0x843ca1b42d823f90 # initialize rs2
mulh x8, x8, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x946e03c598819a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x642d931019ffa2c2 # initialize rs1
li x20, 0xed36e1889988e4bf # initialize rs2
mulh x9, x9, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x61f1bb335c73ed86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfa57eb9182370362 # initialize rs1
li x16, 0x7f935493b42ba190 # initialize rs2
mulh x10, x10, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x703584b20f3f93b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5ee016991e582a96 # initialize rs1
li x3, 0x1fffa951ed663897 # initialize rs2
mulh x11, x11, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf66d9c78f0c7df73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf0ede7438ea94a78 # initialize rs1
li x12, 0x04b13feab875d8da # initialize rs2
mulh x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xba407bf072f7ba27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7a69e84c64dd24bd # initialize rs1
li x30, 0x38082ff71dd4fdea # initialize rs2
mulh x13, x13, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xddde14086ddc278b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5d40016fb6ad4e0c # initialize rs1
li x17, 0x824bd676c3c99244 # initialize rs2
mulh x14, x14, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6c565a49efc799e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0d32648aa42bacac # initialize rs1
li x11, 0x63a40a37befd54f7 # initialize rs2
mulh x15, x15, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x567a103779ffe15b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x26d7486f93d2d0cf # initialize rs1
li x8, 0x90b8814b18456377 # initialize rs2
mulh x16, x16, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf9f7115d230395db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xcfdb74e5db6a7a84 # initialize rs1
li x14, 0x0058518414a7d4f4 # initialize rs2
mulh x17, x17, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2b647e9759c15f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0c6f20b52f996310 # initialize rs1
li x24, 0x45faad78088aa505 # initialize rs2
mulh x18, x18, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1b28abf3725fef5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2d5030c050980753 # initialize rs1
li x5, 0xf6d3ee20bf1a8242 # initialize rs2
mulh x19, x19, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xabddf5a6004b16d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x79fabd1d3851e328 # initialize rs1
li x7, 0xe20d79de0c9f9f99 # initialize rs2
mulh x20, x20, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x26b4fefab2ed0006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x47bb2b9502b5ba49 # initialize rs1
li x2, 0xda43dbc8bc8396f7 # initialize rs2
mulh x21, x21, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x062f2e6ddf108ece # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5a9a71aad699b074 # initialize rs1
li x28, 0x3bbd1be73dff3aa3 # initialize rs2
mulh x22, x22, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd5dc0edbaba35ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0cf800574a9ae296 # initialize rs1
li x31, 0x4a8a135156440eba # initialize rs2
mulh x23, x23, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x64df6d976f872d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbe8896e78513d79e # initialize rs1
li x10, 0x04d2c69fe12f53f0 # initialize rs2
mulh x24, x24, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x826e0f38e1db2c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb8afac9b0a7e10db # initialize rs1
li x11, 0xeda65c27a6fdc7c3 # initialize rs2
mulh x25, x25, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x45511518053ee1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xae9131051ebd014a # initialize rs1
li x27, 0x11e21fe34eb2bbe5 # initialize rs2
mulh x26, x26, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1e100ef54da987f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1bac490badff666f # initialize rs1
li x8, 0x4111b157b314068c # initialize rs2
mulh x27, x27, x8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xabcfdf08f4e4fc4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6f25388c4c8c2a0f # initialize rs1
li x21, 0xa8aa6728378cf315 # initialize rs2
mulh x28, x28, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x63af542a67193d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbefe91697f2193f3 # initialize rs1
li x7, 0xecb258580c32c7d6 # initialize rs2
mulh x29, x29, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd95bf90e5b90c361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1cf33c53ea8b34fe # initialize rs1
li x21, 0x3113d45807e499db # initialize rs2
mulh x30, x30, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf7289b3dc1118ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6ccc016acf590874 # initialize rs1
li x9, 0x15292aed16a16866 # initialize rs2
mulh x31, x31, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x5b8248e8740ed0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xda04d93b644845f4 # initialize rs1
li x0, 0x137a5b198b97752e # initialize rs2
mulh x0, x9, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0xe63a56e63fa661dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x18e9d7b57ec8fe73 # initialize rs1
li x1, 0x7a62dd8548c2c276 # initialize rs2
mulh x1, x24, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x1e8f75f39d83e254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2285dd0228ea9239 # initialize rs1
li x2, 0x0e7665ab794d9ce4 # initialize rs2
mulh x2, x5, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xe20f53089936dcd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x63d5d4dd7220e273 # initialize rs1
li x3, 0x975aa3d1beb84b9f # initialize rs2
mulh x3, x1, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x06eb91e3eb64a97d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x02a00bd4caf58af1 # initialize rs1
li x4, 0x23495718eab44054 # initialize rs2
mulh x4, x31, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xee5703e617bc65b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x520fc1791ac011f7 # initialize rs1
li x5, 0x81ff1b72ea24f3e1 # initialize rs2
mulh x5, x14, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0xa5d4c5b635897bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbab7a9f746334c77 # initialize rs1
li x6, 0x230f5384f854ebae # initialize rs2
mulh x6, x7, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xdd2d5a03fe87a990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x69299a32d76a4e01 # initialize rs1
li x7, 0x2b3a5af382ac6d6f # initialize rs2
mulh x7, x1, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x2fa9e9c40c3621f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2e5bad15ef6d1e53 # initialize rs1
li x8, 0x01c74041492992d0 # initialize rs2
mulh x8, x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x6bfb05cf660ad0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9850b4d52eb3d4ad # initialize rs1
li x9, 0x84a4fdc6dfeed4ee # initialize rs2
mulh x9, x20, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xe5c907aa88bbbbc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2ffab490e0deed81 # initialize rs1
li x10, 0x1ec93fdb706df4e6 # initialize rs2
mulh x10, x29, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x01da3e7e1e85c72d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0687604084a3ee16 # initialize rs1
li x11, 0x77259c859f45ca2b # initialize rs2
mulh x11, x1, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x1a517f72cab7cffd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x03fdf13cb05742bf # initialize rs1
li x12, 0xab17fb019fd1a92d # initialize rs2
mulh x12, x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x633b9616582d1c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6e4e93f655fb8521 # initialize rs1
li x13, 0x445808c0a851a14e # initialize rs2
mulh x13, x21, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xadf77a96323bcc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x77747d0636392241 # initialize rs1
li x14, 0xd381a7eda3c43212 # initialize rs2
mulh x14, x24, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xc6bbad53ff88b558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x62baf6ffb40f6db9 # initialize rs1
li x15, 0x7211f10cebcc31fa # initialize rs2
mulh x15, x2, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x5f86ff34f0aa70db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x993f37439f59d4af # initialize rs1
li x16, 0x317f23cc3c036665 # initialize rs2
mulh x16, x4, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xfafb6a9d76cea7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x25474589804ffd09 # initialize rs1
li x17, 0x2d873de9ec7d2e8d # initialize rs2
mulh x17, x10, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xdc7ddfcb39084064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbb69361c736b3c29 # initialize rs1
li x18, 0x83e87b9f4468f97a # initialize rs2
mulh x18, x18, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xa198f318b2f1ad84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb4b3f373e5b7f6d9 # initialize rs1
li x19, 0xcc6f9df79fe1f6b0 # initialize rs2
mulh x19, x10, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0xa53730d5499c5d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe8eeaef2adf9db23 # initialize rs1
li x20, 0xfbe84ee5c3d42b23 # initialize rs2
mulh x20, x16, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0xf8847d1eb846c31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa5e21641bebe7ea0 # initialize rs1
li x21, 0xa31dc909237084f3 # initialize rs2
mulh x21, x11, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xec8e37b1348d186a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6bc8cdf3c8f139e9 # initialize rs1
li x22, 0xb89db288ad4c4117 # initialize rs2
mulh x22, x2, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x76298ebdf25188f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9cc61e39c4700857 # initialize rs1
li x23, 0x94f62a8309348b23 # initialize rs2
mulh x23, x28, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x23f8d4bb1eeb10c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x689411662b3bc601 # initialize rs1
li x24, 0x1796f6b579bf1dbb # initialize rs2
mulh x24, x20, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xf0485d5e26fce474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4dca3d3281d5eb90 # initialize rs1
li x25, 0xc92d80890ef6cf55 # initialize rs2
mulh x25, x1, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x076f79c71f222e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7a955ab289dd6abe # initialize rs1
li x26, 0x77692971a72e6151 # initialize rs2
mulh x26, x20, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x8b1472aa4d1bcbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x79d5c6f0f219cd10 # initialize rs1
li x27, 0xea6cda98000c1f27 # initialize rs2
mulh x27, x9, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x1dd22c6981c52ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa0ede36ffa9be4ef # initialize rs1
li x28, 0x67aa2070b2030eeb # initialize rs2
mulh x28, x22, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0x5b204ae43b3ad2fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe5d62e1cc6900855 # initialize rs1
li x29, 0xaf633f0d9cab9df8 # initialize rs2
mulh x29, x31, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x2fbf22f9076374cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x980bbd4bf188b493 # initialize rs1
li x30, 0xf8e176c42d53b590 # initialize rs2
mulh x30, x2, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0xdd17f8d085f1f2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa1236f36bd7d16d3 # initialize rs1
li x31, 0x32988c48245a6f5a # initialize rs2
mulh x31, x11, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x25ebba015556f69d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xebac9afc416120ac # initialize rs1
li x0, 0x7fc7baedfe2788b4 # initialize rs2
mulh x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x1593f84c895320db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8992fc939ad93f69 # initialize rs1
li x1, 0x33c08b6163c52ed6 # initialize rs2
mulh x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x2169a644ce332925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa793f0001ff41e86 # initialize rs1
li x2, 0x253e3407d400a55e # initialize rs2
mulh x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa745cff9f5ae9a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x21023eb25edefa52 # initialize rs1
li x3, 0xdd8c3df6237ab151 # initialize rs2
mulh x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xfa360b02c468e518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf1df47e1ea3842f0 # initialize rs1
li x4, 0xce68a17ceb2cdacb # initialize rs2
mulh x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x777551fe2e4910ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa57e6c860a0465e0 # initialize rs1
li x5, 0x3f7ae4a9e9c1d48d # initialize rs2
mulh x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xa16acebaec422792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xecd7bab7d25e1c3c # initialize rs1
li x6, 0xc3ec8a1c5f0962fc # initialize rs2
mulh x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x2d92bcae766a4eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3833e87e29455c6f # initialize rs1
li x7, 0x4ce0bc9d012d06f9 # initialize rs2
mulh x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x42a301499d51be01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5c931463293a3750 # initialize rs1
li x8, 0x9703cb21ad56887f # initialize rs2
mulh x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x095d16684723f9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6e60fcff5e2221fb # initialize rs1
li x9, 0xcf2535ba137158a1 # initialize rs2
mulh x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x01d9ab47030b9f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1bfefb4145491eb8 # initialize rs1
li x10, 0x40865204051449ed # initialize rs2
mulh x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xfca2948fad316efb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd332e67a7417e69 # initialize rs1
li x11, 0xada30b1daeef5a78 # initialize rs2
mulh x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6f15ae4c0d3eeb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf0f1621f4077d3f9 # initialize rs1
li x12, 0x78b324625517c794 # initialize rs2
mulh x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3bbf71a696a08982 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x57a8d1f6ef3e9dbc # initialize rs1
li x13, 0xe280beb9ee134e9f # initialize rs2
mulh x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x12ad11f80e9d19ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3b8c7a158fdda092 # initialize rs1
li x14, 0x3413296417a39b9f # initialize rs2
mulh x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8d1bb50708d34ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x66b60a2b52219850 # initialize rs1
li x15, 0x5ac37168006017f4 # initialize rs2
mulh x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x83840cc2a1c40b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9605c1df4125b821 # initialize rs1
li x16, 0x473a85b2fd77e097 # initialize rs2
mulh x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xb350c0ab656adb13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x02c79823c6a6acc0 # initialize rs1
li x17, 0xf1b51ea2814702e1 # initialize rs2
mulh x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x612e2c1fdc2b83d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8f3d704922d904b8 # initialize rs1
li x18, 0xdbcff91d1a7b7d61 # initialize rs2
mulh x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xaa09bcb6a1f55961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfdba685565b102e3 # initialize rs1
li x19, 0x23c8b3f9cf965514 # initialize rs2
mulh x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xdf04469c8fa50c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x135d9f5d9d692b3e # initialize rs1
li x20, 0x2c76cc76f5da9ac6 # initialize rs2
mulh x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa4d0dba5dff4e78a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa0b9eb49b95f4413 # initialize rs1
li x21, 0x15219413c3e8ca42 # initialize rs2
mulh x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb01c9c5c56fec7bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9d98eed286948e2e # initialize rs1
li x22, 0x8ed7265ade45a21c # initialize rs2
mulh x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xf3d6a6f13d66d23c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfb4923664bf950db # initialize rs1
li x23, 0x0d9555cb61324eca # initialize rs2
mulh x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x03df53785f4605aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa060d62e998e8643 # initialize rs1
li x24, 0x590f3ae7fdd73144 # initialize rs2
mulh x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xebf5620c744a0775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x287e9643b43bf0fa # initialize rs1
li x25, 0x7b1bcb2a5595b726 # initialize rs2
mulh x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xf3a10c583a8297d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc0b35085250dd886 # initialize rs1
li x26, 0x64700e7cf9593a4c # initialize rs2
mulh x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xa1347e7c51ec3000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe22d8bc91b542530 # initialize rs1
li x27, 0x060ecca464e05c17 # initialize rs2
mulh x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc05633bd47a25721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x307a61ecaa49f42b # initialize rs1
li x28, 0x45ec248b5e504375 # initialize rs2
mulh x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x396ba05e0fb3e951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcfebf4a753c1d308 # initialize rs1
li x29, 0xed256e015feb7c58 # initialize rs2
mulh x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3654f6942cb91835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfdeec40aee50a341 # initialize rs1
li x30, 0x8c469eceaf198bce # initialize rs2
mulh x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x4fc64cd5a76fd931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x45b59e09137c4025 # initialize rs1
li x31, 0xe8b9d67a438c6258 # initialize rs2
mulh x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x26, 0x45d335515fa6bf0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x59bdfdd2fe0761a8 # initialize rs1
li x0, 0x6e6ad0d43bb24a91 # initialize rs2
mulh x26, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x4, 0xc13bcc5bf50d416e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x39755ce1ad1bb0be # initialize rs1
li x1, 0x2cb7bb6b1384172d # initialize rs2
mulh x4, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x20, 0x360b96146ecc4ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4a0ce5e2f2056135 # initialize rs1
li x2, 0xfc901d3c5b95ba37 # initialize rs2
mulh x20, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x6, 0xb90e03fe8d5653fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4b1315454b6ac380 # initialize rs1
li x3, 0x6e3cc366ed538ee8 # initialize rs2
mulh x6, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x5, 0x9847859c6fae92fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdbb1e79473deafe8 # initialize rs1
li x4, 0x2f0a99952c783f0b # initialize rs2
mulh x5, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x20, 0x18b0a37b224d9f5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd337ee3ac9f35d8a # initialize rs1
li x5, 0x2a69e77e340cac6b # initialize rs2
mulh x20, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x18, 0x4d832ad5ca3fec1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa52551adf0c4ef84 # initialize rs1
li x6, 0xe39e005cbb5d326c # initialize rs2
mulh x18, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x23, 0x87f1290dbe9c075a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x829f1d39956385bf # initialize rs1
li x7, 0x19b5d1daae0c3197 # initialize rs2
mulh x23, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x15, 0xcdb9fd771383c15b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe37ab11bddb70554 # initialize rs1
li x8, 0xc07ebe59db05bfd4 # initialize rs2
mulh x15, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x11, 0xd4e49a8d2a9f2310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9334a91370ff300d # initialize rs1
li x9, 0x0b62ae534c938165 # initialize rs2
mulh x11, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x26, 0xf6c257698666aa95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc25a76999bc8b4be # initialize rs1
li x10, 0x59955379de0a5774 # initialize rs2
mulh x26, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x14, 0xcf11d808781965fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x685a9286df98d96b # initialize rs1
li x11, 0x5bc6483daf07ef1c # initialize rs2
mulh x14, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x24, 0xc6e33b659e25fc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7f84c0da4ab069a7 # initialize rs1
li x12, 0xae1690fe8bcaade2 # initialize rs2
mulh x24, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x22, 0xbd9e8b53b7893c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x12020a2d81d84a7f # initialize rs1
li x13, 0x98b07113730e484f # initialize rs2
mulh x22, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x26, 0x9f9dca69a73838e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc8ebe63184fbf04c # initialize rs1
li x14, 0x965bf25b9830f748 # initialize rs2
mulh x26, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x11, 0x46650ecd15c28a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfa9066cd1064c856 # initialize rs1
li x15, 0xd04df7f1fbf98ef3 # initialize rs2
mulh x11, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x12, 0xe5af345706424119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd5cf9d977022afe9 # initialize rs1
li x16, 0x6cad1b81760a8307 # initialize rs2
mulh x12, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x10, 0x850f3e8c0762b1a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfca374ed0c3cf7cb # initialize rs1
li x17, 0x2cd43ac7770d51a1 # initialize rs2
mulh x10, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x30, 0x67ed697fdde40f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7e7cb5c6a1dfe306 # initialize rs1
li x18, 0x33dda02fc0000048 # initialize rs2
mulh x30, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x2, 0x9186ccb7b3dcb582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x16ed795a64b3b553 # initialize rs1
li x19, 0xb2085a1d177c02f5 # initialize rs2
mulh x2, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x26, 0xc402c0b80383f123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x67784c4ae44e458b # initialize rs1
li x20, 0x8daac41f7cf4a694 # initialize rs2
mulh x26, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x2, 0xe19930054e0fc2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe51102642f0d439f # initialize rs1
li x21, 0x1307732f68352734 # initialize rs2
mulh x2, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x29, 0x9a96478d92ca0c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf5007173e167395f # initialize rs1
li x22, 0x27944056dae568af # initialize rs2
mulh x29, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x11, 0x67b5b6cc21a4e3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcd5f0910a40ff5f3 # initialize rs1
li x23, 0x7c5719b9b14bd8cd # initialize rs2
mulh x11, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x6, 0x97d664e2398e3c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x70d6d03576538cbc # initialize rs1
li x24, 0xf1c876c32fa4bb23 # initialize rs2
mulh x6, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x4, 0x2036b3830e0fb716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4702271ee80e74f6 # initialize rs1
li x25, 0xf9f5625f8cfd0ea8 # initialize rs2
mulh x4, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x18, 0x316611793ef60f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd091fb686387aa14 # initialize rs1
li x26, 0x54fe9c450bd23c36 # initialize rs2
mulh x18, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x16, 0x8411dced988a8540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3a6e4c15bb524ac5 # initialize rs1
li x27, 0x01fab6af4e77b839 # initialize rs2
mulh x16, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x25, 0xd377494ad1bfb04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x74016e32352a1a65 # initialize rs1
li x28, 0xaa572c5f6695fbc8 # initialize rs2
mulh x25, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x10, 0x1d51e0f411b5b77e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7bf82deec2df4ec2 # initialize rs1
li x29, 0xbfe19d9e5711dfa2 # initialize rs2
mulh x10, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x31, 0x858c07268674d989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc1fde5637b5b7ec2 # initialize rs1
li x30, 0x91ea9b5b428f3264 # initialize rs2
mulh x31, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x11, 0x187a6c55130112db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa5ae11180e399012 # initialize rs1
li x31, 0x04b544c9d31885f8 # initialize rs2
mulh x11, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x705d46fe3c403f1b)
li x26, 0x803cf1600910bb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x705d46fe3c403f1b # initialize rs1
li x5, 0x8996a7ff83d3d7c8 # initialize rs2
mulh x26, x18, x5 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x12268cfbfbd224)
li x16, 0xb4cc360bbf027d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffedd97304042ddc # initialize rs1
li x29, 0xc5a2b19c86dc22cb # initialize rs2
mulh x16, x31, x29 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7ec81d16690d1c76)
li x2, 0xfd60e5e314f4d494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3f5e66b2633af9a5 # initialize rs1
li x30, 0x7ec81d16690d1c76 # initialize rs2
mulh x2, x20, x30 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x10790b7ffbccb1ea)
li x4, 0xc8161dcc2b62c037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf564557e45e82977 # initialize rs1
li x21, 0xef86f48004334e16 # initialize rs2
mulh x4, x14, x21 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
