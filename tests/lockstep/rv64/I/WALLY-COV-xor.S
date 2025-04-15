///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-xor.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x00212f2cfe0276db # initialize rs1
li x7, 0x0c3dcbf66a053f6c # initialize rs2
xor x26, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x07d6a88cee1edfc7 # initialize rs1
li x8, 0xe234188ad8873784 # initialize rs2
xor x7, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0948139b66ec4316 # initialize rs1
li x24, 0xe131acfb64e55a40 # initialize rs2
xor x3, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xcb55003613ff0430 # initialize rs1
li x12, 0xc282ee7b38d79a23 # initialize rs2
xor x20, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x38df620c3c87f3c7 # initialize rs1
li x7, 0xe6c359439dfd5953 # initialize rs2
xor x22, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbb960395e33eead7 # initialize rs1
li x29, 0xc312d7b77f14db33 # initialize rs2
xor x3, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7d3b981d3eaa91e # initialize rs1
li x31, 0x97f4932b42848652 # initialize rs2
xor x20, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa3f6b699a8e0f49 # initialize rs1
li x10, 0xf3a8dc834bf93dcc # initialize rs2
xor x1, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2c9261a9918cc4de # initialize rs1
li x20, 0x8c496eba4c254afb # initialize rs2
xor x11, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf11349348c5c3610 # initialize rs1
li x31, 0x800bbed8ecb5f18a # initialize rs2
xor x13, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6d2c607fedcd9678 # initialize rs1
li x2, 0xd32afd1c1c3b0718 # initialize rs2
xor x13, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x90500f39a9307c31 # initialize rs1
li x6, 0xffc42ca1784136f5 # initialize rs2
xor x31, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3e350e806ab69c79 # initialize rs1
li x28, 0xc7eef6f1b9199854 # initialize rs2
xor x10, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd75a3a2d3a5a6ebf # initialize rs1
li x14, 0x6b411d9026b672bf # initialize rs2
xor x28, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xabbd6deda8fe7a4e # initialize rs1
li x16, 0xf4a36d1b4f7bf199 # initialize rs2
xor x28, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4bf76c9512ed2f2c # initialize rs1
li x24, 0xae9e31cd60d16a8d # initialize rs2
xor x19, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcb25a6d028673ad3 # initialize rs1
li x27, 0x87baddeff6499416 # initialize rs2
xor x14, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x68c52486049a9429 # initialize rs1
li x3, 0xdea0b310b19b6e66 # initialize rs2
xor x29, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc424e25a0dfedb28 # initialize rs1
li x16, 0xe9d5a06d9d8b7aab # initialize rs2
xor x29, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x75f17aa529de51e4 # initialize rs1
li x16, 0xe6c0f4e5a2421ad3 # initialize rs2
xor x23, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5f7d445cd36d5df8 # initialize rs1
li x22, 0xa0a35cb7ba675ca9 # initialize rs2
xor x1, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8c6b2eedf79545dc # initialize rs1
li x29, 0xc9ce53ca9dbf20cd # initialize rs2
xor x2, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xcbe352ff4d96648f # initialize rs1
li x29, 0x79a9dacf85766d2e # initialize rs2
xor x2, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xca9716b95bfa2f85 # initialize rs1
li x5, 0x18a50f49af49edf4 # initialize rs2
xor x11, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfab98c51043ac155 # initialize rs1
li x14, 0x36d39dc26e49378a # initialize rs2
xor x15, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0022ce986513ca14 # initialize rs1
li x16, 0xf07d7edc2a3363ae # initialize rs2
xor x11, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9f3d03e074f7f2d3 # initialize rs1
li x1, 0xeb0fc704ac6e3e95 # initialize rs2
xor x11, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x41fc98d5123f3a82 # initialize rs1
li x6, 0xd7d1d98813138e5f # initialize rs2
xor x12, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd792666d8cb4c6f3 # initialize rs1
li x7, 0x7bfb93b6f895a788 # initialize rs2
xor x22, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9322e2a5a716bda0 # initialize rs1
li x21, 0x9ff512a7b530bee9 # initialize rs2
xor x8, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe79b0c55bd96f993 # initialize rs1
li x23, 0x2ffe015bc5d0939c # initialize rs2
xor x2, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x57eed54810806444 # initialize rs1
li x26, 0x3e8c2ada897a542d # initialize rs2
xor x22, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0xaf9737c0133543d0 # initialize rs1
li x0, 0x597585a540534986 # initialize rs2
xor x7, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x5f0faa183919dc6e # initialize rs1
li x1, 0x03a4e50e70e2adbb # initialize rs2
xor x29, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0xc2acdbc1d893e247 # initialize rs1
li x2, 0xadf746e0952516e3 # initialize rs2
xor x11, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0x4b7f0f404193b871 # initialize rs1
li x3, 0xa1a0129cbdc39387 # initialize rs2
xor x13, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x96cb903a3d09b063 # initialize rs1
li x4, 0x1b2867fdd8298acb # initialize rs2
xor x7, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0x1a639fb15502829c # initialize rs1
li x5, 0x97faa1974f90daff # initialize rs2
xor x19, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x488a9e1e9ac3ea01 # initialize rs1
li x6, 0xcba761d1888afced # initialize rs2
xor x31, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xd37b9363efa84ccb # initialize rs1
li x7, 0xb74b145062153bd9 # initialize rs2
xor x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0x638361d15c287b60 # initialize rs1
li x8, 0x097330514414172d # initialize rs2
xor x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0x1dfc255ca712af13 # initialize rs1
li x9, 0x0958a86294dabeed # initialize rs2
xor x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x1e86b813bac4fa44 # initialize rs1
li x10, 0x4cc33f92eb2165d9 # initialize rs2
xor x1, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xb6960b24984f73c8 # initialize rs1
li x11, 0xe63315d4b3847086 # initialize rs2
xor x27, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x1ac1606dc7ad6180 # initialize rs1
li x12, 0x1665319cd7c2624a # initialize rs2
xor x19, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x3dfe3236667c38ed # initialize rs1
li x13, 0xcefc14434ab9845b # initialize rs2
xor x10, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0x0b3dd1eeac3c7165 # initialize rs1
li x14, 0xbfb5be79ef6693b0 # initialize rs2
xor x1, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x574161a1d6f41631 # initialize rs1
li x15, 0xa6a70098f15a0cbc # initialize rs2
xor x1, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0xbbd649230ed04058 # initialize rs1
li x16, 0x0afd3808d5918c76 # initialize rs2
xor x8, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x86166cbb54e76403 # initialize rs1
li x17, 0xcad9f1d1c2ad0e69 # initialize rs2
xor x3, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0xc00187d6dbad5023 # initialize rs1
li x18, 0x8a86f8956bbb6401 # initialize rs2
xor x22, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x25, 0xac3ebc1e9e3ec513 # initialize rs1
li x19, 0xf98ff58eac67d98d # initialize rs2
xor x18, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x19, 0x039b7757d2ea9694 # initialize rs1
li x20, 0xaa76bf1a91c7c1af # initialize rs2
xor x3, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x7208c79fc06598d3 # initialize rs1
li x21, 0x85a5746f5edb15dd # initialize rs2
xor x20, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x3e80a172b3bceadf # initialize rs1
li x22, 0x859f2f0cea9f33dd # initialize rs2
xor x12, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x1297099cd55dbd50 # initialize rs1
li x23, 0xd4a288b2fe8a7aba # initialize rs2
xor x31, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x775f23332fe60821 # initialize rs1
li x24, 0x27abb8f121d4f054 # initialize rs2
xor x13, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0xcc90698b8eaff2bb # initialize rs1
li x25, 0xd9080ef04164b2a1 # initialize rs2
xor x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x2ee01fa7bff60af6 # initialize rs1
li x26, 0xcd1b6393bebb299e # initialize rs2
xor x2, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0xd30dcc0c54b0287f # initialize rs1
li x27, 0xac2d12ca50ac0c99 # initialize rs2
xor x13, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x468b274f2ab3ee6b # initialize rs1
li x28, 0xc26604d391fc0980 # initialize rs2
xor x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0x720abdd163361a08 # initialize rs1
li x29, 0x96210961704bef78 # initialize rs2
xor x6, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0x727aa817a8bcac04 # initialize rs1
li x30, 0x5a9b77b7770b0adf # initialize rs2
xor x23, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x6ef7534818a20cfa # initialize rs1
li x31, 0xa0d0c5a05c7eaef1 # initialize rs2
xor x22, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x62c71d6012b96005 # initialize rs1
li x16, 0x8bbec0b62a76545a # initialize rs2
xor x0, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0xc82a83e9200c7ac6 # initialize rs1
li x17, 0xbef92c077c404a95 # initialize rs2
xor x1, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x82d6c7d1e94a2538 # initialize rs1
li x14, 0x15b886832ce389dd # initialize rs2
xor x2, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x6e5cccec9875ac7c # initialize rs1
li x20, 0x1cee18daab659f78 # initialize rs2
xor x3, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x0984caa6c26b1192 # initialize rs1
li x29, 0x72e886ee165ce1d0 # initialize rs2
xor x4, x23, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x6d07b5671b48c60f # initialize rs1
li x29, 0xa49ea91161b7b8fb # initialize rs2
xor x5, x15, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x748fa98ab651e577 # initialize rs1
li x26, 0xdd8cdb4eaf020f59 # initialize rs2
xor x6, x27, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x0907c5bd86bc6886 # initialize rs1
li x30, 0x126409cfd9e4c827 # initialize rs2
xor x7, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xfa512cf221cbff50 # initialize rs1
li x10, 0x2348ce0d8b39a476 # initialize rs2
xor x8, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0x6f001bcaca281eea # initialize rs1
li x27, 0x46d9fbbfd7a58f3d # initialize rs2
xor x9, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x1083fbf73d45fe22 # initialize rs1
li x17, 0xdaa3b522f1a1659d # initialize rs2
xor x10, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x5ef5e96d5f9d901c # initialize rs1
li x5, 0x52dbb595cd9ff52a # initialize rs2
xor x11, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x6302c6d8b6bbfac3 # initialize rs1
li x26, 0xf11699abebbb04be # initialize rs2
xor x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x9ab1f48451c05140 # initialize rs1
li x29, 0xcdb0e7b50b1288fa # initialize rs2
xor x13, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0xbd56682720bd3ff2 # initialize rs1
li x2, 0x9b85bcc2c5f9e7b4 # initialize rs2
xor x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc01e10addaacf9e2 # initialize rs1
li x1, 0xd1d20905055e2888 # initialize rs2
xor x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0xb3b991b01b48878e # initialize rs1
li x7, 0xb44a629241447319 # initialize rs2
xor x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xde99eafb3437e337 # initialize rs1
li x13, 0x3ad29221fd2ceba3 # initialize rs2
xor x17, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xa34e9892f18c69e0 # initialize rs1
li x14, 0x69296ea77d508d91 # initialize rs2
xor x18, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x182949dee4ada642 # initialize rs1
li x13, 0xa21c65da3b3d5853 # initialize rs2
xor x19, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x40f8f1103861726b # initialize rs1
li x17, 0xe3d23fde6db5a7bc # initialize rs2
xor x20, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x6b4a930d54351a08 # initialize rs1
li x20, 0x7da8b854a4fcbca9 # initialize rs2
xor x21, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x25bfb442ec4707a7 # initialize rs1
li x2, 0xcf8da8dc7c087656 # initialize rs2
xor x22, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0xf6c905f402487231 # initialize rs1
li x17, 0xfb1f11b0f0872670 # initialize rs2
xor x23, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xf06982f079ed3b3d # initialize rs1
li x26, 0xa07a45439fd96326 # initialize rs2
xor x24, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xd28974ee1f2aae9a # initialize rs1
li x5, 0x1e76d134411350e7 # initialize rs2
xor x25, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x9787ed78350c72da # initialize rs1
li x24, 0x68d828217d2c2dff # initialize rs2
xor x26, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x354103a086a4b0d7 # initialize rs1
li x3, 0xf584dfbd6d487cae # initialize rs2
xor x27, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x8f48c0f251e2b1de # initialize rs1
li x13, 0xbd3114a56ac117ab # initialize rs2
xor x28, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0xa04a0da96d005840 # initialize rs1
li x26, 0xf28f0e24fd2cf6e9 # initialize rs2
xor x29, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x0ace3504e74a7dff # initialize rs1
li x18, 0x694305698fa73607 # initialize rs2
xor x30, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x3a0c61ae44d3b012 # initialize rs1
li x8, 0x982250a68e3f3a17 # initialize rs2
xor x31, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x26, 0x310e7351cbee3114 # initialize rs2
xor x28, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x24, 0x9b60bf0d9668a773 # initialize rs2
xor x7, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x10, 0x0c0b257e5d5e5730 # initialize rs2
xor x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x4b2f1d24a54cce66 # initialize rs2
xor x13, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x5789ae1547f5f726 # initialize rs2
xor x26, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x19, 0x8cfba97295ad9395 # initialize rs2
xor x6, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x19, 0xd3536c9b3e471171 # initialize rs2
xor x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x41a52268e6e95fb1 # initialize rs2
xor x17, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x17, 0x56a7fcac9f951b9e # initialize rs2
xor x15, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0xabbd1997ae10ee77 # initialize rs2
xor x27, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x1f717a8c39bf85cc # initialize rs2
xor x6, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x27, 0xd9ab7aed72618910 # initialize rs2
xor x24, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x00000000ffffffff # initialize rs1
li x3, 0xb355cc317724bf86 # initialize rs2
xor x7, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x21, 0x4b833ee1449e13a0 # initialize rs2
xor x14, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x25, 0x1c54ed9d33bf5216 # initialize rs2
xor x24, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0xc01a49111ca54d1b # initialize rs2
xor x22, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x80d74ed978ed41e5 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
xor x7, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0xa98bd76e23987d7e # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xor x30, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0xd6d5a7ae9f7670c3 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
xor x24, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x1, 0x88cdd3e47c872f15 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xor x8, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0xd7029e645c3ec3dc # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
xor x3, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x2b2088dc9d1f548d # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
xor x20, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x5b3c0c3f39fe06dd # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
xor x28, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0x7bd444283c23f142 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
xor x9, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x344e6716434b9006 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
xor x6, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x22, 0x3f9883c601197c66 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
xor x9, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x62c20131acb3eb7b # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x233d3ad8a697d6a5 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
xor x10, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x8d3d1d001dce04a6 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xor x15, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xe322d3b04097c52b # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
xor x30, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x2a0e593449b39159 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
xor x29, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x7, 0x1d841ac4a86188e3 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
xor x18, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
xor x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
xor x3, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
xor x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x9, 0x0000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
xor x29, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x31, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
xor x20, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
xor x17, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
xor x11, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
xor x15, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
xor x23, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
xor x25, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x6, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
xor x2, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
xor x2, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
xor x29, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x8, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
xor x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
xor x9, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
xor x21, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x2, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
xor x6, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
xor x30, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xor x21, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x6, 0x0000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
xor x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
xor x18, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
xor x23, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
xor x20, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
xor x31, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
xor x17, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x6, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
xor x19, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
xor x18, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
xor x27, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
xor x28, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
xor x14, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x7, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
xor x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
xor x27, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
xor x26, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x16, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
xor x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x2, 0x0000000000000002 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xor x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
xor x21, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xor x12, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
xor x14, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
xor x28, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
xor x8, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x12, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x11, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
xor x23, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
xor x31, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
xor x2, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x3, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
xor x21, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x1, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
xor x11, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x2, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
xor x23, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
xor x31, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x22, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
xor x20, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
xor x18, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
xor x26, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
xor x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xor x16, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
xor x8, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
xor x26, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
xor x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x21, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
xor x10, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
xor x23, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
xor x29, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x14, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
xor x27, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
xor x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
xor x13, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x26, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xor x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x1, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
xor x2, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x9, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xor x16, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
xor x3, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
xor x3, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xor x17, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
xor x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
xor x26, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
xor x29, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x9, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x10, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
xor x5, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
xor x8, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
xor x29, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x21, 0x8000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
xor x24, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x12, 0x8000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
xor x2, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
xor x2, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
xor x5, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x27, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
xor x13, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xor x28, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xor x19, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
xor x22, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xor x27, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
xor x12, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
xor x6, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x23, 0x7fffffffffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
xor x7, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x7fffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x9, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
xor x25, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
xor x26, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
xor x19, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x15, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
xor x12, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
xor x25, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x22, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
xor x5, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x30, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
xor x31, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x7, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
xor x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x13, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
xor x8, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xor x24, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
xor x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xor x10, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
xor x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
xor x7, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
xor x5, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
xor x15, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
xor x18, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
xor x7, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
xor x25, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x17, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xor x9, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xor x24, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x29, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
xor x6, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x11, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
xor x5, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
xor x21, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x3, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xor x11, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
xor x15, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
xor x29, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
xor x27, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
xor x26, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
xor x20, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x24, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x29, 0xffffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xor x11, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xor x13, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
xor x3, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x7, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
xor x29, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x26, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
xor x18, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x10, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
xor x12, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
xor x30, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x24, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
xor x12, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xor x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
xor x20, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
xor x26, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
xor x8, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
xor x5, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
xor x13, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
xor x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xfffffffffffffffe # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x6, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0xfffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
xor x20, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x5, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
xor x10, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
xor x17, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
xor x9, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
xor x20, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
xor x31, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
xor x17, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
xor x17, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
xor x13, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
xor x11, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xor x8, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xor x24, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xor x9, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
xor x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
xor x5, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x6, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
xor x26, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
xor x2, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
xor x6, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
xor x16, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
xor x29, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
xor x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
xor x15, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
xor x5, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
xor x21, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
xor x5, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
xor x18, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xor x21, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
xor x8, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
xor x13, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
xor x30, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x9, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xor x15, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
xor x10, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
xor x6, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
xor x2, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
xor x17, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x3, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xor x30, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
xor x24, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x28, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xor x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
xor x20, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x13, 0x5555555555555555 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
xor x2, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
xor x19, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
xor x27, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
xor x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
xor x21, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x1, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
xor x25, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5555555555555555 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x10, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
xor x24, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xor x28, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xor x6, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
xor x15, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x25, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
xor x1, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x3, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
xor x9, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
xor x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
xor x18, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x13, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xor x1, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x27, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
xor x2, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
xor x1, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000ffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
xor x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
xor x6, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
xor x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
xor x19, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000ffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x30, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x29, 0x00000000ffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
xor x1, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
xor x25, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
xor x21, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
xor x7, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x18, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
xor x27, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x3, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
xor x22, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x30, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
xor x16, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
xor x17, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x16, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
xor x12, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x17, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xor x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
xor x23, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
xor x9, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x8, 0x00000000fffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xor x18, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
xor x25, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x00000000fffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
xor x22, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x00000000fffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x21, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x9, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
xor x10, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
xor x16, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
xor x26, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
xor x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
xor x18, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x17, 0x0000000100000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
xor x31, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
xor x19, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
xor x2, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x9, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
xor x26, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x16, 0x0000000100000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
xor x29, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
xor x15, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xor x23, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
xor x17, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000100000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
xor x24, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000100000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
xor x10, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x19, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
xor x5, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x9, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
xor x31, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
xor x18, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
xor x10, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x14, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
xor x28, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xor x12, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x13, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
xor x1, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
xor x8, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x15, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
xor x14, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
xor x2, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
xor x5, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
xor x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
xor x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
xor x30, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
xor x10, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000100000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
xor x16, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
xor x7, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
xor x15, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
xor x15, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xor x12, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
xor x10, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc905b8422f95cbd9 # initialize rs1
li x0, 0xbd2bed7a467cfab6 # initialize rs2
xor x22, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x959ce2c756cf0cea # initialize rs1
li x1, 0xc87d248da1f7cb1f # initialize rs2
xor x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc1c85e78111c86e4 # initialize rs1
li x2, 0xefb6d5d8863eb595 # initialize rs2
xor x19, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xa0b938f9da105db6 # initialize rs1
li x3, 0x8d527ba99a4554c0 # initialize rs2
xor x14, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0a3ff6f859588fe2 # initialize rs1
li x4, 0x3e333fdf1ac00f15 # initialize rs2
xor x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x81c875163ada2f34 # initialize rs1
li x5, 0x7d2dac764b48af65 # initialize rs2
xor x29, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x82a45b5824596b39 # initialize rs1
li x6, 0x4c4ed90996561257 # initialize rs2
xor x9, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x091d438d3d1a1cf4 # initialize rs1
li x7, 0x89482a13a84cff23 # initialize rs2
xor x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2405a40055b1e60c # initialize rs1
li x8, 0x0b7c3a5ca64a346b # initialize rs2
xor x16, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xbf270e6556a3744f # initialize rs1
li x9, 0x580b459822241490 # initialize rs2
xor x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x69b02989fda30034 # initialize rs1
li x10, 0x5c918106b722cbfe # initialize rs2
xor x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x86648cfae1cae85c # initialize rs1
li x11, 0xcbc9655faf78e639 # initialize rs2
xor x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x36935af9ef31120e # initialize rs1
li x12, 0x42d88910c412cd0c # initialize rs2
xor x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x235709efa9197092 # initialize rs1
li x13, 0xe12119b1daf45c9d # initialize rs2
xor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe6bf087ea3fd05fa # initialize rs1
li x14, 0x81ae3781086399d1 # initialize rs2
xor x7, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9e4885a623ed088f # initialize rs1
li x15, 0xa5fde67115841d1d # initialize rs2
xor x17, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc6cc8a1669316ae9 # initialize rs1
li x16, 0xf9c6d5b36835ccaa # initialize rs2
xor x15, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xa9c5f5b289bbf064 # initialize rs1
li x17, 0x3344488e652ae5d2 # initialize rs2
xor x25, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbc123b94e9e0e912 # initialize rs1
li x18, 0x2367b55688ac821d # initialize rs2
xor x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x765c6ab0d9fc6800 # initialize rs1
li x19, 0x826930631a11ed82 # initialize rs2
xor x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0099e60459b5212b # initialize rs1
li x20, 0xadab8c118629b75c # initialize rs2
xor x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5e03a2c3e5f0f6a6 # initialize rs1
li x21, 0x1fa8ef1873885bbf # initialize rs2
xor x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7e80d8f1d01019eb # initialize rs1
li x22, 0xd8e90b37c3acdcc8 # initialize rs2
xor x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xaf56e349996764ff # initialize rs1
li x23, 0x4efb9e7bece0cf3e # initialize rs2
xor x19, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8a992b8740d5d6d0 # initialize rs1
li x24, 0x62d149b8e96e8fa6 # initialize rs2
xor x14, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x3c35aa4253f92a42 # initialize rs1
li x25, 0x1c8869b855aa0765 # initialize rs2
xor x7, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x23e213273b2c72e6 # initialize rs1
li x26, 0x4015bb9e57fedda1 # initialize rs2
xor x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd2f5990ba3607445 # initialize rs1
li x27, 0x7f860bb52f71f3f3 # initialize rs2
xor x8, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xc76963db5767c5b3 # initialize rs1
li x28, 0xec26685aa2e0f767 # initialize rs2
xor x16, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x95713adfd71caf18 # initialize rs1
li x29, 0x2af2f70b89483e60 # initialize rs2
xor x24, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xce352bce2239f40b # initialize rs1
li x30, 0xcbd9df286766ee94 # initialize rs2
xor x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xcb1e68f6c377cb28 # initialize rs1
li x31, 0x9d1b777f2995e06e # initialize rs2
xor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xade1a95cb5c4bb14 # initialize rs1
li x2, 0xe8ca2a9f0a11ba96 # initialize rs2
xor x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xdf09bde951e78674 # initialize rs1
li x16, 0x62664cbff6e7ac7b # initialize rs2
xor x1, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4aa0d0c6e62e4443 # initialize rs1
li x3, 0x01415b7a20b7baa2 # initialize rs2
xor x2, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5deaa00827ab39c3 # initialize rs1
li x7, 0x7ada651077da52c5 # initialize rs2
xor x3, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x220faef27c925002 # initialize rs1
li x31, 0xe52252535361f268 # initialize rs2
xor x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x48cea134fdce00ec # initialize rs1
li x23, 0x01c8b4a40aac589e # initialize rs2
xor x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xce8b7a2e237a5576 # initialize rs1
li x3, 0x0c6e9a57cbbbae13 # initialize rs2
xor x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcd459d508a14e180 # initialize rs1
li x15, 0x5759f6f373344cc6 # initialize rs2
xor x7, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc5b95046362549aa # initialize rs1
li x3, 0xb1d74ea99766ab53 # initialize rs2
xor x8, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5b4b0035da15a15d # initialize rs1
li x20, 0xb79f211db15a8377 # initialize rs2
xor x9, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x670c7e30eccb53e3 # initialize rs1
li x26, 0xd5102596003cf54e # initialize rs2
xor x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x04346f054c843986 # initialize rs1
li x5, 0x4309ed5a39c17861 # initialize rs2
xor x11, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x42dca289e46fdb64 # initialize rs1
li x16, 0xa366f66815a775a8 # initialize rs2
xor x12, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xff1b6903baa1c6e4 # initialize rs1
li x16, 0x714a78d6ef7eb4d4 # initialize rs2
xor x13, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd36df628a8a59423 # initialize rs1
li x27, 0x57217c09dc9bcee6 # initialize rs2
xor x14, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb1484bbaee6c08a4 # initialize rs1
li x29, 0x8eddfc6a8552b7b4 # initialize rs2
xor x15, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x12d6567451471f9f # initialize rs1
li x22, 0x21dc7e142cc3dc75 # initialize rs2
xor x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaf1a39746b4c803e # initialize rs1
li x3, 0x4f6cf2d8e490c869 # initialize rs2
xor x17, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb2f4fa19ae85dfe7 # initialize rs1
li x28, 0xd13748211b031764 # initialize rs2
xor x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb90a2b805fadbc42 # initialize rs1
li x7, 0x4e4f9ad9123004c9 # initialize rs2
xor x19, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x44fb28b4e5c115a2 # initialize rs1
li x12, 0x05aefd0eba1588a7 # initialize rs2
xor x20, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6169f8a008dd8440 # initialize rs1
li x23, 0x2c57c503bd355e73 # initialize rs2
xor x21, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc812331a8276b3e8 # initialize rs1
li x20, 0x844e5787a19ce754 # initialize rs2
xor x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1464c0c454c746c6 # initialize rs1
li x20, 0x8560d1a1b1a77113 # initialize rs2
xor x23, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6b6669a070d2471b # initialize rs1
li x15, 0x0defd56f6b29ef24 # initialize rs2
xor x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xdb31dd12b38b5f56 # initialize rs1
li x13, 0xa130075bdd106d12 # initialize rs2
xor x25, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3ce77187fd422de3 # initialize rs1
li x21, 0xcbe6e5feaaaafa40 # initialize rs2
xor x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x302a3e86a0bdb771 # initialize rs1
li x16, 0x93be44f4841b2744 # initialize rs2
xor x27, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf1409510abeb1432 # initialize rs1
li x15, 0xd13ccac68de14f54 # initialize rs2
xor x28, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcbe86d6a88f286cd # initialize rs1
li x13, 0x077259421f31d8b9 # initialize rs2
xor x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x38b43b575294fec7 # initialize rs1
li x28, 0xdf44e4bd320f7ccb # initialize rs2
xor x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x401ae339b2c491f3 # initialize rs1
li x14, 0x4b88a865cf076d57 # initialize rs2
xor x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0xd08e400b8ba36658 # initialize rs1
li x0, 0xa4369de176b13209 # initialize rs2
xor x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x6359d8b5c66b51cc # initialize rs1
li x1, 0x844a45e3b4af4451 # initialize rs2
xor x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x4245aba561c16648 # initialize rs1
li x2, 0xade2cea43d06aaa6 # initialize rs2
xor x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x0721d81f6a42c8ce # initialize rs1
li x3, 0xeb02314290b41c0c # initialize rs2
xor x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x158ab2312c6e793b # initialize rs1
li x4, 0xd2fb42ed61a881ab # initialize rs2
xor x4, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xf6d950fec9aa0650 # initialize rs1
li x5, 0x55a7e76777c94041 # initialize rs2
xor x5, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x47144cc3c4684c69 # initialize rs1
li x6, 0xa7fab9b028698b84 # initialize rs2
xor x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x8e1147e64a97ced8 # initialize rs1
li x7, 0x6bdae920dc1b0a7c # initialize rs2
xor x7, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0x6b2bf9b871a11254 # initialize rs1
li x8, 0x348b7624a6aff9b1 # initialize rs2
xor x8, x29, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x1, 0x2d62888d3da01640 # initialize rs1
li x9, 0x754a847a9eb72dab # initialize rs2
xor x9, x1, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x676989d07795bdbe # initialize rs1
li x10, 0xf0a53b883aa82c10 # initialize rs2
xor x10, x17, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x4, 0x2237326154cf5a84 # initialize rs1
li x11, 0x103260aa7f6e5a5f # initialize rs2
xor x11, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0xed853598eca7d3bd # initialize rs1
li x12, 0xfc92925f67a2b71d # initialize rs2
xor x12, x6, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0xab2ca520b75913ca # initialize rs1
li x13, 0xa6ad0c983bcbe269 # initialize rs2
xor x13, x14, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x30, 0x669ee14d8824c997 # initialize rs1
li x14, 0x975753d2816a4ca4 # initialize rs2
xor x14, x30, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x89c086b65ac58c7c # initialize rs1
li x15, 0xc8a8f75522780344 # initialize rs2
xor x15, x10, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x27fb45b8e6f6dc81 # initialize rs1
li x16, 0x9baaf0567e12c589 # initialize rs2
xor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0xac6123c458db7944 # initialize rs1
li x17, 0x7636963abc8656be # initialize rs2
xor x17, x24, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x7, 0x36d065737d01c248 # initialize rs1
li x18, 0x38926ca5df77df0c # initialize rs2
xor x18, x7, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x23, 0xa5a397aa88e307a4 # initialize rs1
li x19, 0xd2f82f30cc18bc0b # initialize rs2
xor x19, x23, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0x0e453dfe5a1ce3e9 # initialize rs1
li x20, 0x39b0d315acaeff5e # initialize rs2
xor x20, x19, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x4, 0x853932f00a15aa55 # initialize rs1
li x21, 0x7daee6e3a2657222 # initialize rs2
xor x21, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x26, 0xe5c7766a5c4fbec5 # initialize rs1
li x22, 0xe3b2c2b960018150 # initialize rs2
xor x22, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x596e7706905dd8b0 # initialize rs1
li x23, 0x6129eb483e1e3065 # initialize rs2
xor x23, x7, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x25546cf563d02f64 # initialize rs1
li x24, 0xb091a7762d7438cc # initialize rs2
xor x24, x10, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xbb708ef41971393c # initialize rs1
li x25, 0x67bce714185e2c20 # initialize rs2
xor x25, x15, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x10, 0x022637b23a3830a6 # initialize rs1
li x26, 0x6a33c94848dc8e65 # initialize rs2
xor x26, x10, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x15, 0x47c3011607d04b61 # initialize rs1
li x27, 0x25158f3cf0fb9c72 # initialize rs2
xor x27, x15, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xb9ebaccf79a959e9 # initialize rs1
li x28, 0x5e742be7e119eaf5 # initialize rs2
xor x28, x13, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0xd1817225c671f619 # initialize rs1
li x29, 0x43e6450a9853dbe0 # initialize rs2
xor x29, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0x3c5f745010e58be7 # initialize rs1
li x30, 0x13537d15c7634b76 # initialize rs2
xor x30, x14, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x15, 0xf235c00fbb6af1ac # initialize rs1
li x31, 0x610206e47c73cafc # initialize rs2
xor x31, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x51052c1fbd32e7f9 # initialize rs1
li x0, 0xab7867cddc94d63d # initialize rs2
xor x0, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x209fe38dcf638571 # initialize rs1
li x1, 0xdb55ccc1b77e9afb # initialize rs2
xor x1, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x76233f226980b488 # initialize rs1
li x2, 0xbe03e285fc9c6be6 # initialize rs2
xor x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa652b923bd97df94 # initialize rs1
li x3, 0x500e1edfdbeaa7a7 # initialize rs2
xor x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0xf58eccdcdcd6fd13 # initialize rs1
li x4, 0x06a87e627b2535e3 # initialize rs2
xor x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8b8200a0372a9dbd # initialize rs1
li x5, 0xae38046990089b9a # initialize rs2
xor x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9d0fd37ae9e789a7 # initialize rs1
li x6, 0x740680b5592cfde0 # initialize rs2
xor x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8bba81190481c805 # initialize rs1
li x7, 0xeca75ae3eabd5909 # initialize rs2
xor x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0b559959eaf4d694 # initialize rs1
li x8, 0x663f7cc7769c1d28 # initialize rs2
xor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa75d6d891417ff48 # initialize rs1
li x9, 0x82285a4ae8445746 # initialize rs2
xor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xabeea3ed706a4ccc # initialize rs1
li x10, 0xa4e8b938314a5327 # initialize rs2
xor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb2d2242bfc6fc059 # initialize rs1
li x11, 0x038722be2caedc60 # initialize rs2
xor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xdd5be221e472f4a7 # initialize rs1
li x12, 0xd442da965e35a16a # initialize rs2
xor x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb68028fab4285df8 # initialize rs1
li x13, 0x3149c448be71076f # initialize rs2
xor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x02949c6aef7de2ca # initialize rs1
li x14, 0x137c579f3293429c # initialize rs2
xor x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbce4a20c931cd64c # initialize rs1
li x15, 0x4fa4e957cda37904 # initialize rs2
xor x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x652d4bba815f0659 # initialize rs1
li x16, 0xc1321834c59dd06e # initialize rs2
xor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xdeab1bbf8839ca7f # initialize rs1
li x17, 0x88bfa7fc09c8d645 # initialize rs2
xor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x031d2bf7730b29b8 # initialize rs1
li x18, 0xb1c9c15fae196e86 # initialize rs2
xor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5d90f3e0c743b2e5 # initialize rs1
li x19, 0xbb533e68fffaccc7 # initialize rs2
xor x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa28b3d0ac8dcb455 # initialize rs1
li x20, 0x3d73d158648d66b5 # initialize rs2
xor x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x3c4cf3bcabc70a42 # initialize rs1
li x21, 0x53d6908add5e2ea1 # initialize rs2
xor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x642458e5f6e5d2aa # initialize rs1
li x22, 0x595efa0cd2ddc667 # initialize rs2
xor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc580cfbd3add4635 # initialize rs1
li x23, 0xb89f9c5b6fbdb53c # initialize rs2
xor x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7bc6a9e7b5b251a4 # initialize rs1
li x24, 0x1ca54ae6afc01165 # initialize rs2
xor x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd6c358f132273f2a # initialize rs1
li x25, 0x6be2345be3e44886 # initialize rs2
xor x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xdadb7c95ef440097 # initialize rs1
li x26, 0x91eb6aefc0db500a # initialize rs2
xor x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x759fd6f9932b5427 # initialize rs1
li x27, 0x7da4de5bd4430bf3 # initialize rs2
xor x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb1135b883069d30b # initialize rs1
li x28, 0xf06eeed5c32e21f6 # initialize rs2
xor x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x39c5923ca9ed3584 # initialize rs1
li x29, 0x51b243eb886fe91f # initialize rs2
xor x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x23a3729daaedb373 # initialize rs1
li x30, 0x5d385395725961f3 # initialize rs2
xor x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa886816442bbfbf7 # initialize rs1
li x31, 0x25dc97f8868a371a # initialize rs2
xor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x2, x25 # perform first operation
xor x29, x12, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x27, x26 # perform first operation
xor x19, x10, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x30, x5 # perform first operation
xor x3, x27, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x22, x7 # perform first operation
xor x7, x6, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x31, x9 # perform first operation
xor x26, x6, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x23, x7 # perform first operation
xor x23, x13, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x21, x20 # perform first operation
xor x13, x3, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x14, x24 # perform first operation
xor x7, x22, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x11, x14 # perform first operation
xor x31, x9, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x21, x20 # perform first operation
xor x21, x31, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x28, x29 # perform first operation
xor x29, x18, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x20, x9 # perform first operation
xor x11, x8, x29 # perform second (triggering) operation

.EQU SIGSIZE,4096


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
