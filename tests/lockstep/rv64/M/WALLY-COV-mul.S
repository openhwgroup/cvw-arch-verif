///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-mul.S
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
li x0, 0x85558031f14a7e90 # initialize rs1
li x2, 0x485de21c77d32db8 # initialize rs2
mul x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe5b2ba61fdb32a80 # initialize rs1
li x2, 0x521af14e3e0ace47 # initialize rs2
mul x8, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x09960fe51fa6bf61 # initialize rs1
li x3, 0x41154fc6270fbeca # initialize rs2
mul x25, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8e2b1214a3f82ab5 # initialize rs1
li x14, 0x88b923e9406720e0 # initialize rs2
mul x11, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1c0984f74b85bca4 # initialize rs1
li x29, 0x17f6999229bf93ef # initialize rs2
mul x1, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcb19d8daa53dd02f # initialize rs1
li x27, 0x9ece252fabaa1a99 # initialize rs2
mul x19, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7d64b18097618499 # initialize rs1
li x31, 0xa8c89e501b571492 # initialize rs2
mul x29, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcaa91f159268d865 # initialize rs1
li x18, 0x1e1f1f5d5313a2f0 # initialize rs2
mul x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa09b3878d56d9139 # initialize rs1
li x25, 0x2f5317622f69ed12 # initialize rs2
mul x3, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbd104bf002505130 # initialize rs1
li x3, 0xa88a8febd84761dd # initialize rs2
mul x28, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4d9a1b8d2bc68259 # initialize rs1
li x28, 0x1b59ab7e042bd76a # initialize rs2
mul x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x73ce1d34fccd5425 # initialize rs1
li x15, 0x479c750ecf4bc615 # initialize rs2
mul x24, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7845a6a47271588d # initialize rs1
li x3, 0x426542a0e452f0d6 # initialize rs2
mul x30, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xec072c45abfb1641 # initialize rs1
li x14, 0xd022b98dca4585bb # initialize rs2
mul x26, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4b4f4902de8932a0 # initialize rs1
li x18, 0x42f10512b3837019 # initialize rs2
mul x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x14c8f53c5048016a # initialize rs1
li x14, 0xfb2b1e497da5c0d0 # initialize rs2
mul x24, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf79bbca87c968d7e # initialize rs1
li x12, 0x5f4847074c380284 # initialize rs2
mul x23, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x738d6067fac2a18e # initialize rs1
li x14, 0x5adee5d93558a1b6 # initialize rs2
mul x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0a569f5b39c34a63 # initialize rs1
li x30, 0xe641aebcdfdb07ff # initialize rs2
mul x8, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x438f530726f92a9f # initialize rs1
li x25, 0x473363fd932af80b # initialize rs2
mul x15, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x54ea7c159e521f42 # initialize rs1
li x11, 0xccc4e0cf5d2d45eb # initialize rs2
mul x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8a5761058f27d906 # initialize rs1
li x31, 0x4b6a47e7208fee55 # initialize rs2
mul x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x55a5a7eb616f7a04 # initialize rs1
li x21, 0x0e2178710e667797 # initialize rs2
mul x16, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb8ecfa82864bfd72 # initialize rs1
li x18, 0xe74e912971c59e65 # initialize rs2
mul x7, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb5e7151a6bd78490 # initialize rs1
li x12, 0xe0dfb59d4ab02f8b # initialize rs2
mul x13, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe88d39ae513187fa # initialize rs1
li x2, 0x341e9dab79ab696a # initialize rs2
mul x27, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2debd9db23e519f9 # initialize rs1
li x17, 0x416d6131f9d6afa4 # initialize rs2
mul x16, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x637a6407ae475083 # initialize rs1
li x15, 0xab4bba8e5c872f85 # initialize rs2
mul x11, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5855878db671124d # initialize rs1
li x2, 0xc9a1ca76af0322b0 # initialize rs2
mul x26, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3ce6fa5df0aebd88 # initialize rs1
li x22, 0x00e8b84223a47628 # initialize rs2
mul x23, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1403d929aafcf2a3 # initialize rs1
li x2, 0x43c5306f38cd4177 # initialize rs2
mul x26, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x68902d6b519be338 # initialize rs1
li x22, 0x7283339ced8fb406 # initialize rs2
mul x5, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x028695baa537c6fc # initialize rs1
li x0, 0x6e44599c8c0af779 # initialize rs2
mul x30, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0xe9e126dfc0f5bddc # initialize rs1
li x1, 0x9a24b80e6760a224 # initialize rs2
mul x15, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x29, 0x494d03f4c5ee2daa # initialize rs1
li x2, 0xaefd5a285cd9d298 # initialize rs2
mul x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xde6eeccf28e9f44c # initialize rs1
li x3, 0x510863bb9338c007 # initialize rs2
mul x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x820c08391417b4b8 # initialize rs1
li x4, 0xbc7da84f4ab10e02 # initialize rs2
mul x15, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0xdeb92e4ba46ce421 # initialize rs1
li x5, 0xb12c164f52e49ba1 # initialize rs2
mul x23, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xc91646c4973f9818 # initialize rs1
li x6, 0x0fe01131a3d2d47b # initialize rs2
mul x17, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x2729367ed8738c68 # initialize rs1
li x7, 0x3e0984d7ac5d824c # initialize rs2
mul x21, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x63969d84f705f716 # initialize rs1
li x8, 0x5673506f1baa3112 # initialize rs2
mul x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x5, 0x20b30ebd62f9cd1c # initialize rs1
li x9, 0x97bfdc5ad3ea856e # initialize rs2
mul x14, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x25, 0x73e417bb385c1ef5 # initialize rs1
li x10, 0x1c6d2efa5fa83c3e # initialize rs2
mul x27, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x2, 0xd0e32727aece95a0 # initialize rs1
li x11, 0x490ea0b23a9eaa1e # initialize rs2
mul x20, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x73a8cd66c014adce # initialize rs1
li x12, 0xb55de30ee517579a # initialize rs2
mul x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x778ecf9662118383 # initialize rs1
li x13, 0xdbb64e54c6f43bc5 # initialize rs2
mul x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x3a7915239f2465e2 # initialize rs1
li x14, 0x89fb8acc9f4a2f65 # initialize rs2
mul x7, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x55352de8935ffc2c # initialize rs1
li x15, 0xe7b4f4c1ec92b805 # initialize rs2
mul x6, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xfc4659b90f7e1583 # initialize rs1
li x16, 0x4562a1724d397402 # initialize rs2
mul x29, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x9d54eed5be49022d # initialize rs1
li x17, 0xe4b5cdb93d587221 # initialize rs2
mul x16, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x2c747532fcafdc73 # initialize rs1
li x18, 0xcde980470ad3f950 # initialize rs2
mul x1, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x513ce8fa1377ed60 # initialize rs1
li x19, 0x9f45fcbc8ad9373a # initialize rs2
mul x13, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0xaff35d298a86087b # initialize rs1
li x20, 0xb9c62d98048448be # initialize rs2
mul x6, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0x808e560239f5f7bf # initialize rs1
li x21, 0x188f80e7769b7826 # initialize rs2
mul x14, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x13560cef908262aa # initialize rs1
li x22, 0xbbbf836cd7a07ce4 # initialize rs2
mul x8, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x6143fbf8767c418a # initialize rs1
li x23, 0x2262c48481a5f677 # initialize rs2
mul x5, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x872cb34da5ffd7f2 # initialize rs1
li x24, 0xa45051b3e9ddeb4b # initialize rs2
mul x29, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x53700e7f6b427b48 # initialize rs1
li x25, 0x554aae1867e884af # initialize rs2
mul x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0xbf649885e7612852 # initialize rs1
li x26, 0xb8210b229330984a # initialize rs2
mul x23, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x16, 0x32f583761c9ee19a # initialize rs1
li x27, 0x4e48e6d06bf149df # initialize rs2
mul x19, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0xa5bc85ff0c912c14 # initialize rs1
li x28, 0xf90fa2b035b67c88 # initialize rs2
mul x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xa08b185d3603f549 # initialize rs1
li x29, 0x535a15644dbfb62b # initialize rs2
mul x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x93b45be51fb03afe # initialize rs1
li x30, 0x6185993f51cf8c17 # initialize rs2
mul x2, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x12, 0x4245875b16b66c7e # initialize rs1
li x31, 0x6a7186b38a9ec6f5 # initialize rs2
mul x18, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xdd43703e7dbe4682 # initialize rs1
li x27, 0xcb6604000b6a821d # initialize rs2
mul x0, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0xc05f17cf029d7090 # initialize rs1
li x15, 0x132428ba60dec141 # initialize rs2
mul x1, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x58ba903e61dbb0cd # initialize rs1
li x7, 0x10d1f0afc8a5b76b # initialize rs2
mul x2, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x3b14704ce4c6c298 # initialize rs1
li x22, 0x2dc296589848d0e2 # initialize rs2
mul x3, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xf50c673f35c40870 # initialize rs1
li x5, 0xe7b6b5a84c732888 # initialize rs2
mul x4, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x13, 0x52b0106f9961e307 # initialize rs1
li x15, 0x6f4670f80834f6f5 # initialize rs2
mul x5, x13, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x646eaa16544a9d6c # initialize rs1
li x26, 0x0a888d8a2346fa49 # initialize rs2
mul x6, x22, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x3200daa5165fd0bb # initialize rs1
li x6, 0x38cc83fa7c089236 # initialize rs2
mul x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x57745bc3fe9eb928 # initialize rs1
li x12, 0x804add865b209e1b # initialize rs2
mul x8, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x29, 0xd77507f62bafdc2b # initialize rs1
li x14, 0x7c2ca2592fab2a0a # initialize rs2
mul x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xd50c2e1e3d216e51 # initialize rs1
li x30, 0xccfa0697d8f82191 # initialize rs2
mul x10, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0x323e26a93d514b75 # initialize rs1
li x8, 0xc5af3a64626f720e # initialize rs2
mul x11, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0x9f15437ce518d279 # initialize rs1
li x29, 0xaad880a88481a861 # initialize rs2
mul x12, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x742b26729d9c6367 # initialize rs1
li x31, 0x19ed16232792332d # initialize rs2
mul x13, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x7feee5e2a14ad7ca # initialize rs1
li x13, 0x6784a2e7ef9fbe26 # initialize rs2
mul x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x646fa8686a7d9b59 # initialize rs1
li x17, 0x4cfd41850fd2c27f # initialize rs2
mul x15, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x5510c86c3936e96b # initialize rs1
li x6, 0x7659281110ad703c # initialize rs2
mul x16, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x94314339486d91a7 # initialize rs1
li x8, 0xff86d6a1f60eb933 # initialize rs2
mul x17, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xfa3f55ff12b18cab # initialize rs1
li x19, 0x0893e62be72b6fa5 # initialize rs2
mul x18, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0x86e10d320ffc3446 # initialize rs1
li x10, 0x19a2037f212f6a52 # initialize rs2
mul x19, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x29, 0xfe63338d76f79742 # initialize rs1
li x14, 0xbd432a420da88ca7 # initialize rs2
mul x20, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xe524a8d5a2546005 # initialize rs1
li x12, 0x73825cb0c1a6de2f # initialize rs2
mul x21, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5218a17a8694b695 # initialize rs1
li x7, 0x72e44d30d4a3ad1b # initialize rs2
mul x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0x50ad7947dd28ba9d # initialize rs1
li x1, 0x3f316f06d10940f6 # initialize rs2
mul x23, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0x44f33079b3acac51 # initialize rs1
li x17, 0x52cf85fddbd41d4a # initialize rs2
mul x24, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x9a0a7d25b773e0a7 # initialize rs1
li x27, 0x77bf9f3f983baca5 # initialize rs2
mul x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x688f534ec5783d50 # initialize rs1
li x9, 0x28b95ad3f343e2f7 # initialize rs2
mul x26, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x84bd288729f31678 # initialize rs1
li x11, 0xf7212102484884f2 # initialize rs2
mul x27, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xb4afba5fb7e1abfc # initialize rs1
li x24, 0x99b7fb3961fcdc8a # initialize rs2
mul x28, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xcb8db8f5f625704f # initialize rs1
li x12, 0xa515ec9f70e3721f # initialize rs2
mul x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0x301f2bf55445dc43 # initialize rs1
li x26, 0x71cdb32b053aad1f # initialize rs2
mul x30, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0xabd45995c19adce2 # initialize rs1
li x12, 0x9d8b6ced047bee9f # initialize rs2
mul x31, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rs1
li x11, 0x636e13eb8a1a35aa # initialize rs2
mul x23, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x13, 0xc85a0de04947d5be # initialize rs2
mul x7, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x1ab660ca5cb20262 # initialize rs2
mul x19, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x8, 0x7a03b0730925d273 # initialize rs2
mul x23, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
li x13, 0x3ba073095ffbff0a # initialize rs2
mul x15, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0xb06557b2666cd0b2 # initialize rs2
mul x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x59d6e7fc53f5c40a # initialize rs2
mul x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x16, 0x87b52091d9fe26c0 # initialize rs2
mul x15, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x19, 0xdaaf1f51a89e4462 # initialize rs2
mul x24, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xd2a7c299deca27f8 # initialize rs2
mul x19, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x9a6546b494fc18f9 # initialize rs2
mul x29, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
li x23, 0xe901a1c3fd8f7ab4 # initialize rs2
mul x8, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x11, 0x77fab77f46d729d5 # initialize rs2
mul x2, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x28, 0xa251133a5ae77eba # initialize rs2
mul x7, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x8, 0x87b0569b5e034429 # initialize rs2
mul x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x20, 0xd561149eccf728b2 # initialize rs2
mul x31, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x8f796404d0ecc232 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mul x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x27081f41b5767c49 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mul x5, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0xfdcad3fadb6afc83 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mul x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x1, 0xf761d4fc11ba8c44 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mul x20, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x04387ea37b22f740 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mul x9, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x6643fd1fb0866ff3 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
mul x7, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0xc2e7bfea0474cf64 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mul x17, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x3, 0x4f81f5aa3bcba8ac # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mul x25, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xce13b2f6653c3ff4 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mul x7, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xef21fe322f7bc4b2 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xa6e8b27b6a8af6c9 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x28, 0xbc0dba46b47358da # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x25, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x791bf0ca6ad5f641 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x11, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x6deb463e1530ce18 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
mul x1, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x0db66d86bcb08da5 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mul x23, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0xe9300a829b98237e # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mul x1, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mul x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mul x15, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mul x8, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
mul x17, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x0000000000000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
mul x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mul x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mul x14, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mul x28, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mul x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mul x10, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x10, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mul x30, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
mul x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mul x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x22, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
mul x15, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mul x30, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mul x15, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x9, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mul x14, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x14, 0x0000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mul x8, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x6, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mul x10, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mul x15, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mul x6, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x9, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mul x14, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x21, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mul x28, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
mul x26, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0000000000000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mul x24, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x11, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
mul x21, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x14, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mul x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mul x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x18, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mul x30, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x22, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mul x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x17, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mul x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mul x31, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mul x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mul x25, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mul x6, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mul x18, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
mul x14, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mul x16, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mul x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
mul x11, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x21, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mul x1, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mul x10, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mul x2, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mul x27, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x17, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mul x27, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
mul x21, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mul x14, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x17, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
mul x30, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x19, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
mul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x8000000000000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
mul x17, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x9, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mul x25, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mul x23, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mul x22, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mul x10, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x29, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mul x9, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mul x3, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mul x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mul x27, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mul x13, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mul x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mul x18, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mul x23, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mul x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x29, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
mul x11, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mul x9, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mul x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x1, 0x8000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
mul x13, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
mul x23, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
mul x15, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x12, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mul x24, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x22, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mul x29, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mul x24, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
mul x5, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x25, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
mul x30, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mul x11, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mul x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x13, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mul x23, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mul x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
mul x6, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
mul x3, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mul x23, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x28, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mul x24, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x14, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
mul x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
mul x17, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mul x3, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0x7ffffffffffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mul x31, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mul x26, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mul x27, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mul x29, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
mul x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x1, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x19, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mul x12, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
mul x28, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mul x15, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mul x29, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x2, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mul x14, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
mul x16, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
mul x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mul x17, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x26, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mul x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mul x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mul x12, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
mul x25, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
mul x8, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0xffffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x2, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x19, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mul x20, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mul x19, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mul x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x30, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
mul x26, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
mul x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mul x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x26, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mul x21, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mul x9, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mul x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mul x30, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mul x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mul x13, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mul x26, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0xfffffffffffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mul x5, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mul x29, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
mul x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x11, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x1, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x6, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mul x6, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mul x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mul x18, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
mul x21, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mul x21, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
mul x21, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mul x7, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
mul x13, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
mul x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mul x11, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mul x7, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mul x28, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
mul x11, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
mul x15, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mul x31, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mul x24, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mul x6, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
mul x3, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
mul x30, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mul x29, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mul x18, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mul x26, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mul x20, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mul x1, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mul x19, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mul x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mul x22, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mul x29, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mul x30, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
mul x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mul x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x9, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mul x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x27, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mul x20, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x31, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mul x16, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mul x24, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mul x7, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x22, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mul x26, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mul x22, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x1, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x22, 0x5555555555555555 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mul x26, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mul x2, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mul x8, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mul x11, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x11, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
mul x2, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mul x18, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mul x18, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mul x7, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x23, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mul x27, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mul x9, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
mul x31, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mul x30, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
mul x2, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x00000000ffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mul x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
mul x7, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x12, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mul x27, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
mul x5, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
mul x10, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x8, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mul x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mul x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
mul x5, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mul x8, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mul x6, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x30, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mul x10, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x10, 0x00000000fffffffe # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mul x20, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
mul x12, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
mul x18, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mul x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mul x10, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000fffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mul x3, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x2, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mul x7, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
mul x1, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mul x23, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
mul x6, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mul x22, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
mul x19, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mul x25, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
mul x27, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
mul x9, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
mul x26, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mul x11, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
mul x19, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mul x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mul x3, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000100000000 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mul x14, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000100000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x27, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x16, 0x0000000100000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mul x10, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mul x21, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mul x30, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mul x22, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mul x21, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x7, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mul x11, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
mul x25, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
mul x27, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x18, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
mul x26, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mul x26, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
mul x2, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
mul x1, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
mul x16, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mul x11, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mul x6, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000100000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mul x20, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
mul x1, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
mul x17, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
mul x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mul x19, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mul x30, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc7578ba2eb9fb59d # initialize rs1
li x0, 0x9e44a46795802ebe # initialize rs2
mul x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xbd28a121fb371cd8 # initialize rs1
li x1, 0x619169d8a474a6d8 # initialize rs2
mul x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x2bda2365ed12cc6c # initialize rs1
li x2, 0x983ecea2142d7671 # initialize rs2
mul x24, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x78aad300f60e6b14 # initialize rs1
li x3, 0xd1cb9cd6ae9b78e4 # initialize rs2
mul x6, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ec828f11a8d3fbb # initialize rs1
li x4, 0x83d9247dac617459 # initialize rs2
mul x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb32d89f78543eedb # initialize rs1
li x5, 0xc3a50a2eb5170e22 # initialize rs2
mul x30, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8dcaa4245708086d # initialize rs1
li x6, 0xc5ea2cfab9fa4f40 # initialize rs2
mul x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbfc7772e2a1c8f60 # initialize rs1
li x7, 0x674b2f421c93862f # initialize rs2
mul x17, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x3d654e537eb8eda7 # initialize rs1
li x8, 0x4091a4933a6875b6 # initialize rs2
mul x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa55421f8211bc68a # initialize rs1
li x9, 0x3e66a2671b30fc34 # initialize rs2
mul x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xc056c9c35146909c # initialize rs1
li x10, 0xa0bcba407c794da1 # initialize rs2
mul x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x4bd304e4d778c4d8 # initialize rs1
li x11, 0x204f6174b25d1e94 # initialize rs2
mul x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5665bdcfa9d095cb # initialize rs1
li x12, 0xca622eecf4abfbe6 # initialize rs2
mul x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xafef1d645e02debf # initialize rs1
li x13, 0xed443b5c3861a0f1 # initialize rs2
mul x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa6814f5918f02df4 # initialize rs1
li x14, 0x4d6efabecb6f3370 # initialize rs2
mul x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x395ebd2c1ed38118 # initialize rs1
li x15, 0x636379cb845002fa # initialize rs2
mul x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x78b255d0563d8319 # initialize rs1
li x16, 0xf915f51120c7c944 # initialize rs2
mul x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x96922924eaabc586 # initialize rs1
li x17, 0x2deb7a93fc2d8288 # initialize rs2
mul x29, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa3d768ab4f839fa6 # initialize rs1
li x18, 0xa1f2674bec7fcb21 # initialize rs2
mul x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc2eb43ee76abbe6a # initialize rs1
li x19, 0xf079faf0382a80f6 # initialize rs2
mul x20, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x027f0adb2208b351 # initialize rs1
li x20, 0x0fc29554fbb06141 # initialize rs2
mul x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x96236735b3440d2f # initialize rs1
li x21, 0x0e4221ade4e0b047 # initialize rs2
mul x22, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x334c4c4ad0c0fd11 # initialize rs1
li x22, 0xa1aec849bc60b96a # initialize rs2
mul x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x66a751e10c6c9404 # initialize rs1
li x23, 0x42aefd111b549140 # initialize rs2
mul x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7b013bebde022a6a # initialize rs1
li x24, 0x526797bae6423138 # initialize rs2
mul x22, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x0daeb1b7bbf4c4fe # initialize rs1
li x25, 0xfb93a67f2cf9ddf5 # initialize rs2
mul x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeeb37dc8108db715 # initialize rs1
li x26, 0x74cfcff761daad63 # initialize rs2
mul x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x788357ab3a70d8f2 # initialize rs1
li x27, 0x94d8e642c5b3186c # initialize rs2
mul x7, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xdbdf0c0a8f480faf # initialize rs1
li x28, 0xff52e37570d89339 # initialize rs2
mul x30, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdde4f0fdeceb2087 # initialize rs1
li x29, 0xf322d5b711b89e78 # initialize rs2
mul x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x79cf4e2c5a73dd5b # initialize rs1
li x30, 0xaa8866dfa421441b # initialize rs2
mul x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xbe28e2e8c7ea1278 # initialize rs1
li x31, 0x62569986a8154fcc # initialize rs2
mul x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf2055550b0bcdac4 # initialize rs1
li x15, 0xd7c63137052a07b2 # initialize rs2
mul x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x34abc82e7db2ade0 # initialize rs1
li x8, 0x3f7189535b394e2f # initialize rs2
mul x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8fe49f31ad6f25db # initialize rs1
li x20, 0xd813f4fef35949c2 # initialize rs2
mul x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4764802b2c5d3ed6 # initialize rs1
li x2, 0xeba5951f085e4cea # initialize rs2
mul x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x93bc6d575ce27b7b # initialize rs1
li x28, 0x5e297094e0d6a677 # initialize rs2
mul x4, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8148e3d50098dea0 # initialize rs1
li x6, 0x24ac2f502e0469ef # initialize rs2
mul x5, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xdab4d41f75d92e53 # initialize rs1
li x18, 0xa00df124f64472ad # initialize rs2
mul x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc9bf9ae7ba17b65 # initialize rs1
li x11, 0xa9f755fa64fe05e9 # initialize rs2
mul x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc65cf21d96fa1508 # initialize rs1
li x14, 0x9b28982ed9fed59a # initialize rs2
mul x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2b2177ca5fe22c9d # initialize rs1
li x11, 0xd2de0ed4bd5fe764 # initialize rs2
mul x9, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfb984017e0fbbbec # initialize rs1
li x23, 0x0b330fea945673a5 # initialize rs2
mul x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4afcf1f85188b848 # initialize rs1
li x13, 0x7af49cac3c895e12 # initialize rs2
mul x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf4d50f5e527f5757 # initialize rs1
li x18, 0x4a839f3c0d152b91 # initialize rs2
mul x12, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd15483e4d1ab925d # initialize rs1
li x15, 0x9dc7983e588e50fc # initialize rs2
mul x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x905ca0805dde3006 # initialize rs1
li x10, 0xdbcef929c068d54b # initialize rs2
mul x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd368c5a5c02b0854 # initialize rs1
li x12, 0x9e51d0505c4304d1 # initialize rs2
mul x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf86b0bdffddbdf45 # initialize rs1
li x14, 0xdd2dcb9c4e8d8a8e # initialize rs2
mul x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xaca1dd9d5ef4d76c # initialize rs1
li x7, 0x00e841e13f8b1c7d # initialize rs2
mul x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7fbcec078a565ebb # initialize rs1
li x10, 0x053d1f8748d45719 # initialize rs2
mul x18, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd5f6a34faf858cb0 # initialize rs1
li x25, 0xf97d3613a2b46089 # initialize rs2
mul x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa136fade5c52f76e # initialize rs1
li x21, 0xcb29e2ea6b6d73c9 # initialize rs2
mul x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9a0049c6278c1ad4 # initialize rs1
li x26, 0xca0f6ab320b5a5a2 # initialize rs2
mul x21, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x61a5b1092b302791 # initialize rs1
li x30, 0xafdc76fa11bc6f70 # initialize rs2
mul x22, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcbee2de98b4f81cf # initialize rs1
li x13, 0x950601d77aa0cce6 # initialize rs2
mul x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x79c0656a8e3c2ead # initialize rs1
li x20, 0x9be4e334dbe2a375 # initialize rs2
mul x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xda7c1d1cec04d958 # initialize rs1
li x29, 0x9960199f03bc53ec # initialize rs2
mul x25, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2181df928ea7bed1 # initialize rs1
li x21, 0x21365c02f120dd4f # initialize rs2
mul x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xef04271e907d174f # initialize rs1
li x19, 0x019e7ffd5a4c255f # initialize rs2
mul x27, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x87d9b5f339b8febb # initialize rs1
li x21, 0x056092c8b23fda1e # initialize rs2
mul x28, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xaf06ce27c9f6320d # initialize rs1
li x24, 0x5336719456f5b85b # initialize rs2
mul x29, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3fc0bb73d2899603 # initialize rs1
li x8, 0x72a8c24447917ab6 # initialize rs2
mul x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe05f318339683fd6 # initialize rs1
li x22, 0xfcfbf7cf19c851aa # initialize rs2
mul x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xea95840f28a81a24 # initialize rs1
li x0, 0x55fb782d3b3e1177 # initialize rs2
mul x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x10b8f5a98f66a8ae # initialize rs1
li x1, 0x587ebc3020915ec1 # initialize rs2
mul x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x46ce1c8a8af6f483 # initialize rs1
li x2, 0x9056b1ad197e8b68 # initialize rs2
mul x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0xfecd2f96945f25b5 # initialize rs1
li x3, 0xe5be32d602cfc302 # initialize rs2
mul x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x1f5b7b49b4d4fefe # initialize rs1
li x4, 0x93e1bc7953a4945d # initialize rs2
mul x4, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x37b0c1f45936e8f1 # initialize rs1
li x5, 0xd1129137a213c5d4 # initialize rs2
mul x5, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x6310a8012459f5c1 # initialize rs1
li x6, 0x687bda4c4cfabace # initialize rs2
mul x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x9b85132946007b72 # initialize rs1
li x7, 0x3963d7fa4b0c1d40 # initialize rs2
mul x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x19, 0x771e5127c75f69a6 # initialize rs1
li x8, 0x2960da03ed0d0526 # initialize rs2
mul x8, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0x90576e12c54baca3 # initialize rs1
li x9, 0xc1fa3a1635228600 # initialize rs2
mul x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x6cf40bd7dd067f50 # initialize rs1
li x10, 0x912da9986dd76d01 # initialize rs2
mul x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0xb3e34e7205ac4a70 # initialize rs1
li x11, 0xd2b1864090ec4da9 # initialize rs2
mul x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0x714c8225d30989b5 # initialize rs1
li x12, 0xb45984bb49f416ae # initialize rs2
mul x12, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x865a59cec87710f7 # initialize rs1
li x13, 0xa0065536bc8ce515 # initialize rs2
mul x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xec70f15aae23b2e5 # initialize rs1
li x14, 0x043713e96deb2c06 # initialize rs2
mul x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x8732e8f07d7cbcbd # initialize rs1
li x15, 0x65b30d61b11ba027 # initialize rs2
mul x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0x34e63cb09bd1d11a # initialize rs1
li x16, 0x3b09cdb0ab73dc68 # initialize rs2
mul x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x5f41a1c240fc9f3a # initialize rs1
li x17, 0x71410dac9913b217 # initialize rs2
mul x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x91c3ef9e38cd61c0 # initialize rs1
li x18, 0x5620f0db5ae02247 # initialize rs2
mul x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xa66c2f190cc2b8a5 # initialize rs1
li x19, 0x6fb4504035707eb2 # initialize rs2
mul x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0x9c3f87df9aa9d8b0 # initialize rs1
li x20, 0xab15f72b7e7c3fbb # initialize rs2
mul x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x733b4cb32d610df1 # initialize rs1
li x21, 0xedc5ff6760884282 # initialize rs2
mul x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x28, 0x8eb26c79f5fb64c9 # initialize rs1
li x22, 0x729dbcc2f57ef0e3 # initialize rs2
mul x22, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x26, 0x514dc58143ea5832 # initialize rs1
li x23, 0x401dd294c6525dcd # initialize rs2
mul x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x2bc4a0ece342cae4 # initialize rs1
li x24, 0x8296b7318fd9a6ac # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0x3d3061c1894eb32e # initialize rs1
li x25, 0xc829a8f50863ff06 # initialize rs2
mul x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xa4255d88e243dcf9 # initialize rs1
li x26, 0xee79de95f770cb8b # initialize rs2
mul x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x26, 0x4823910695f6afa9 # initialize rs1
li x27, 0x4d633794971a0512 # initialize rs2
mul x27, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0xff5a7903132b3d34 # initialize rs1
li x28, 0xf0c24d94ee9cdb5a # initialize rs2
mul x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa26dee6995d3acf4 # initialize rs1
li x29, 0x518e16dd0b17b440 # initialize rs2
mul x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x9b66cab85b893847 # initialize rs1
li x30, 0xd1e9536cb52e39ba # initialize rs2
mul x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0xaf0719c1f8e19b66 # initialize rs1
li x31, 0xc838b736699e76ee # initialize rs2
mul x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x08b1eaf51da0b2b3 # initialize rs1
li x0, 0xd7eca822dfae6fdc # initialize rs2
mul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4cfa66f1f1696b7b # initialize rs1
li x1, 0xadaa7e7c5084f583 # initialize rs2
mul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x88e3aa086a582da8 # initialize rs1
li x2, 0x80445eef7eacd149 # initialize rs2
mul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1a1819d88bda0724 # initialize rs1
li x3, 0x697645dc565cb5dc # initialize rs2
mul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x394fcd70b6759ea6 # initialize rs1
li x4, 0x1e6a62305c8685b7 # initialize rs2
mul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xae383bc262b78838 # initialize rs1
li x5, 0xf46f1b454c2bcb47 # initialize rs2
mul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x137ee89bc6b042d2 # initialize rs1
li x6, 0xd02419044bb2fd95 # initialize rs2
mul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb37f742cfbe3c5fa # initialize rs1
li x7, 0x591d39bc853f8204 # initialize rs2
mul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x7c9022273634d611 # initialize rs1
li x8, 0x2cbf1728c3c9f74d # initialize rs2
mul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x127aea31ad4c2ee4 # initialize rs1
li x9, 0x6c0d1c89b6c3ce07 # initialize rs2
mul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xae1a30ac7d920185 # initialize rs1
li x10, 0x2223b212cd213b76 # initialize rs2
mul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc30fb8dfe9b5f573 # initialize rs1
li x11, 0xf0a1ecf1f517effd # initialize rs2
mul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7be19b6dfd16b80d # initialize rs1
li x12, 0x72216eb25b0eafb0 # initialize rs2
mul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9e00ac487c713942 # initialize rs1
li x13, 0x0280d86eb657e9e3 # initialize rs2
mul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd73fbb925bec829e # initialize rs1
li x14, 0x392b7c070871dcdb # initialize rs2
mul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc87e5393672e558e # initialize rs1
li x15, 0x4fe4f8159a766b43 # initialize rs2
mul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x936b95495989754e # initialize rs1
li x16, 0xbd170cafffc9281e # initialize rs2
mul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe764aeddb7e86dee # initialize rs1
li x17, 0x81a4c1f538677f68 # initialize rs2
mul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1304991ce640134a # initialize rs1
li x18, 0x65e1bab87175a1ab # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x766efa65c446bdd9 # initialize rs1
li x19, 0x71d958546288cfe5 # initialize rs2
mul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5817e01c49b44da3 # initialize rs1
li x20, 0xb8bb3be6a7d53ad6 # initialize rs2
mul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xbccb2c920ff2ed19 # initialize rs1
li x21, 0xfe4e094a007f8b98 # initialize rs2
mul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x96ee095ef0c0fb28 # initialize rs1
li x22, 0x8b677c5988914e30 # initialize rs2
mul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb5bef4ee31661aa6 # initialize rs1
li x23, 0x44add840d0451398 # initialize rs2
mul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbc3dc37f8514c008 # initialize rs1
li x24, 0x8646f8f4baa3d450 # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x4a7ae247289027ce # initialize rs1
li x25, 0x6ddb2c75f2feade2 # initialize rs2
mul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x19a5b2608a1cff40 # initialize rs1
li x26, 0x0195fc96cc96fe56 # initialize rs2
mul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca9b7cdc225999dd # initialize rs1
li x27, 0x776abede07205a29 # initialize rs2
mul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1203d2ea910cb368 # initialize rs1
li x28, 0xfdd6546e727b6105 # initialize rs2
mul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7d0e50df9c5c2373 # initialize rs1
li x29, 0x11dc86b56ad189b4 # initialize rs2
mul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x44d15660c1e10ccd # initialize rs1
li x30, 0x5fad2b23e28f3329 # initialize rs2
mul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x591fc01d59bd20f3 # initialize rs1
li x31, 0x006fca5e40960cbd # initialize rs2
mul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x10, x21 # perform first operation
mul x18, x22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x17 # perform first operation
mul x29, x18, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x15, x10 # perform first operation
mul x20, x12, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x12, x25 # perform first operation
mul x19, x8, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x22 # perform first operation
mul x1, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x22 # perform first operation
mul x28, x9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x30, x18 # perform first operation
mul x26, x7, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x29, x11 # perform first operation
mul x25, x10, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x12, x16 # perform first operation
mul x29, x22, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x10, x26 # perform first operation
mul x10, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x17, x19 # perform first operation
mul x19, x11, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x2, x16 # perform first operation
mul x18, x9, x8 # perform second (triggering) operation

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
