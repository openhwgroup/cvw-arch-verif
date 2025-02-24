///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fmul.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.679546
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


# Testcase cmp_gpr_hazard raw test
fmul.d f29, f31, f13 # perform first operation
fmul.d f20, f29, f2 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmul.d f6, f3, f15 # perform first operation
fmul.d f19, f27, f6 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.d f6, f1, f16 # perform first operation
fmul.d f6, f15, f2 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.d f9, f6, f13 # perform first operation
fmul.d f9, f28, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.d f1, f5, f9 # perform first operation
fmul.d f5, f25, f4 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.d f20, f6, f3 # perform first operation
fmul.d f3, f30, f15 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x00513ec0faf5e31b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96f6765281b2e59a # load x3 with value 0x96f6765281b2e59a
sd x3, 0(x2) # store 0x96f6765281b2e59a in memory
fld f0, 0(x2) # load 0x96f6765281b2e59a from memory into f0
li x3, 0x840e226ed884ce6b # load x3 with value 0x840e226ed884ce6b
sd x3, 0(x2) # store 0x840e226ed884ce6b in memory
fld f23, 0(x2) # load 0x840e226ed884ce6b from memory into f23
fmul.d f0, f0, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x87a0999837a9f387 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49410c3c3e4d790d # load x3 with value 0x49410c3c3e4d790d
sd x3, 0(x2) # store 0x49410c3c3e4d790d in memory
fld f1, 0(x2) # load 0x49410c3c3e4d790d from memory into f1
li x3, 0xcff9b1aa9d12533f # load x3 with value 0xcff9b1aa9d12533f
sd x3, 0(x2) # store 0xcff9b1aa9d12533f in memory
fld f19, 0(x2) # load 0xcff9b1aa9d12533f from memory into f19
fmul.d f1, f1, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x6e905302574866e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81c702987127f13f # load x3 with value 0x81c702987127f13f
sd x3, 0(x2) # store 0x81c702987127f13f in memory
fld f2, 0(x2) # load 0x81c702987127f13f from memory into f2
li x3, 0x70cf1e9432750d37 # load x3 with value 0x70cf1e9432750d37
sd x3, 0(x2) # store 0x70cf1e9432750d37 in memory
fld f23, 0(x2) # load 0x70cf1e9432750d37 from memory into f23
fmul.d f2, f2, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x13cfccd66e3666a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb26e67550834d74 # load x3 with value 0xdb26e67550834d74
sd x3, 0(x2) # store 0xdb26e67550834d74 in memory
fld f3, 0(x2) # load 0xdb26e67550834d74 from memory into f3
li x3, 0xc1c961cc93a5817a # load x3 with value 0xc1c961cc93a5817a
sd x3, 0(x2) # store 0xc1c961cc93a5817a in memory
fld f18, 0(x2) # load 0xc1c961cc93a5817a from memory into f18
fmul.d f3, f3, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xd5f78a674243e9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c4e12d5be5df458 # load x3 with value 0x4c4e12d5be5df458
sd x3, 0(x2) # store 0x4c4e12d5be5df458 in memory
fld f4, 0(x2) # load 0x4c4e12d5be5df458 from memory into f4
li x3, 0xdebaf6f3b40d3e38 # load x3 with value 0xdebaf6f3b40d3e38
sd x3, 0(x2) # store 0xdebaf6f3b40d3e38 in memory
fld f9, 0(x2) # load 0xdebaf6f3b40d3e38 from memory into f9
fmul.d f4, f4, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x7420ac2a5f69781e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc97e8b8d6341543c # load x3 with value 0xc97e8b8d6341543c
sd x3, 0(x2) # store 0xc97e8b8d6341543c in memory
fld f5, 0(x2) # load 0xc97e8b8d6341543c from memory into f5
li x3, 0x21bcdf46e3f84ca0 # load x3 with value 0x21bcdf46e3f84ca0
sd x3, 0(x2) # store 0x21bcdf46e3f84ca0 in memory
fld f6, 0(x2) # load 0x21bcdf46e3f84ca0 from memory into f6
fmul.d f5, f5, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x4181b9412c379933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x729fbd406825fc24 # load x3 with value 0x729fbd406825fc24
sd x3, 0(x2) # store 0x729fbd406825fc24 in memory
fld f6, 0(x2) # load 0x729fbd406825fc24 from memory into f6
li x3, 0xc28faafab253c8ec # load x3 with value 0xc28faafab253c8ec
sd x3, 0(x2) # store 0xc28faafab253c8ec in memory
fld f7, 0(x2) # load 0xc28faafab253c8ec from memory into f7
fmul.d f6, f6, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x47088a4d91b0f6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53bd40453621dd05 # load x3 with value 0x53bd40453621dd05
sd x3, 0(x2) # store 0x53bd40453621dd05 in memory
fld f7, 0(x2) # load 0x53bd40453621dd05 from memory into f7
li x3, 0x3c8d4770d907b698 # load x3 with value 0x3c8d4770d907b698
sd x3, 0(x2) # store 0x3c8d4770d907b698 in memory
fld f28, 0(x2) # load 0x3c8d4770d907b698 from memory into f28
fmul.d f7, f7, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x96ed634ed46020ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x329f84d583795096 # load x3 with value 0x329f84d583795096
sd x3, 0(x2) # store 0x329f84d583795096 in memory
fld f8, 0(x2) # load 0x329f84d583795096 from memory into f8
li x3, 0x77fc6bed14890b89 # load x3 with value 0x77fc6bed14890b89
sd x3, 0(x2) # store 0x77fc6bed14890b89 in memory
fld f26, 0(x2) # load 0x77fc6bed14890b89 from memory into f26
fmul.d f8, f8, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x5bc1dd0df7d5ae3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fe0f251ffe3eb7e # load x3 with value 0x4fe0f251ffe3eb7e
sd x3, 0(x2) # store 0x4fe0f251ffe3eb7e in memory
fld f9, 0(x2) # load 0x4fe0f251ffe3eb7e from memory into f9
li x3, 0x24a8b72089d8dc39 # load x3 with value 0x24a8b72089d8dc39
sd x3, 0(x2) # store 0x24a8b72089d8dc39 in memory
fld f20, 0(x2) # load 0x24a8b72089d8dc39 from memory into f20
fmul.d f9, f9, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x3e1ceb885de96692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa44213354a41a9e # load x3 with value 0xfa44213354a41a9e
sd x3, 0(x2) # store 0xfa44213354a41a9e in memory
fld f10, 0(x2) # load 0xfa44213354a41a9e from memory into f10
li x3, 0xef67c680082beaa0 # load x3 with value 0xef67c680082beaa0
sd x3, 0(x2) # store 0xef67c680082beaa0 in memory
fld f6, 0(x2) # load 0xef67c680082beaa0 from memory into f6
fmul.d f10, f10, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xe465ed0febb599c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83d31eb631e8d488 # load x3 with value 0x83d31eb631e8d488
sd x3, 0(x2) # store 0x83d31eb631e8d488 in memory
fld f11, 0(x2) # load 0x83d31eb631e8d488 from memory into f11
li x3, 0x3e7d69d9e0d6de7c # load x3 with value 0x3e7d69d9e0d6de7c
sd x3, 0(x2) # store 0x3e7d69d9e0d6de7c in memory
fld f1, 0(x2) # load 0x3e7d69d9e0d6de7c from memory into f1
fmul.d f11, f11, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x60eb9f571ad770e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a1d2d684e6e059a # load x3 with value 0x3a1d2d684e6e059a
sd x3, 0(x2) # store 0x3a1d2d684e6e059a in memory
fld f12, 0(x2) # load 0x3a1d2d684e6e059a from memory into f12
li x3, 0x2f42a21fb78ef98e # load x3 with value 0x2f42a21fb78ef98e
sd x3, 0(x2) # store 0x2f42a21fb78ef98e in memory
fld f21, 0(x2) # load 0x2f42a21fb78ef98e from memory into f21
fmul.d f12, f12, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xf5dc5f619a339652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17a9b5541e0e8894 # load x3 with value 0x17a9b5541e0e8894
sd x3, 0(x2) # store 0x17a9b5541e0e8894 in memory
fld f13, 0(x2) # load 0x17a9b5541e0e8894 from memory into f13
li x3, 0xa9d9d9cf1c884427 # load x3 with value 0xa9d9d9cf1c884427
sd x3, 0(x2) # store 0xa9d9d9cf1c884427 in memory
fld f2, 0(x2) # load 0xa9d9d9cf1c884427 from memory into f2
fmul.d f13, f13, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x8b22aa5c966cb547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00fd5c2f4833c10e # load x3 with value 0x00fd5c2f4833c10e
sd x3, 0(x2) # store 0x00fd5c2f4833c10e in memory
fld f14, 0(x2) # load 0x00fd5c2f4833c10e from memory into f14
li x3, 0xdbf71805d963fb7a # load x3 with value 0xdbf71805d963fb7a
sd x3, 0(x2) # store 0xdbf71805d963fb7a in memory
fld f10, 0(x2) # load 0xdbf71805d963fb7a from memory into f10
fmul.d f14, f14, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x1f0fa689797c13d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x955f94078386e353 # load x3 with value 0x955f94078386e353
sd x3, 0(x2) # store 0x955f94078386e353 in memory
fld f15, 0(x2) # load 0x955f94078386e353 from memory into f15
li x3, 0x8a05e1861dfbe57c # load x3 with value 0x8a05e1861dfbe57c
sd x3, 0(x2) # store 0x8a05e1861dfbe57c in memory
fld f2, 0(x2) # load 0x8a05e1861dfbe57c from memory into f2
fmul.d f15, f15, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x87616c64c7e19c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38f34441b53daa1a # load x3 with value 0x38f34441b53daa1a
sd x3, 0(x2) # store 0x38f34441b53daa1a in memory
fld f16, 0(x2) # load 0x38f34441b53daa1a from memory into f16
li x3, 0xfa733ed3028dae25 # load x3 with value 0xfa733ed3028dae25
sd x3, 0(x2) # store 0xfa733ed3028dae25 in memory
fld f27, 0(x2) # load 0xfa733ed3028dae25 from memory into f27
fmul.d f16, f16, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x6c4aa26ca8cb2056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2d6501f32fb79a9 # load x3 with value 0xc2d6501f32fb79a9
sd x3, 0(x2) # store 0xc2d6501f32fb79a9 in memory
fld f17, 0(x2) # load 0xc2d6501f32fb79a9 from memory into f17
li x3, 0x60292d61b19c0acc # load x3 with value 0x60292d61b19c0acc
sd x3, 0(x2) # store 0x60292d61b19c0acc in memory
fld f11, 0(x2) # load 0x60292d61b19c0acc from memory into f11
fmul.d f17, f17, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xba10b665082e3d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc29a2596bbb2b4ef # load x3 with value 0xc29a2596bbb2b4ef
sd x3, 0(x2) # store 0xc29a2596bbb2b4ef in memory
fld f18, 0(x2) # load 0xc29a2596bbb2b4ef from memory into f18
li x3, 0x84d40d97049799f7 # load x3 with value 0x84d40d97049799f7
sd x3, 0(x2) # store 0x84d40d97049799f7 in memory
fld f22, 0(x2) # load 0x84d40d97049799f7 from memory into f22
fmul.d f18, f18, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xac2955f075b05148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95215091616eee4c # load x3 with value 0x95215091616eee4c
sd x3, 0(x2) # store 0x95215091616eee4c in memory
fld f19, 0(x2) # load 0x95215091616eee4c from memory into f19
li x3, 0x7440a08693fe754c # load x3 with value 0x7440a08693fe754c
sd x3, 0(x2) # store 0x7440a08693fe754c in memory
fld f31, 0(x2) # load 0x7440a08693fe754c from memory into f31
fmul.d f19, f19, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xb62f68e0191f601a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0630d50480384e12 # load x3 with value 0x0630d50480384e12
sd x3, 0(x2) # store 0x0630d50480384e12 in memory
fld f20, 0(x2) # load 0x0630d50480384e12 from memory into f20
li x3, 0x0e66013be169a622 # load x3 with value 0x0e66013be169a622
sd x3, 0(x2) # store 0x0e66013be169a622 in memory
fld f20, 0(x2) # load 0x0e66013be169a622 from memory into f20
fmul.d f20, f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x073bbdebdb2e3a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b8254555f452e71 # load x3 with value 0x5b8254555f452e71
sd x3, 0(x2) # store 0x5b8254555f452e71 in memory
fld f21, 0(x2) # load 0x5b8254555f452e71 from memory into f21
li x3, 0x58d35298e6fde74d # load x3 with value 0x58d35298e6fde74d
sd x3, 0(x2) # store 0x58d35298e6fde74d in memory
fld f10, 0(x2) # load 0x58d35298e6fde74d from memory into f10
fmul.d f21, f21, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x6c6d08faaeebfc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac0777ef9e0677b2 # load x3 with value 0xac0777ef9e0677b2
sd x3, 0(x2) # store 0xac0777ef9e0677b2 in memory
fld f22, 0(x2) # load 0xac0777ef9e0677b2 from memory into f22
li x3, 0x356e0136b79c11f8 # load x3 with value 0x356e0136b79c11f8
sd x3, 0(x2) # store 0x356e0136b79c11f8 in memory
fld f29, 0(x2) # load 0x356e0136b79c11f8 from memory into f29
fmul.d f22, f22, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xcb54a57b33422257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37f088c3e4448026 # load x3 with value 0x37f088c3e4448026
sd x3, 0(x2) # store 0x37f088c3e4448026 in memory
fld f23, 0(x2) # load 0x37f088c3e4448026 from memory into f23
li x3, 0x2727a49e2f6981e3 # load x3 with value 0x2727a49e2f6981e3
sd x3, 0(x2) # store 0x2727a49e2f6981e3 in memory
fld f25, 0(x2) # load 0x2727a49e2f6981e3 from memory into f25
fmul.d f23, f23, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xf82fd01da9319cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x341faea3f323aa1d # load x3 with value 0x341faea3f323aa1d
sd x3, 0(x2) # store 0x341faea3f323aa1d in memory
fld f24, 0(x2) # load 0x341faea3f323aa1d from memory into f24
li x3, 0x38d67b3364a8906c # load x3 with value 0x38d67b3364a8906c
sd x3, 0(x2) # store 0x38d67b3364a8906c in memory
fld f9, 0(x2) # load 0x38d67b3364a8906c from memory into f9
fmul.d f24, f24, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x4bc4c5915a2f2a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e636308419287c9 # load x3 with value 0x3e636308419287c9
sd x3, 0(x2) # store 0x3e636308419287c9 in memory
fld f25, 0(x2) # load 0x3e636308419287c9 from memory into f25
li x3, 0x405cfa958632d284 # load x3 with value 0x405cfa958632d284
sd x3, 0(x2) # store 0x405cfa958632d284 in memory
fld f28, 0(x2) # load 0x405cfa958632d284 from memory into f28
fmul.d f25, f25, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x4235a555f7e403f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e30401d64e33dc0 # load x3 with value 0x8e30401d64e33dc0
sd x3, 0(x2) # store 0x8e30401d64e33dc0 in memory
fld f26, 0(x2) # load 0x8e30401d64e33dc0 from memory into f26
li x3, 0xdd226af798dde393 # load x3 with value 0xdd226af798dde393
sd x3, 0(x2) # store 0xdd226af798dde393 in memory
fld f12, 0(x2) # load 0xdd226af798dde393 from memory into f12
fmul.d f26, f26, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xf18a6765da6f28db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13e733a64a9774a1 # load x3 with value 0x13e733a64a9774a1
sd x3, 0(x2) # store 0x13e733a64a9774a1 in memory
fld f27, 0(x2) # load 0x13e733a64a9774a1 from memory into f27
li x3, 0x52a18643e62cd390 # load x3 with value 0x52a18643e62cd390
sd x3, 0(x2) # store 0x52a18643e62cd390 in memory
fld f14, 0(x2) # load 0x52a18643e62cd390 from memory into f14
fmul.d f27, f27, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x298adb8c7ecfcfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bec1d400c00544a # load x3 with value 0x5bec1d400c00544a
sd x3, 0(x2) # store 0x5bec1d400c00544a in memory
fld f28, 0(x2) # load 0x5bec1d400c00544a from memory into f28
li x3, 0x08bb730dd8d4bd5c # load x3 with value 0x08bb730dd8d4bd5c
sd x3, 0(x2) # store 0x08bb730dd8d4bd5c in memory
fld f19, 0(x2) # load 0x08bb730dd8d4bd5c from memory into f19
fmul.d f28, f28, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xa5437c48a46790a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae22d060bc02d141 # load x3 with value 0xae22d060bc02d141
sd x3, 0(x2) # store 0xae22d060bc02d141 in memory
fld f29, 0(x2) # load 0xae22d060bc02d141 from memory into f29
li x3, 0x9638a79b375a9187 # load x3 with value 0x9638a79b375a9187
sd x3, 0(x2) # store 0x9638a79b375a9187 in memory
fld f3, 0(x2) # load 0x9638a79b375a9187 from memory into f3
fmul.d f29, f29, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x5e1fe4f5981e8d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ae0b575c4da6c5b # load x3 with value 0x8ae0b575c4da6c5b
sd x3, 0(x2) # store 0x8ae0b575c4da6c5b in memory
fld f30, 0(x2) # load 0x8ae0b575c4da6c5b from memory into f30
li x3, 0xef09b80f09628ff1 # load x3 with value 0xef09b80f09628ff1
sd x3, 0(x2) # store 0xef09b80f09628ff1 in memory
fld f16, 0(x2) # load 0xef09b80f09628ff1 from memory into f16
fmul.d f30, f30, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xa562040fba02e840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6be0a143c7568bf # load x3 with value 0xa6be0a143c7568bf
sd x3, 0(x2) # store 0xa6be0a143c7568bf in memory
fld f31, 0(x2) # load 0xa6be0a143c7568bf from memory into f31
li x3, 0xc49f5f3153093fc4 # load x3 with value 0xc49f5f3153093fc4
sd x3, 0(x2) # store 0xc49f5f3153093fc4 in memory
fld f2, 0(x2) # load 0xc49f5f3153093fc4 from memory into f2
fmul.d f31, f31, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xa56a691eb8fe58f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b5c2e0acad4af90 # load x3 with value 0x5b5c2e0acad4af90
sd x3, 0(x2) # store 0x5b5c2e0acad4af90 in memory
fld f29, 0(x2) # load 0x5b5c2e0acad4af90 from memory into f29
li x3, 0x86f04a9ac716efaf # load x3 with value 0x86f04a9ac716efaf
sd x3, 0(x2) # store 0x86f04a9ac716efaf in memory
fld f0, 0(x2) # load 0x86f04a9ac716efaf from memory into f0
fmul.d f0, f29, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xc6de9fca68a0ee23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3530396bd04c4ca3 # load x3 with value 0x3530396bd04c4ca3
sd x3, 0(x2) # store 0x3530396bd04c4ca3 in memory
fld f18, 0(x2) # load 0x3530396bd04c4ca3 from memory into f18
li x3, 0x415913261149d40e # load x3 with value 0x415913261149d40e
sd x3, 0(x2) # store 0x415913261149d40e in memory
fld f1, 0(x2) # load 0x415913261149d40e from memory into f1
fmul.d f1, f18, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x96b3ea06af26bc02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bff56f63acd1113 # load x3 with value 0x1bff56f63acd1113
sd x3, 0(x2) # store 0x1bff56f63acd1113 in memory
fld f31, 0(x2) # load 0x1bff56f63acd1113 from memory into f31
li x3, 0x8a99dd009b672290 # load x3 with value 0x8a99dd009b672290
sd x3, 0(x2) # store 0x8a99dd009b672290 in memory
fld f2, 0(x2) # load 0x8a99dd009b672290 from memory into f2
fmul.d f2, f31, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x764edebec0414023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd35289d6cb85dd50 # load x3 with value 0xd35289d6cb85dd50
sd x3, 0(x2) # store 0xd35289d6cb85dd50 in memory
fld f5, 0(x2) # load 0xd35289d6cb85dd50 from memory into f5
li x3, 0x61a57d26c1759432 # load x3 with value 0x61a57d26c1759432
sd x3, 0(x2) # store 0x61a57d26c1759432 in memory
fld f3, 0(x2) # load 0x61a57d26c1759432 from memory into f3
fmul.d f3, f5, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xac7a827140ff0791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b6f5eb74425282c # load x3 with value 0x6b6f5eb74425282c
sd x3, 0(x2) # store 0x6b6f5eb74425282c in memory
fld f17, 0(x2) # load 0x6b6f5eb74425282c from memory into f17
li x3, 0x235be4b5b0385d8f # load x3 with value 0x235be4b5b0385d8f
sd x3, 0(x2) # store 0x235be4b5b0385d8f in memory
fld f4, 0(x2) # load 0x235be4b5b0385d8f from memory into f4
fmul.d f4, f17, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x6b127064a26ab0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96ffd68d157fdc01 # load x3 with value 0x96ffd68d157fdc01
sd x3, 0(x2) # store 0x96ffd68d157fdc01 in memory
fld f22, 0(x2) # load 0x96ffd68d157fdc01 from memory into f22
li x3, 0x0074de0765e66ef9 # load x3 with value 0x0074de0765e66ef9
sd x3, 0(x2) # store 0x0074de0765e66ef9 in memory
fld f5, 0(x2) # load 0x0074de0765e66ef9 from memory into f5
fmul.d f5, f22, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x718b77bbc25f9f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5de0491215dec0c0 # load x3 with value 0x5de0491215dec0c0
sd x3, 0(x2) # store 0x5de0491215dec0c0 in memory
fld f5, 0(x2) # load 0x5de0491215dec0c0 from memory into f5
li x3, 0x35d955fd317f8074 # load x3 with value 0x35d955fd317f8074
sd x3, 0(x2) # store 0x35d955fd317f8074 in memory
fld f6, 0(x2) # load 0x35d955fd317f8074 from memory into f6
fmul.d f6, f5, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xbc0bdff351996599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fbf526a58ffcedf # load x3 with value 0x6fbf526a58ffcedf
sd x3, 0(x2) # store 0x6fbf526a58ffcedf in memory
fld f25, 0(x2) # load 0x6fbf526a58ffcedf from memory into f25
li x3, 0x68d6458ea9c31f57 # load x3 with value 0x68d6458ea9c31f57
sd x3, 0(x2) # store 0x68d6458ea9c31f57 in memory
fld f7, 0(x2) # load 0x68d6458ea9c31f57 from memory into f7
fmul.d f7, f25, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xc52ac8b61660352a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d65f15a3f257b0c # load x3 with value 0x6d65f15a3f257b0c
sd x3, 0(x2) # store 0x6d65f15a3f257b0c in memory
fld f23, 0(x2) # load 0x6d65f15a3f257b0c from memory into f23
li x3, 0x4ba09b1028413110 # load x3 with value 0x4ba09b1028413110
sd x3, 0(x2) # store 0x4ba09b1028413110 in memory
fld f8, 0(x2) # load 0x4ba09b1028413110 from memory into f8
fmul.d f8, f23, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x25c5a1c66f1e2af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9916253771d1865 # load x3 with value 0xf9916253771d1865
sd x3, 0(x2) # store 0xf9916253771d1865 in memory
fld f17, 0(x2) # load 0xf9916253771d1865 from memory into f17
li x3, 0x5234255d9f052fe7 # load x3 with value 0x5234255d9f052fe7
sd x3, 0(x2) # store 0x5234255d9f052fe7 in memory
fld f9, 0(x2) # load 0x5234255d9f052fe7 from memory into f9
fmul.d f9, f17, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x4863c5e301f80354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81dac0b2dd673081 # load x3 with value 0x81dac0b2dd673081
sd x3, 0(x2) # store 0x81dac0b2dd673081 in memory
fld f21, 0(x2) # load 0x81dac0b2dd673081 from memory into f21
li x3, 0xff10600ee168ac29 # load x3 with value 0xff10600ee168ac29
sd x3, 0(x2) # store 0xff10600ee168ac29 in memory
fld f10, 0(x2) # load 0xff10600ee168ac29 from memory into f10
fmul.d f10, f21, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x62a04f9bd4a3c606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x969c7949786cca5e # load x3 with value 0x969c7949786cca5e
sd x3, 0(x2) # store 0x969c7949786cca5e in memory
fld f4, 0(x2) # load 0x969c7949786cca5e from memory into f4
li x3, 0x4678d86d0f0cbcef # load x3 with value 0x4678d86d0f0cbcef
sd x3, 0(x2) # store 0x4678d86d0f0cbcef in memory
fld f11, 0(x2) # load 0x4678d86d0f0cbcef from memory into f11
fmul.d f11, f4, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xb8fa9e016f4de4fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c505bb1681eb791 # load x3 with value 0x7c505bb1681eb791
sd x3, 0(x2) # store 0x7c505bb1681eb791 in memory
fld f8, 0(x2) # load 0x7c505bb1681eb791 from memory into f8
li x3, 0x5d3a89db4bb76d8b # load x3 with value 0x5d3a89db4bb76d8b
sd x3, 0(x2) # store 0x5d3a89db4bb76d8b in memory
fld f12, 0(x2) # load 0x5d3a89db4bb76d8b from memory into f12
fmul.d f12, f8, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xa65ab1bfd9fec591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc4e0abf4c52b926 # load x3 with value 0xbc4e0abf4c52b926
sd x3, 0(x2) # store 0xbc4e0abf4c52b926 in memory
fld f14, 0(x2) # load 0xbc4e0abf4c52b926 from memory into f14
li x3, 0xfe81c71c7ec3c1b0 # load x3 with value 0xfe81c71c7ec3c1b0
sd x3, 0(x2) # store 0xfe81c71c7ec3c1b0 in memory
fld f13, 0(x2) # load 0xfe81c71c7ec3c1b0 from memory into f13
fmul.d f13, f14, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xa8748c529136780b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x248159bbf5e6ef0c # load x3 with value 0x248159bbf5e6ef0c
sd x3, 0(x2) # store 0x248159bbf5e6ef0c in memory
fld f24, 0(x2) # load 0x248159bbf5e6ef0c from memory into f24
li x3, 0x86425bd0ac6fef6a # load x3 with value 0x86425bd0ac6fef6a
sd x3, 0(x2) # store 0x86425bd0ac6fef6a in memory
fld f14, 0(x2) # load 0x86425bd0ac6fef6a from memory into f14
fmul.d f14, f24, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x01b6caffd849fd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd5c9c70f596c0b7 # load x3 with value 0xdd5c9c70f596c0b7
sd x3, 0(x2) # store 0xdd5c9c70f596c0b7 in memory
fld f31, 0(x2) # load 0xdd5c9c70f596c0b7 from memory into f31
li x3, 0xc26b094ca0997114 # load x3 with value 0xc26b094ca0997114
sd x3, 0(x2) # store 0xc26b094ca0997114 in memory
fld f15, 0(x2) # load 0xc26b094ca0997114 from memory into f15
fmul.d f15, f31, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xe673a766be117069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69bc851c4dfbe5f0 # load x3 with value 0x69bc851c4dfbe5f0
sd x3, 0(x2) # store 0x69bc851c4dfbe5f0 in memory
fld f29, 0(x2) # load 0x69bc851c4dfbe5f0 from memory into f29
li x3, 0x1a888792be8bbc6c # load x3 with value 0x1a888792be8bbc6c
sd x3, 0(x2) # store 0x1a888792be8bbc6c in memory
fld f16, 0(x2) # load 0x1a888792be8bbc6c from memory into f16
fmul.d f16, f29, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x556808fa44aff9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724d4a3360da0231 # load x3 with value 0x724d4a3360da0231
sd x3, 0(x2) # store 0x724d4a3360da0231 in memory
fld f14, 0(x2) # load 0x724d4a3360da0231 from memory into f14
li x3, 0xac6897ba329d3c31 # load x3 with value 0xac6897ba329d3c31
sd x3, 0(x2) # store 0xac6897ba329d3c31 in memory
fld f17, 0(x2) # load 0xac6897ba329d3c31 from memory into f17
fmul.d f17, f14, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x8832b53ce143415a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd23a0a026735fda6 # load x3 with value 0xd23a0a026735fda6
sd x3, 0(x2) # store 0xd23a0a026735fda6 in memory
fld f8, 0(x2) # load 0xd23a0a026735fda6 from memory into f8
li x3, 0x58b483b95a8728d3 # load x3 with value 0x58b483b95a8728d3
sd x3, 0(x2) # store 0x58b483b95a8728d3 in memory
fld f18, 0(x2) # load 0x58b483b95a8728d3 from memory into f18
fmul.d f18, f8, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xb1b93f1d01de2892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a63a40b1938f292 # load x3 with value 0x1a63a40b1938f292
sd x3, 0(x2) # store 0x1a63a40b1938f292 in memory
fld f5, 0(x2) # load 0x1a63a40b1938f292 from memory into f5
li x3, 0x0079b137b604020a # load x3 with value 0x0079b137b604020a
sd x3, 0(x2) # store 0x0079b137b604020a in memory
fld f19, 0(x2) # load 0x0079b137b604020a from memory into f19
fmul.d f19, f5, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x681c732b96198158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8db4ca9e15fd3f9 # load x3 with value 0xc8db4ca9e15fd3f9
sd x3, 0(x2) # store 0xc8db4ca9e15fd3f9 in memory
fld f15, 0(x2) # load 0xc8db4ca9e15fd3f9 from memory into f15
li x3, 0xd64d66b6233ce213 # load x3 with value 0xd64d66b6233ce213
sd x3, 0(x2) # store 0xd64d66b6233ce213 in memory
fld f20, 0(x2) # load 0xd64d66b6233ce213 from memory into f20
fmul.d f20, f15, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x7a58d8fd8033af7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe17e44450e3125ce # load x3 with value 0xe17e44450e3125ce
sd x3, 0(x2) # store 0xe17e44450e3125ce in memory
fld f10, 0(x2) # load 0xe17e44450e3125ce from memory into f10
li x3, 0x32bfed5e0faf9603 # load x3 with value 0x32bfed5e0faf9603
sd x3, 0(x2) # store 0x32bfed5e0faf9603 in memory
fld f21, 0(x2) # load 0x32bfed5e0faf9603 from memory into f21
fmul.d f21, f10, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x02bb096adfd1fe97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2b6b5983396fc60 # load x3 with value 0xc2b6b5983396fc60
sd x3, 0(x2) # store 0xc2b6b5983396fc60 in memory
fld f2, 0(x2) # load 0xc2b6b5983396fc60 from memory into f2
li x3, 0xb4ae75c71bf32d27 # load x3 with value 0xb4ae75c71bf32d27
sd x3, 0(x2) # store 0xb4ae75c71bf32d27 in memory
fld f22, 0(x2) # load 0xb4ae75c71bf32d27 from memory into f22
fmul.d f22, f2, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x98d8aa53452b3776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47fbaab9938d6fb3 # load x3 with value 0x47fbaab9938d6fb3
sd x3, 0(x2) # store 0x47fbaab9938d6fb3 in memory
fld f26, 0(x2) # load 0x47fbaab9938d6fb3 from memory into f26
li x3, 0xe5df163d036c8410 # load x3 with value 0xe5df163d036c8410
sd x3, 0(x2) # store 0xe5df163d036c8410 in memory
fld f23, 0(x2) # load 0xe5df163d036c8410 from memory into f23
fmul.d f23, f26, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xd3ce59639bc51ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x973e271ff64906ec # load x3 with value 0x973e271ff64906ec
sd x3, 0(x2) # store 0x973e271ff64906ec in memory
fld f15, 0(x2) # load 0x973e271ff64906ec from memory into f15
li x3, 0xe61fd301b64e3e35 # load x3 with value 0xe61fd301b64e3e35
sd x3, 0(x2) # store 0xe61fd301b64e3e35 in memory
fld f24, 0(x2) # load 0xe61fd301b64e3e35 from memory into f24
fmul.d f24, f15, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x35a4c277fb7ae8ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9760d0a437755b82 # load x3 with value 0x9760d0a437755b82
sd x3, 0(x2) # store 0x9760d0a437755b82 in memory
fld f22, 0(x2) # load 0x9760d0a437755b82 from memory into f22
li x3, 0x38aa87fbcab7646b # load x3 with value 0x38aa87fbcab7646b
sd x3, 0(x2) # store 0x38aa87fbcab7646b in memory
fld f25, 0(x2) # load 0x38aa87fbcab7646b from memory into f25
fmul.d f25, f22, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x917c0eb97c417918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd348cffbae8eeb87 # load x3 with value 0xd348cffbae8eeb87
sd x3, 0(x2) # store 0xd348cffbae8eeb87 in memory
fld f30, 0(x2) # load 0xd348cffbae8eeb87 from memory into f30
li x3, 0x0cdc591b8fbf7d35 # load x3 with value 0x0cdc591b8fbf7d35
sd x3, 0(x2) # store 0x0cdc591b8fbf7d35 in memory
fld f26, 0(x2) # load 0x0cdc591b8fbf7d35 from memory into f26
fmul.d f26, f30, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xfd6d857b387e60db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe97a67de7c83889f # load x3 with value 0xe97a67de7c83889f
sd x3, 0(x2) # store 0xe97a67de7c83889f in memory
fld f27, 0(x2) # load 0xe97a67de7c83889f from memory into f27
li x3, 0xe1cac5e6748113cf # load x3 with value 0xe1cac5e6748113cf
sd x3, 0(x2) # store 0xe1cac5e6748113cf in memory
fld f27, 0(x2) # load 0xe1cac5e6748113cf from memory into f27
fmul.d f27, f27, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x2f50a1530893c50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5890ce465ac18486 # load x3 with value 0x5890ce465ac18486
sd x3, 0(x2) # store 0x5890ce465ac18486 in memory
fld f8, 0(x2) # load 0x5890ce465ac18486 from memory into f8
li x3, 0xf96a23d13f26babf # load x3 with value 0xf96a23d13f26babf
sd x3, 0(x2) # store 0xf96a23d13f26babf in memory
fld f28, 0(x2) # load 0xf96a23d13f26babf from memory into f28
fmul.d f28, f8, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x91974c59329abf20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ecbbeeadbbd48d9 # load x3 with value 0x8ecbbeeadbbd48d9
sd x3, 0(x2) # store 0x8ecbbeeadbbd48d9 in memory
fld f23, 0(x2) # load 0x8ecbbeeadbbd48d9 from memory into f23
li x3, 0x0d9e25e6558825db # load x3 with value 0x0d9e25e6558825db
sd x3, 0(x2) # store 0x0d9e25e6558825db in memory
fld f29, 0(x2) # load 0x0d9e25e6558825db from memory into f29
fmul.d f29, f23, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xa03e9c6ba4c0faa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48614aa8cb1bab14 # load x3 with value 0x48614aa8cb1bab14
sd x3, 0(x2) # store 0x48614aa8cb1bab14 in memory
fld f5, 0(x2) # load 0x48614aa8cb1bab14 from memory into f5
li x3, 0x199b0b9cac15588e # load x3 with value 0x199b0b9cac15588e
sd x3, 0(x2) # store 0x199b0b9cac15588e in memory
fld f30, 0(x2) # load 0x199b0b9cac15588e from memory into f30
fmul.d f30, f5, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xf7392c5c8f9c632e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf41684ce7326177 # load x3 with value 0xaf41684ce7326177
sd x3, 0(x2) # store 0xaf41684ce7326177 in memory
fld f11, 0(x2) # load 0xaf41684ce7326177 from memory into f11
li x3, 0x4ed8a7bc10d27b30 # load x3 with value 0x4ed8a7bc10d27b30
sd x3, 0(x2) # store 0x4ed8a7bc10d27b30 in memory
fld f31, 0(x2) # load 0x4ed8a7bc10d27b30 from memory into f31
fmul.d f31, f11, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0x87df4acfc5efd01a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0xfd2ac8e209b9e152 # load x3 with value 0xfd2ac8e209b9e152
sd x3, 0(x2) # store 0xfd2ac8e209b9e152 in memory
fld f4, 0(x2) # load 0xfd2ac8e209b9e152 from memory into f4
fmul.d f16, f14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xf34da1e1aed780e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
li x3, 0x23763a20a223bb85 # load x3 with value 0x23763a20a223bb85
sd x3, 0(x2) # store 0x23763a20a223bb85 in memory
fld f2, 0(x2) # load 0x23763a20a223bb85 from memory into f2
fmul.d f8, f4, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x27, 0xbadf707f083e6fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0xec37e8a211a601d6 # load x3 with value 0xec37e8a211a601d6
sd x3, 0(x2) # store 0xec37e8a211a601d6 in memory
fld f4, 0(x2) # load 0xec37e8a211a601d6 from memory into f4
fmul.d f27, f7, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x4, 0x992c15210256c7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x321f4d379e7506cd # load x3 with value 0x321f4d379e7506cd
sd x3, 0(x2) # store 0x321f4d379e7506cd in memory
fld f20, 0(x2) # load 0x321f4d379e7506cd from memory into f20
fmul.d f4, f31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x12, 0x45c2e09dc4d48ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0x5d1f8c92b2559648 # load x3 with value 0x5d1f8c92b2559648
sd x3, 0(x2) # store 0x5d1f8c92b2559648 in memory
fld f22, 0(x2) # load 0x5d1f8c92b2559648 from memory into f22
fmul.d f12, f5, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x14, 0xecfe00ddcbd5c1e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f7, 0(x2) # load 0xbff8000000000000 from memory into f7
li x3, 0x798127f963e17ab3 # load x3 with value 0x798127f963e17ab3
sd x3, 0(x2) # store 0x798127f963e17ab3 in memory
fld f3, 0(x2) # load 0x798127f963e17ab3 from memory into f3
fmul.d f14, f7, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x19, 0x69ec8863fef46c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0xe1725640ff7501d2 # load x3 with value 0xe1725640ff7501d2
sd x3, 0(x2) # store 0xe1725640ff7501d2 in memory
fld f16, 0(x2) # load 0xe1725640ff7501d2 from memory into f16
fmul.d f19, f30, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x19, 0x7a4b9598269e88ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0xb7cbd4f1b643b015 # load x3 with value 0xb7cbd4f1b643b015
sd x3, 0(x2) # store 0xb7cbd4f1b643b015 in memory
fld f4, 0(x2) # load 0xb7cbd4f1b643b015 from memory into f4
fmul.d f19, f30, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x21, 0xd87740bbf6a231f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x873666f8879fe198 # load x3 with value 0x873666f8879fe198
sd x3, 0(x2) # store 0x873666f8879fe198 in memory
fld f5, 0(x2) # load 0x873666f8879fe198 from memory into f5
fmul.d f21, f13, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x1, 0xf1789d1d832d011a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x22cf687282161ec9 # load x3 with value 0x22cf687282161ec9
sd x3, 0(x2) # store 0x22cf687282161ec9 in memory
fld f16, 0(x2) # load 0x22cf687282161ec9 from memory into f16
fmul.d f1, f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x21, 0xef100d58d885b5d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0xfc5ff903b58df1f1 # load x3 with value 0xfc5ff903b58df1f1
sd x3, 0(x2) # store 0xfc5ff903b58df1f1 in memory
fld f26, 0(x2) # load 0xfc5ff903b58df1f1 from memory into f26
fmul.d f21, f16, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x24, 0x462b12215b1d5ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0xeab5899e8a50b395 # load x3 with value 0xeab5899e8a50b395
sd x3, 0(x2) # store 0xeab5899e8a50b395 in memory
fld f8, 0(x2) # load 0xeab5899e8a50b395 from memory into f8
fmul.d f24, f7, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x9, 0x200927caa0173a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x0e341162b5e45b3e # load x3 with value 0x0e341162b5e45b3e
sd x3, 0(x2) # store 0x0e341162b5e45b3e in memory
fld f22, 0(x2) # load 0x0e341162b5e45b3e from memory into f22
fmul.d f9, f29, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x9, 0x8878c40c6532938c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x58732288f804f900 # load x3 with value 0x58732288f804f900
sd x3, 0(x2) # store 0x58732288f804f900 in memory
fld f10, 0(x2) # load 0x58732288f804f900 from memory into f10
fmul.d f9, f12, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x2, 0x0e770f5cbf3e80d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0xbc27aae8a549c6dc # load x3 with value 0xbc27aae8a549c6dc
sd x3, 0(x2) # store 0xbc27aae8a549c6dc in memory
fld f10, 0(x2) # load 0xbc27aae8a549c6dc from memory into f10
fmul.d f2, f7, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x10, 0x861e6efb3caf6083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
li x3, 0x6d2f3e3028d4e8bb # load x3 with value 0x6d2f3e3028d4e8bb
sd x3, 0(x2) # store 0x6d2f3e3028d4e8bb in memory
fld f27, 0(x2) # load 0x6d2f3e3028d4e8bb from memory into f27
fmul.d f10, f23, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x24, 0xb7cd62d21772a9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x971a8321e548e520 # load x3 with value 0x971a8321e548e520
sd x3, 0(x2) # store 0x971a8321e548e520 in memory
fld f6, 0(x2) # load 0x971a8321e548e520 from memory into f6
fmul.d f24, f27, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x28, 0xe37ce3f70e637d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0xe0b50045490ac7ec # load x3 with value 0xe0b50045490ac7ec
sd x3, 0(x2) # store 0xe0b50045490ac7ec in memory
fld f17, 0(x2) # load 0xe0b50045490ac7ec from memory into f17
fmul.d f28, f2, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x4, 0xf87a9845ddc4589c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0xb57db6cb0d0a98ee # load x3 with value 0xb57db6cb0d0a98ee
sd x3, 0(x2) # store 0xb57db6cb0d0a98ee in memory
fld f31, 0(x2) # load 0xb57db6cb0d0a98ee from memory into f31
fmul.d f4, f3, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x28, 0xbf36df033caa30a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0x29d558955eb3a3d8 # load x3 with value 0x29d558955eb3a3d8
sd x3, 0(x2) # store 0x29d558955eb3a3d8 in memory
fld f6, 0(x2) # load 0x29d558955eb3a3d8 from memory into f6
fmul.d f28, f7, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x30, 0x6769105a480a6f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x5e12d12d92a81228 # load x3 with value 0x5e12d12d92a81228
sd x3, 0(x2) # store 0x5e12d12d92a81228 in memory
fld f16, 0(x2) # load 0x5e12d12d92a81228 from memory into f16
fmul.d f30, f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x12, 0x19b71e7bd36024af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x702ec46cedefdcd8 # load x3 with value 0x702ec46cedefdcd8
sd x3, 0(x2) # store 0x702ec46cedefdcd8 in memory
fld f15, 0(x2) # load 0x702ec46cedefdcd8 from memory into f15
fmul.d f12, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x14, 0xc0844b49145f7e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0x06c8b81915901c72 # load x3 with value 0x06c8b81915901c72
sd x3, 0(x2) # store 0x06c8b81915901c72 in memory
fld f5, 0(x2) # load 0x06c8b81915901c72 from memory into f5
fmul.d f14, f31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x5, 0x42fc6e960e674595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x505a88a58f1274e1 # load x3 with value 0x505a88a58f1274e1
sd x3, 0(x2) # store 0x505a88a58f1274e1 in memory
fld f18, 0(x2) # load 0x505a88a58f1274e1 from memory into f18
fmul.d f5, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x28, 0x0970dfdb50ceb1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x24c1f13ba22877fc # load x3 with value 0x24c1f13ba22877fc
sd x3, 0(x2) # store 0x24c1f13ba22877fc in memory
fld f26, 0(x2) # load 0x24c1f13ba22877fc from memory into f26
fmul.d f28, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x5, 0x1b1f31f880fc973d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x68956af61cf00214 # load x3 with value 0x68956af61cf00214
sd x3, 0(x2) # store 0x68956af61cf00214 in memory
fld f14, 0(x2) # load 0x68956af61cf00214 from memory into f14
fmul.d f5, f10, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x20, 0x29a52388f8b087ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6021ff85d65ab59f # load x3 with value 0x6021ff85d65ab59f
sd x3, 0(x2) # store 0x6021ff85d65ab59f in memory
fld f18, 0(x2) # load 0x6021ff85d65ab59f from memory into f18
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fmul.d f20, f18, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x3, 0x696156d6186cb074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92b108fe94640417 # load x3 with value 0x92b108fe94640417
sd x3, 0(x2) # store 0x92b108fe94640417 in memory
fld f24, 0(x2) # load 0x92b108fe94640417 from memory into f24
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
fmul.d f3, f24, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x23, 0x7e00c00aaa339487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaec9b765ab317ded # load x3 with value 0xaec9b765ab317ded
sd x3, 0(x2) # store 0xaec9b765ab317ded in memory
fld f9, 0(x2) # load 0xaec9b765ab317ded from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fmul.d f23, f9, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x5, 0x8caca6136a0061df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56b8cbe0218a1fa4 # load x3 with value 0x56b8cbe0218a1fa4
sd x3, 0(x2) # store 0x56b8cbe0218a1fa4 in memory
fld f21, 0(x2) # load 0x56b8cbe0218a1fa4 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmul.d f5, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x18, 0x7046606b8c627265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d750392a5dfd88c # load x3 with value 0x6d750392a5dfd88c
sd x3, 0(x2) # store 0x6d750392a5dfd88c in memory
fld f12, 0(x2) # load 0x6d750392a5dfd88c from memory into f12
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fmul.d f18, f12, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x28, 0xec04fab34bf6daf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x592112f031183d15 # load x3 with value 0x592112f031183d15
sd x3, 0(x2) # store 0x592112f031183d15 in memory
fld f18, 0(x2) # load 0x592112f031183d15 from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fmul.d f28, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x28, 0x8da0df274b313c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cb1e6e4d2b1a17c # load x3 with value 0x1cb1e6e4d2b1a17c
sd x3, 0(x2) # store 0x1cb1e6e4d2b1a17c in memory
fld f31, 0(x2) # load 0x1cb1e6e4d2b1a17c from memory into f31
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fmul.d f28, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x19, 0x24fe2dcc9e5a8a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf34fd810ba4ae7dc # load x3 with value 0xf34fd810ba4ae7dc
sd x3, 0(x2) # store 0xf34fd810ba4ae7dc in memory
fld f20, 0(x2) # load 0xf34fd810ba4ae7dc from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fmul.d f19, f20, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x10, 0xb6ddf0cd381cb2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86bdbd1d945d3b4c # load x3 with value 0x86bdbd1d945d3b4c
sd x3, 0(x2) # store 0x86bdbd1d945d3b4c in memory
fld f6, 0(x2) # load 0x86bdbd1d945d3b4c from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmul.d f10, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x3, 0x478332378fa176e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f2853c24972e0e # load x3 with value 0x47f2853c24972e0e
sd x3, 0(x2) # store 0x47f2853c24972e0e in memory
fld f22, 0(x2) # load 0x47f2853c24972e0e from memory into f22
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fmul.d f3, f22, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x2, 0x49c4f3b7344f315a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82c3d76d4d845e3f # load x3 with value 0x82c3d76d4d845e3f
sd x3, 0(x2) # store 0x82c3d76d4d845e3f in memory
fld f15, 0(x2) # load 0x82c3d76d4d845e3f from memory into f15
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
fmul.d f2, f15, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x12, 0xd7b6eda2227a267e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf73c9dcb5deec995 # load x3 with value 0xf73c9dcb5deec995
sd x3, 0(x2) # store 0xf73c9dcb5deec995 in memory
fld f18, 0(x2) # load 0xf73c9dcb5deec995 from memory into f18
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fmul.d f12, f18, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x18, 0xc557a25a37ea7f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c77b585c140d54e # load x3 with value 0x3c77b585c140d54e
sd x3, 0(x2) # store 0x3c77b585c140d54e in memory
fld f14, 0(x2) # load 0x3c77b585c140d54e from memory into f14
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
fmul.d f18, f14, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x11, 0x9e1305087904a550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeacaea6ab8019150 # load x3 with value 0xeacaea6ab8019150
sd x3, 0(x2) # store 0xeacaea6ab8019150 in memory
fld f10, 0(x2) # load 0xeacaea6ab8019150 from memory into f10
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fmul.d f11, f10, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x28, 0xb8d62b31e4067dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937ae04d50f835bb # load x3 with value 0x937ae04d50f835bb
sd x3, 0(x2) # store 0x937ae04d50f835bb in memory
fld f29, 0(x2) # load 0x937ae04d50f835bb from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fmul.d f28, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x29, 0x7511188bd77b94ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b93f269e0b3d072 # load x3 with value 0x7b93f269e0b3d072
sd x3, 0(x2) # store 0x7b93f269e0b3d072 in memory
fld f17, 0(x2) # load 0x7b93f269e0b3d072 from memory into f17
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f20, 0(x2) # load 0x8008000000000000 from memory into f20
fmul.d f29, f17, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x21, 0x5283fb19b5dd0421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69e6a41820e776c4 # load x3 with value 0x69e6a41820e776c4
sd x3, 0(x2) # store 0x69e6a41820e776c4 in memory
fld f9, 0(x2) # load 0x69e6a41820e776c4 from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmul.d f21, f9, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x3, 0x80de0ed466847dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67dc491b7aea6f5f # load x3 with value 0x67dc491b7aea6f5f
sd x3, 0(x2) # store 0x67dc491b7aea6f5f in memory
fld f19, 0(x2) # load 0x67dc491b7aea6f5f from memory into f19
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fmul.d f3, f19, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x15, 0xb4323bbbaca8298f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe87cd507fcc1586 # load x3 with value 0xbe87cd507fcc1586
sd x3, 0(x2) # store 0xbe87cd507fcc1586 in memory
fld f26, 0(x2) # load 0xbe87cd507fcc1586 from memory into f26
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fmul.d f15, f26, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x29, 0x289bcfeb1c6b825a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45227004ad846c07 # load x3 with value 0x45227004ad846c07
sd x3, 0(x2) # store 0x45227004ad846c07 in memory
fld f18, 0(x2) # load 0x45227004ad846c07 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmul.d f29, f18, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x31, 0x04dfd2516ede59a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x201d8e45e8917147 # load x3 with value 0x201d8e45e8917147
sd x3, 0(x2) # store 0x201d8e45e8917147 in memory
fld f5, 0(x2) # load 0x201d8e45e8917147 from memory into f5
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fmul.d f31, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x25, 0xd3403109fb5e6d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96f42cd2b08b9406 # load x3 with value 0x96f42cd2b08b9406
sd x3, 0(x2) # store 0x96f42cd2b08b9406 in memory
fld f22, 0(x2) # load 0x96f42cd2b08b9406 from memory into f22
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fmul.d f25, f22, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x15, 0xb700cc3101085ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d49fd15bdba9d0b # load x3 with value 0x5d49fd15bdba9d0b
sd x3, 0(x2) # store 0x5d49fd15bdba9d0b in memory
fld f13, 0(x2) # load 0x5d49fd15bdba9d0b from memory into f13
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fmul.d f15, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x24, 0xe6ffac01e4c38e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65abbc68d6001533 # load x3 with value 0x65abbc68d6001533
sd x3, 0(x2) # store 0x65abbc68d6001533 in memory
fld f20, 0(x2) # load 0x65abbc68d6001533 from memory into f20
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmul.d f24, f20, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x25, 0xf8a083d918ce9262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x008a1cb590343fd7 # load x3 with value 0x008a1cb590343fd7
sd x3, 0(x2) # store 0x008a1cb590343fd7 in memory
fld f12, 0(x2) # load 0x008a1cb590343fd7 from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fmul.d f25, f12, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x24, 0xfe0bcd227ad5db81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e0752b17fb29f72 # load x3 with value 0x1e0752b17fb29f72
sd x3, 0(x2) # store 0x1e0752b17fb29f72 in memory
fld f6, 0(x2) # load 0x1e0752b17fb29f72 from memory into f6
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fmul.d f24, f6, f26 # perform operation

# Testcase cp_frm
li x12, 0x5416a43e3b7b4119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58fbb54cd0964a37 # load x3 with value 0x58fbb54cd0964a37
sd x3, 0(x2) # store 0x58fbb54cd0964a37 in memory
fld f5, 0(x2) # load 0x58fbb54cd0964a37 from memory into f5
li x3, 0xa171032dbff1df07 # load x3 with value 0xa171032dbff1df07
sd x3, 0(x2) # store 0xa171032dbff1df07 in memory
fld f16, 0(x2) # load 0xa171032dbff1df07 from memory into f16
fmul.d f12, f5, f16, dyn # perform operation
fmul.d f12, f5, f16, rdn # perform operation
fmul.d f12, f5, f16, rmm # perform operation
fmul.d f12, f5, f16, rne # perform operation
fmul.d f12, f5, f16, rtz # perform operation
fmul.d f12, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x20, 0x1034d4959b992d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f28, 0(x2) # load 0x0000000000000000 from memory into f28
fmul.d f20, f13, f28, dyn # perform operation
fmul.d f20, f13, f28, rdn # perform operation
fmul.d f20, f13, f28, rmm # perform operation
fmul.d f20, f13, f28, rne # perform operation
fmul.d f20, f13, f28, rtz # perform operation
fmul.d f20, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x1, 0x16d1372d3bf8349e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
fmul.d f1, f25, f28, dyn # perform operation
fmul.d f1, f25, f28, rdn # perform operation
fmul.d f1, f25, f28, rmm # perform operation
fmul.d f1, f25, f28, rne # perform operation
fmul.d f1, f25, f28, rtz # perform operation
fmul.d f1, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x28, 0x3de122c2d26fd2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
fmul.d f28, f29, f18, dyn # perform operation
fmul.d f28, f29, f18, rdn # perform operation
fmul.d f28, f29, f18, rmm # perform operation
fmul.d f28, f29, f18, rne # perform operation
fmul.d f28, f29, f18, rtz # perform operation
fmul.d f28, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x29, 0x8895b04bb9b7267f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fmul.d f29, f4, f21, dyn # perform operation
fmul.d f29, f4, f21, rdn # perform operation
fmul.d f29, f4, f21, rmm # perform operation
fmul.d f29, f4, f21, rne # perform operation
fmul.d f29, f4, f21, rtz # perform operation
fmul.d f29, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x1, 0x9eecc40ec52a0fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmul.d f1, f27, f28, dyn # perform operation
fmul.d f1, f27, f28, rdn # perform operation
fmul.d f1, f27, f28, rmm # perform operation
fmul.d f1, f27, f28, rne # perform operation
fmul.d f1, f27, f28, rtz # perform operation
fmul.d f1, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x6, 0x4348bb37d46eee1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmul.d f6, f7, f25, dyn # perform operation
fmul.d f6, f7, f25, rdn # perform operation
fmul.d f6, f7, f25, rmm # perform operation
fmul.d f6, f7, f25, rne # perform operation
fmul.d f6, f7, f25, rtz # perform operation
fmul.d f6, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x5, 0xc09c3ab4785a2d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmul.d f5, f1, f2, dyn # perform operation
fmul.d f5, f1, f2, rdn # perform operation
fmul.d f5, f1, f2, rmm # perform operation
fmul.d f5, f1, f2, rne # perform operation
fmul.d f5, f1, f2, rtz # perform operation
fmul.d f5, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x25, 0x81226df459ea8713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
fmul.d f25, f21, f4, dyn # perform operation
fmul.d f25, f21, f4, rdn # perform operation
fmul.d f25, f21, f4, rmm # perform operation
fmul.d f25, f21, f4, rne # perform operation
fmul.d f25, f21, f4, rtz # perform operation
fmul.d f25, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x15, 0xed621dbebaa2d420 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fmul.d f15, f6, f29, dyn # perform operation
fmul.d f15, f6, f29, rdn # perform operation
fmul.d f15, f6, f29, rmm # perform operation
fmul.d f15, f6, f29, rne # perform operation
fmul.d f15, f6, f29, rtz # perform operation
fmul.d f15, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x3, 0x11d97b01de0904d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f14, 0(x2) # load 0x0000000000000000 from memory into f14
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fmul.d f3, f14, f27, dyn # perform operation
fmul.d f3, f14, f27, rdn # perform operation
fmul.d f3, f14, f27, rmm # perform operation
fmul.d f3, f14, f27, rne # perform operation
fmul.d f3, f14, f27, rtz # perform operation
fmul.d f3, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x13, 0xd2196a9e6850b150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
fmul.d f13, f31, f23, dyn # perform operation
fmul.d f13, f31, f23, rdn # perform operation
fmul.d f13, f31, f23, rmm # perform operation
fmul.d f13, f31, f23, rne # perform operation
fmul.d f13, f31, f23, rtz # perform operation
fmul.d f13, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x8, 0x0a0bccd6d5f04bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fmul.d f8, f25, f5, dyn # perform operation
fmul.d f8, f25, f5, rdn # perform operation
fmul.d f8, f25, f5, rmm # perform operation
fmul.d f8, f25, f5, rne # perform operation
fmul.d f8, f25, f5, rtz # perform operation
fmul.d f8, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x10, 0x6bea5b4711f2f7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmul.d f10, f11, f19, dyn # perform operation
fmul.d f10, f11, f19, rdn # perform operation
fmul.d f10, f11, f19, rmm # perform operation
fmul.d f10, f11, f19, rne # perform operation
fmul.d f10, f11, f19, rtz # perform operation
fmul.d f10, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x12, 0x41d7131dec453884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fmul.d f12, f21, f5, dyn # perform operation
fmul.d f12, f21, f5, rdn # perform operation
fmul.d f12, f21, f5, rmm # perform operation
fmul.d f12, f21, f5, rne # perform operation
fmul.d f12, f21, f5, rtz # perform operation
fmul.d f12, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x1, 0xf2a80ae8f526fde6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
fmul.d f1, f30, f4, dyn # perform operation
fmul.d f1, f30, f4, rdn # perform operation
fmul.d f1, f30, f4, rmm # perform operation
fmul.d f1, f30, f4, rne # perform operation
fmul.d f1, f30, f4, rtz # perform operation
fmul.d f1, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x4, 0x205fa1b62e13fd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fmul.d f4, f23, f17, dyn # perform operation
fmul.d f4, f23, f17, rdn # perform operation
fmul.d f4, f23, f17, rmm # perform operation
fmul.d f4, f23, f17, rne # perform operation
fmul.d f4, f23, f17, rtz # perform operation
fmul.d f4, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x25, 0xa8a5dae9ebb88bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmul.d f25, f5, f6, dyn # perform operation
fmul.d f25, f5, f6, rdn # perform operation
fmul.d f25, f5, f6, rmm # perform operation
fmul.d f25, f5, f6, rne # perform operation
fmul.d f25, f5, f6, rtz # perform operation
fmul.d f25, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x6, 0xdb90b5125a03c6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fmul.d f6, f12, f5, dyn # perform operation
fmul.d f6, f12, f5, rdn # perform operation
fmul.d f6, f12, f5, rmm # perform operation
fmul.d f6, f12, f5, rne # perform operation
fmul.d f6, f12, f5, rtz # perform operation
fmul.d f6, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x24, 0x17167e65fb39fa98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmul.d f24, f11, f22, dyn # perform operation
fmul.d f24, f11, f22, rdn # perform operation
fmul.d f24, f11, f22, rmm # perform operation
fmul.d f24, f11, f22, rne # perform operation
fmul.d f24, f11, f22, rtz # perform operation
fmul.d f24, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x8, 0x7c154d80fe040127 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmul.d f8, f31, f13, dyn # perform operation
fmul.d f8, f31, f13, rdn # perform operation
fmul.d f8, f31, f13, rmm # perform operation
fmul.d f8, f31, f13, rne # perform operation
fmul.d f8, f31, f13, rtz # perform operation
fmul.d f8, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x11, 0x26e7874ee34f8c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fmul.d f11, f26, f3, dyn # perform operation
fmul.d f11, f26, f3, rdn # perform operation
fmul.d f11, f26, f3, rmm # perform operation
fmul.d f11, f26, f3, rne # perform operation
fmul.d f11, f26, f3, rtz # perform operation
fmul.d f11, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x21, 0x8ad388019d164f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fmul.d f21, f19, f3, dyn # perform operation
fmul.d f21, f19, f3, rdn # perform operation
fmul.d f21, f19, f3, rmm # perform operation
fmul.d f21, f19, f3, rne # perform operation
fmul.d f21, f19, f3, rtz # perform operation
fmul.d f21, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x1, 0x5b2aa77a342ee04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fmul.d f1, f30, f24, dyn # perform operation
fmul.d f1, f30, f24, rdn # perform operation
fmul.d f1, f30, f24, rmm # perform operation
fmul.d f1, f30, f24, rne # perform operation
fmul.d f1, f30, f24, rtz # perform operation
fmul.d f1, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x23, 0x01868d9872c7b478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f22, 0(x2) # load 0x0000000000000000 from memory into f22
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fmul.d f23, f22, f20, dyn # perform operation
fmul.d f23, f22, f20, rdn # perform operation
fmul.d f23, f22, f20, rmm # perform operation
fmul.d f23, f22, f20, rne # perform operation
fmul.d f23, f22, f20, rtz # perform operation
fmul.d f23, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x16, 0x979a13d8f19fdbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmul.d f16, f21, f15, dyn # perform operation
fmul.d f16, f21, f15, rdn # perform operation
fmul.d f16, f21, f15, rmm # perform operation
fmul.d f16, f21, f15, rne # perform operation
fmul.d f16, f21, f15, rtz # perform operation
fmul.d f16, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x9, 0x3ed9ec42b529d8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fmul.d f9, f13, f19, dyn # perform operation
fmul.d f9, f13, f19, rdn # perform operation
fmul.d f9, f13, f19, rmm # perform operation
fmul.d f9, f13, f19, rne # perform operation
fmul.d f9, f13, f19, rtz # perform operation
fmul.d f9, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x15, 0x4b665b136e2cb542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f1, 0(x2) # load 0x0000000000000000 from memory into f1
fmul.d f15, f14, f1, dyn # perform operation
fmul.d f15, f14, f1, rdn # perform operation
fmul.d f15, f14, f1, rmm # perform operation
fmul.d f15, f14, f1, rne # perform operation
fmul.d f15, f14, f1, rtz # perform operation
fmul.d f15, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x31, 0x894275cdeb9ea928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmul.d f31, f6, f1, dyn # perform operation
fmul.d f31, f6, f1, rdn # perform operation
fmul.d f31, f6, f1, rmm # perform operation
fmul.d f31, f6, f1, rne # perform operation
fmul.d f31, f6, f1, rtz # perform operation
fmul.d f31, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x21, 0x2bb3ee7dbe988d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fmul.d f21, f1, f3, dyn # perform operation
fmul.d f21, f1, f3, rdn # perform operation
fmul.d f21, f1, f3, rmm # perform operation
fmul.d f21, f1, f3, rne # perform operation
fmul.d f21, f1, f3, rtz # perform operation
fmul.d f21, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x2, 0x882711610c5aed25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
fmul.d f2, f9, f30, dyn # perform operation
fmul.d f2, f9, f30, rdn # perform operation
fmul.d f2, f9, f30, rmm # perform operation
fmul.d f2, f9, f30, rne # perform operation
fmul.d f2, f9, f30, rtz # perform operation
fmul.d f2, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x2, 0xcc329b7f860f1e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fmul.d f2, f10, f16, dyn # perform operation
fmul.d f2, f10, f16, rdn # perform operation
fmul.d f2, f10, f16, rmm # perform operation
fmul.d f2, f10, f16, rne # perform operation
fmul.d f2, f10, f16, rtz # perform operation
fmul.d f2, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x17, 0x86bfb9623b9b140e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fmul.d f17, f21, f27, dyn # perform operation
fmul.d f17, f21, f27, rdn # perform operation
fmul.d f17, f21, f27, rmm # perform operation
fmul.d f17, f21, f27, rne # perform operation
fmul.d f17, f21, f27, rtz # perform operation
fmul.d f17, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x5, 0x799b18bf8c600f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmul.d f5, f3, f6, dyn # perform operation
fmul.d f5, f3, f6, rdn # perform operation
fmul.d f5, f3, f6, rmm # perform operation
fmul.d f5, f3, f6, rne # perform operation
fmul.d f5, f3, f6, rtz # perform operation
fmul.d f5, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x4, 0x3155427dddfda736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f22, 0(x2) # load 0xc000000000000000 from memory into f22
fmul.d f4, f26, f22, dyn # perform operation
fmul.d f4, f26, f22, rdn # perform operation
fmul.d f4, f26, f22, rmm # perform operation
fmul.d f4, f26, f22, rne # perform operation
fmul.d f4, f26, f22, rtz # perform operation
fmul.d f4, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x26, 0x4c5cf2714750259e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fmul.d f26, f9, f25, dyn # perform operation
fmul.d f26, f9, f25, rdn # perform operation
fmul.d f26, f9, f25, rmm # perform operation
fmul.d f26, f9, f25, rne # perform operation
fmul.d f26, f9, f25, rtz # perform operation
fmul.d f26, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x10, 0x06b823d45942b1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f26, 0(x2) # load 0x8000000000000000 from memory into f26
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fmul.d f10, f26, f15, dyn # perform operation
fmul.d f10, f26, f15, rdn # perform operation
fmul.d f10, f26, f15, rmm # perform operation
fmul.d f10, f26, f15, rne # perform operation
fmul.d f10, f26, f15, rtz # perform operation
fmul.d f10, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x7, 0x880a2e2f780d5df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmul.d f7, f3, f12, dyn # perform operation
fmul.d f7, f3, f12, rdn # perform operation
fmul.d f7, f3, f12, rmm # perform operation
fmul.d f7, f3, f12, rne # perform operation
fmul.d f7, f3, f12, rtz # perform operation
fmul.d f7, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x10, 0x2f2b58105fe596ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmul.d f10, f2, f1, dyn # perform operation
fmul.d f10, f2, f1, rdn # perform operation
fmul.d f10, f2, f1, rmm # perform operation
fmul.d f10, f2, f1, rne # perform operation
fmul.d f10, f2, f1, rtz # perform operation
fmul.d f10, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x5, 0x4196ec9affd25ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fmul.d f5, f21, f15, dyn # perform operation
fmul.d f5, f21, f15, rdn # perform operation
fmul.d f5, f21, f15, rmm # perform operation
fmul.d f5, f21, f15, rne # perform operation
fmul.d f5, f21, f15, rtz # perform operation
fmul.d f5, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x18, 0x652005cf90f5d965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fmul.d f18, f27, f26, dyn # perform operation
fmul.d f18, f27, f26, rdn # perform operation
fmul.d f18, f27, f26, rmm # perform operation
fmul.d f18, f27, f26, rne # perform operation
fmul.d f18, f27, f26, rtz # perform operation
fmul.d f18, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x13, 0x3315235cb132493c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fmul.d f13, f17, f10, dyn # perform operation
fmul.d f13, f17, f10, rdn # perform operation
fmul.d f13, f17, f10, rmm # perform operation
fmul.d f13, f17, f10, rne # perform operation
fmul.d f13, f17, f10, rtz # perform operation
fmul.d f13, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x14, 0x7a92d0565f209603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fmul.d f14, f6, f24, dyn # perform operation
fmul.d f14, f6, f24, rdn # perform operation
fmul.d f14, f6, f24, rmm # perform operation
fmul.d f14, f6, f24, rne # perform operation
fmul.d f14, f6, f24, rtz # perform operation
fmul.d f14, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x16, 0x33e27fe1ef994d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmul.d f16, f23, f12, dyn # perform operation
fmul.d f16, f23, f12, rdn # perform operation
fmul.d f16, f23, f12, rmm # perform operation
fmul.d f16, f23, f12, rne # perform operation
fmul.d f16, f23, f12, rtz # perform operation
fmul.d f16, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x9, 0x247dc8f2db2e31d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fmul.d f9, f19, f25, dyn # perform operation
fmul.d f9, f19, f25, rdn # perform operation
fmul.d f9, f19, f25, rmm # perform operation
fmul.d f9, f19, f25, rne # perform operation
fmul.d f9, f19, f25, rtz # perform operation
fmul.d f9, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x13, 0x09028a1afdc17afa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fmul.d f13, f6, f8, dyn # perform operation
fmul.d f13, f6, f8, rdn # perform operation
fmul.d f13, f6, f8, rmm # perform operation
fmul.d f13, f6, f8, rne # perform operation
fmul.d f13, f6, f8, rtz # perform operation
fmul.d f13, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x4, 0x7851ac7557563ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmul.d f4, f9, f17, dyn # perform operation
fmul.d f4, f9, f17, rdn # perform operation
fmul.d f4, f9, f17, rmm # perform operation
fmul.d f4, f9, f17, rne # perform operation
fmul.d f4, f9, f17, rtz # perform operation
fmul.d f4, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x18, 0x03fa75706b5328ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
fmul.d f18, f16, f5, dyn # perform operation
fmul.d f18, f16, f5, rdn # perform operation
fmul.d f18, f16, f5, rmm # perform operation
fmul.d f18, f16, f5, rne # perform operation
fmul.d f18, f16, f5, rtz # perform operation
fmul.d f18, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0xb245bc58579973ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
fmul.d f9, f2, f27, dyn # perform operation
fmul.d f9, f2, f27, rdn # perform operation
fmul.d f9, f2, f27, rmm # perform operation
fmul.d f9, f2, f27, rne # perform operation
fmul.d f9, f2, f27, rtz # perform operation
fmul.d f9, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x24, 0x8559fad53b4756b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fmul.d f24, f29, f15, dyn # perform operation
fmul.d f24, f29, f15, rdn # perform operation
fmul.d f24, f29, f15, rmm # perform operation
fmul.d f24, f29, f15, rne # perform operation
fmul.d f24, f29, f15, rtz # perform operation
fmul.d f24, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x9, 0xc8a89b4496bbe96c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmul.d f9, f14, f21, dyn # perform operation
fmul.d f9, f14, f21, rdn # perform operation
fmul.d f9, f14, f21, rmm # perform operation
fmul.d f9, f14, f21, rne # perform operation
fmul.d f9, f14, f21, rtz # perform operation
fmul.d f9, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x8, 0x73f41c5ff957425a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f4, 0(x2) # load 0x8000000000000000 from memory into f4
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fmul.d f8, f4, f25, dyn # perform operation
fmul.d f8, f4, f25, rdn # perform operation
fmul.d f8, f4, f25, rmm # perform operation
fmul.d f8, f4, f25, rne # perform operation
fmul.d f8, f4, f25, rtz # perform operation
fmul.d f8, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x20, 0x297cefe523a64e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fmul.d f20, f16, f15, dyn # perform operation
fmul.d f20, f16, f15, rdn # perform operation
fmul.d f20, f16, f15, rmm # perform operation
fmul.d f20, f16, f15, rne # perform operation
fmul.d f20, f16, f15, rtz # perform operation
fmul.d f20, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x4, 0xc3c5ce0f965d42ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fmul.d f4, f17, f2, dyn # perform operation
fmul.d f4, f17, f2, rdn # perform operation
fmul.d f4, f17, f2, rmm # perform operation
fmul.d f4, f17, f2, rne # perform operation
fmul.d f4, f17, f2, rtz # perform operation
fmul.d f4, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x15, 0x1582101592c564d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmul.d f15, f3, f1, dyn # perform operation
fmul.d f15, f3, f1, rdn # perform operation
fmul.d f15, f3, f1, rmm # perform operation
fmul.d f15, f3, f1, rne # perform operation
fmul.d f15, f3, f1, rtz # perform operation
fmul.d f15, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x8, 0x6e4c8704269b7215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fmul.d f8, f11, f26, dyn # perform operation
fmul.d f8, f11, f26, rdn # perform operation
fmul.d f8, f11, f26, rmm # perform operation
fmul.d f8, f11, f26, rne # perform operation
fmul.d f8, f11, f26, rtz # perform operation
fmul.d f8, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x25, 0x7b2001d12e00fc93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fmul.d f25, f21, f20, dyn # perform operation
fmul.d f25, f21, f20, rdn # perform operation
fmul.d f25, f21, f20, rmm # perform operation
fmul.d f25, f21, f20, rne # perform operation
fmul.d f25, f21, f20, rtz # perform operation
fmul.d f25, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x13, 0xe4f034d1b1e63fe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fmul.d f13, f8, f17, dyn # perform operation
fmul.d f13, f8, f17, rdn # perform operation
fmul.d f13, f8, f17, rmm # perform operation
fmul.d f13, f8, f17, rne # perform operation
fmul.d f13, f8, f17, rtz # perform operation
fmul.d f13, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x21, 0x75b1413381fc46e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f17, 0(x2) # load 0x3ff0000000000000 from memory into f17
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fmul.d f21, f17, f4, dyn # perform operation
fmul.d f21, f17, f4, rdn # perform operation
fmul.d f21, f17, f4, rmm # perform operation
fmul.d f21, f17, f4, rne # perform operation
fmul.d f21, f17, f4, rtz # perform operation
fmul.d f21, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x29, 0xb7be8004d4703453 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmul.d f29, f7, f2, dyn # perform operation
fmul.d f29, f7, f2, rdn # perform operation
fmul.d f29, f7, f2, rmm # perform operation
fmul.d f29, f7, f2, rne # perform operation
fmul.d f29, f7, f2, rtz # perform operation
fmul.d f29, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x26, 0x9280d79da7e7e41e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fmul.d f26, f9, f7, dyn # perform operation
fmul.d f26, f9, f7, rdn # perform operation
fmul.d f26, f9, f7, rmm # perform operation
fmul.d f26, f9, f7, rne # perform operation
fmul.d f26, f9, f7, rtz # perform operation
fmul.d f26, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x21, 0x8fb1917df5502b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fmul.d f21, f1, f19, dyn # perform operation
fmul.d f21, f1, f19, rdn # perform operation
fmul.d f21, f1, f19, rmm # perform operation
fmul.d f21, f1, f19, rne # perform operation
fmul.d f21, f1, f19, rtz # perform operation
fmul.d f21, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x31, 0xf5edc108256c8d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmul.d f31, f5, f26, dyn # perform operation
fmul.d f31, f5, f26, rdn # perform operation
fmul.d f31, f5, f26, rmm # perform operation
fmul.d f31, f5, f26, rne # perform operation
fmul.d f31, f5, f26, rtz # perform operation
fmul.d f31, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x28, 0xbc50933ad2a513f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fmul.d f28, f16, f7, dyn # perform operation
fmul.d f28, f16, f7, rdn # perform operation
fmul.d f28, f16, f7, rmm # perform operation
fmul.d f28, f16, f7, rne # perform operation
fmul.d f28, f16, f7, rtz # perform operation
fmul.d f28, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x12, 0xe01c5ab4273542da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fmul.d f12, f25, f24, dyn # perform operation
fmul.d f12, f25, f24, rdn # perform operation
fmul.d f12, f25, f24, rmm # perform operation
fmul.d f12, f25, f24, rne # perform operation
fmul.d f12, f25, f24, rtz # perform operation
fmul.d f12, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x10, 0x3a7a3c89f7ddefb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fmul.d f10, f30, f24, dyn # perform operation
fmul.d f10, f30, f24, rdn # perform operation
fmul.d f10, f30, f24, rmm # perform operation
fmul.d f10, f30, f24, rne # perform operation
fmul.d f10, f30, f24, rtz # perform operation
fmul.d f10, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x16, 0x02f5c38fd7605715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fmul.d f16, f23, f13, dyn # perform operation
fmul.d f16, f23, f13, rdn # perform operation
fmul.d f16, f23, f13, rmm # perform operation
fmul.d f16, f23, f13, rne # perform operation
fmul.d f16, f23, f13, rtz # perform operation
fmul.d f16, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x1, 0x20e50c0b4a51621f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
fmul.d f1, f16, f25, dyn # perform operation
fmul.d f1, f16, f25, rdn # perform operation
fmul.d f1, f16, f25, rmm # perform operation
fmul.d f1, f16, f25, rne # perform operation
fmul.d f1, f16, f25, rtz # perform operation
fmul.d f1, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x8, 0x6bca20488fbfa365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fmul.d f8, f3, f5, dyn # perform operation
fmul.d f8, f3, f5, rdn # perform operation
fmul.d f8, f3, f5, rmm # perform operation
fmul.d f8, f3, f5, rne # perform operation
fmul.d f8, f3, f5, rtz # perform operation
fmul.d f8, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x12, 0x1f11adec83752239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fmul.d f12, f31, f23, dyn # perform operation
fmul.d f12, f31, f23, rdn # perform operation
fmul.d f12, f31, f23, rmm # perform operation
fmul.d f12, f31, f23, rne # perform operation
fmul.d f12, f31, f23, rtz # perform operation
fmul.d f12, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x29, 0x5b062d37d0ccba1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f14, 0(x2) # load 0x8000000000000001 from memory into f14
fmul.d f29, f13, f14, dyn # perform operation
fmul.d f29, f13, f14, rdn # perform operation
fmul.d f29, f13, f14, rmm # perform operation
fmul.d f29, f13, f14, rne # perform operation
fmul.d f29, f13, f14, rtz # perform operation
fmul.d f29, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x25, 0x4860814a32f45271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
fmul.d f25, f14, f4, dyn # perform operation
fmul.d f25, f14, f4, rdn # perform operation
fmul.d f25, f14, f4, rmm # perform operation
fmul.d f25, f14, f4, rne # perform operation
fmul.d f25, f14, f4, rtz # perform operation
fmul.d f25, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x26, 0x6efd4e69ec9e6b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fmul.d f26, f15, f22, dyn # perform operation
fmul.d f26, f15, f22, rdn # perform operation
fmul.d f26, f15, f22, rmm # perform operation
fmul.d f26, f15, f22, rne # perform operation
fmul.d f26, f15, f22, rtz # perform operation
fmul.d f26, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x31, 0x9d14dee227ba3851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fmul.d f31, f24, f20, dyn # perform operation
fmul.d f31, f24, f20, rdn # perform operation
fmul.d f31, f24, f20, rmm # perform operation
fmul.d f31, f24, f20, rne # perform operation
fmul.d f31, f24, f20, rtz # perform operation
fmul.d f31, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x19, 0x7e10a2dae73ecd74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fmul.d f19, f5, f11, dyn # perform operation
fmul.d f19, f5, f11, rdn # perform operation
fmul.d f19, f5, f11, rmm # perform operation
fmul.d f19, f5, f11, rne # perform operation
fmul.d f19, f5, f11, rtz # perform operation
fmul.d f19, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x27, 0x4166ad4a05972336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fmul.d f27, f14, f17, dyn # perform operation
fmul.d f27, f14, f17, rdn # perform operation
fmul.d f27, f14, f17, rmm # perform operation
fmul.d f27, f14, f17, rne # perform operation
fmul.d f27, f14, f17, rtz # perform operation
fmul.d f27, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x23, 0x9f7ca2258f08c6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmul.d f23, f8, f24, dyn # perform operation
fmul.d f23, f8, f24, rdn # perform operation
fmul.d f23, f8, f24, rmm # perform operation
fmul.d f23, f8, f24, rne # perform operation
fmul.d f23, f8, f24, rtz # perform operation
fmul.d f23, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x29, 0x830a1ab4667a8862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fmul.d f29, f26, f20, dyn # perform operation
fmul.d f29, f26, f20, rdn # perform operation
fmul.d f29, f26, f20, rmm # perform operation
fmul.d f29, f26, f20, rne # perform operation
fmul.d f29, f26, f20, rtz # perform operation
fmul.d f29, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x3, 0x66ca3f1f7a115e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fmul.d f3, f11, f30, dyn # perform operation
fmul.d f3, f11, f30, rdn # perform operation
fmul.d f3, f11, f30, rmm # perform operation
fmul.d f3, f11, f30, rne # perform operation
fmul.d f3, f11, f30, rtz # perform operation
fmul.d f3, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x29, 0x3dda1ce40bb1efb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmul.d f29, f2, f17, dyn # perform operation
fmul.d f29, f2, f17, rdn # perform operation
fmul.d f29, f2, f17, rmm # perform operation
fmul.d f29, f2, f17, rne # perform operation
fmul.d f29, f2, f17, rtz # perform operation
fmul.d f29, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x14, 0x3a9b6f94b7cc5794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fmul.d f14, f11, f7, dyn # perform operation
fmul.d f14, f11, f7, rdn # perform operation
fmul.d f14, f11, f7, rmm # perform operation
fmul.d f14, f11, f7, rne # perform operation
fmul.d f14, f11, f7, rtz # perform operation
fmul.d f14, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x1, 0xfc23894a22f499a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmul.d f1, f27, f31, dyn # perform operation
fmul.d f1, f27, f31, rdn # perform operation
fmul.d f1, f27, f31, rmm # perform operation
fmul.d f1, f27, f31, rne # perform operation
fmul.d f1, f27, f31, rtz # perform operation
fmul.d f1, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x30, 0x074ef9e7c097cbec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
fmul.d f30, f23, f26, dyn # perform operation
fmul.d f30, f23, f26, rdn # perform operation
fmul.d f30, f23, f26, rmm # perform operation
fmul.d f30, f23, f26, rne # perform operation
fmul.d f30, f23, f26, rtz # perform operation
fmul.d f30, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x23, 0x75688411aa2ae96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmul.d f23, f22, f6, dyn # perform operation
fmul.d f23, f22, f6, rdn # perform operation
fmul.d f23, f22, f6, rmm # perform operation
fmul.d f23, f22, f6, rne # perform operation
fmul.d f23, f22, f6, rtz # perform operation
fmul.d f23, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x10, 0x767368eceec93af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmul.d f10, f25, f29, dyn # perform operation
fmul.d f10, f25, f29, rdn # perform operation
fmul.d f10, f25, f29, rmm # perform operation
fmul.d f10, f25, f29, rne # perform operation
fmul.d f10, f25, f29, rtz # perform operation
fmul.d f10, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x30, 0x59c697a5a92de45f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fmul.d f30, f2, f31, dyn # perform operation
fmul.d f30, f2, f31, rdn # perform operation
fmul.d f30, f2, f31, rmm # perform operation
fmul.d f30, f2, f31, rne # perform operation
fmul.d f30, f2, f31, rtz # perform operation
fmul.d f30, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x23, 0xe5897ad081085010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
fmul.d f23, f4, f30, dyn # perform operation
fmul.d f23, f4, f30, rdn # perform operation
fmul.d f23, f4, f30, rmm # perform operation
fmul.d f23, f4, f30, rne # perform operation
fmul.d f23, f4, f30, rtz # perform operation
fmul.d f23, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x9, 0x4d40223c85f0421a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmul.d f9, f12, f11, dyn # perform operation
fmul.d f9, f12, f11, rdn # perform operation
fmul.d f9, f12, f11, rmm # perform operation
fmul.d f9, f12, f11, rne # perform operation
fmul.d f9, f12, f11, rtz # perform operation
fmul.d f9, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x7, 0x5cf4842e28eaf70d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fmul.d f7, f20, f9, dyn # perform operation
fmul.d f7, f20, f9, rdn # perform operation
fmul.d f7, f20, f9, rmm # perform operation
fmul.d f7, f20, f9, rne # perform operation
fmul.d f7, f20, f9, rtz # perform operation
fmul.d f7, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x8, 0xdd6a5f44c454917a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fmul.d f8, f19, f1, dyn # perform operation
fmul.d f8, f19, f1, rdn # perform operation
fmul.d f8, f19, f1, rmm # perform operation
fmul.d f8, f19, f1, rne # perform operation
fmul.d f8, f19, f1, rtz # perform operation
fmul.d f8, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x26, 0x6f30b4bb869728d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmul.d f26, f12, f30, dyn # perform operation
fmul.d f26, f12, f30, rdn # perform operation
fmul.d f26, f12, f30, rmm # perform operation
fmul.d f26, f12, f30, rne # perform operation
fmul.d f26, f12, f30, rtz # perform operation
fmul.d f26, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x15, 0x16379e0dbeaa1433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fmul.d f15, f6, f7, dyn # perform operation
fmul.d f15, f6, f7, rdn # perform operation
fmul.d f15, f6, f7, rmm # perform operation
fmul.d f15, f6, f7, rne # perform operation
fmul.d f15, f6, f7, rtz # perform operation
fmul.d f15, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x10, 0x308e505ab3ffcf51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmul.d f10, f3, f29, dyn # perform operation
fmul.d f10, f3, f29, rdn # perform operation
fmul.d f10, f3, f29, rmm # perform operation
fmul.d f10, f3, f29, rne # perform operation
fmul.d f10, f3, f29, rtz # perform operation
fmul.d f10, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x3, 0xcf9f9366a3c6d7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fmul.d f3, f29, f12, dyn # perform operation
fmul.d f3, f29, f12, rdn # perform operation
fmul.d f3, f29, f12, rmm # perform operation
fmul.d f3, f29, f12, rne # perform operation
fmul.d f3, f29, f12, rtz # perform operation
fmul.d f3, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x30, 0x23a6b552df86c816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmul.d f30, f7, f28, dyn # perform operation
fmul.d f30, f7, f28, rdn # perform operation
fmul.d f30, f7, f28, rmm # perform operation
fmul.d f30, f7, f28, rne # perform operation
fmul.d f30, f7, f28, rtz # perform operation
fmul.d f30, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x25, 0xddde315412471eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
fmul.d f25, f26, f10, dyn # perform operation
fmul.d f25, f26, f10, rdn # perform operation
fmul.d f25, f26, f10, rmm # perform operation
fmul.d f25, f26, f10, rne # perform operation
fmul.d f25, f26, f10, rtz # perform operation
fmul.d f25, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x22, 0xe5d17a553efa39dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fmul.d f22, f25, f11, dyn # perform operation
fmul.d f22, f25, f11, rdn # perform operation
fmul.d f22, f25, f11, rmm # perform operation
fmul.d f22, f25, f11, rne # perform operation
fmul.d f22, f25, f11, rtz # perform operation
fmul.d f22, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x3, 0xe5dc9035a59bdb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fmul.d f3, f15, f26, dyn # perform operation
fmul.d f3, f15, f26, rdn # perform operation
fmul.d f3, f15, f26, rmm # perform operation
fmul.d f3, f15, f26, rne # perform operation
fmul.d f3, f15, f26, rtz # perform operation
fmul.d f3, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x19, 0x39615bcea42222eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmul.d f19, f18, f26, dyn # perform operation
fmul.d f19, f18, f26, rdn # perform operation
fmul.d f19, f18, f26, rmm # perform operation
fmul.d f19, f18, f26, rne # perform operation
fmul.d f19, f18, f26, rtz # perform operation
fmul.d f19, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x21, 0x0177753ae63009eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fmul.d f21, f10, f20, dyn # perform operation
fmul.d f21, f10, f20, rdn # perform operation
fmul.d f21, f10, f20, rmm # perform operation
fmul.d f21, f10, f20, rne # perform operation
fmul.d f21, f10, f20, rtz # perform operation
fmul.d f21, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x12, 0xba9de47ddd924077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f15, 0(x2) # load 0xbff0000000000000 from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f8, 0(x2) # load 0x7fffffffffffffff from memory into f8
fmul.d f12, f15, f8, dyn # perform operation
fmul.d f12, f15, f8, rdn # perform operation
fmul.d f12, f15, f8, rmm # perform operation
fmul.d f12, f15, f8, rne # perform operation
fmul.d f12, f15, f8, rtz # perform operation
fmul.d f12, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x11, 0xec1350fb73feb669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmul.d f11, f18, f10, dyn # perform operation
fmul.d f11, f18, f10, rdn # perform operation
fmul.d f11, f18, f10, rmm # perform operation
fmul.d f11, f18, f10, rne # perform operation
fmul.d f11, f18, f10, rtz # perform operation
fmul.d f11, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x16, 0xb8be86451a973c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmul.d f16, f2, f12, dyn # perform operation
fmul.d f16, f2, f12, rdn # perform operation
fmul.d f16, f2, f12, rmm # perform operation
fmul.d f16, f2, f12, rne # perform operation
fmul.d f16, f2, f12, rtz # perform operation
fmul.d f16, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x8, 0xa3f0e52ada393bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fmul.d f8, f18, f11, dyn # perform operation
fmul.d f8, f18, f11, rdn # perform operation
fmul.d f8, f18, f11, rmm # perform operation
fmul.d f8, f18, f11, rne # perform operation
fmul.d f8, f18, f11, rtz # perform operation
fmul.d f8, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x11, 0x5101ba6767ddc5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fmul.d f11, f29, f13, dyn # perform operation
fmul.d f11, f29, f13, rdn # perform operation
fmul.d f11, f29, f13, rmm # perform operation
fmul.d f11, f29, f13, rne # perform operation
fmul.d f11, f29, f13, rtz # perform operation
fmul.d f11, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x23, 0xa013271e6e42a221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fmul.d f23, f22, f13, dyn # perform operation
fmul.d f23, f22, f13, rdn # perform operation
fmul.d f23, f22, f13, rmm # perform operation
fmul.d f23, f22, f13, rne # perform operation
fmul.d f23, f22, f13, rtz # perform operation
fmul.d f23, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x16, 0xed5dece5fdbb82bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fmul.d f16, f1, f6, dyn # perform operation
fmul.d f16, f1, f6, rdn # perform operation
fmul.d f16, f1, f6, rmm # perform operation
fmul.d f16, f1, f6, rne # perform operation
fmul.d f16, f1, f6, rtz # perform operation
fmul.d f16, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x30, 0x34d34a70def6ad3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmul.d f30, f2, f27, dyn # perform operation
fmul.d f30, f2, f27, rdn # perform operation
fmul.d f30, f2, f27, rmm # perform operation
fmul.d f30, f2, f27, rne # perform operation
fmul.d f30, f2, f27, rtz # perform operation
fmul.d f30, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x25, 0x9269faa535727c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmul.d f25, f12, f28, dyn # perform operation
fmul.d f25, f12, f28, rdn # perform operation
fmul.d f25, f12, f28, rmm # perform operation
fmul.d f25, f12, f28, rne # perform operation
fmul.d f25, f12, f28, rtz # perform operation
fmul.d f25, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x22, 0xf1d9daef852e25a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fmul.d f22, f4, f13, dyn # perform operation
fmul.d f22, f4, f13, rdn # perform operation
fmul.d f22, f4, f13, rmm # perform operation
fmul.d f22, f4, f13, rne # perform operation
fmul.d f22, f4, f13, rtz # perform operation
fmul.d f22, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x31, 0x0e066983c57cd1ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmul.d f31, f30, f29, dyn # perform operation
fmul.d f31, f30, f29, rdn # perform operation
fmul.d f31, f30, f29, rmm # perform operation
fmul.d f31, f30, f29, rne # perform operation
fmul.d f31, f30, f29, rtz # perform operation
fmul.d f31, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x3, 0x126955948e59ea9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fmul.d f3, f6, f1, dyn # perform operation
fmul.d f3, f6, f1, rdn # perform operation
fmul.d f3, f6, f1, rmm # perform operation
fmul.d f3, f6, f1, rne # perform operation
fmul.d f3, f6, f1, rtz # perform operation
fmul.d f3, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x3, 0x1dbea649fb4aa481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fmul.d f3, f20, f8, dyn # perform operation
fmul.d f3, f20, f8, rdn # perform operation
fmul.d f3, f20, f8, rmm # perform operation
fmul.d f3, f20, f8, rne # perform operation
fmul.d f3, f20, f8, rtz # perform operation
fmul.d f3, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x15, 0xb185266ebb022365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f18, 0(x2) # load 0x3ff8000000000000 from memory into f18
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmul.d f15, f18, f24, dyn # perform operation
fmul.d f15, f18, f24, rdn # perform operation
fmul.d f15, f18, f24, rmm # perform operation
fmul.d f15, f18, f24, rne # perform operation
fmul.d f15, f18, f24, rtz # perform operation
fmul.d f15, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x11, 0x0ec0c9cf528d60d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fmul.d f11, f28, f5, dyn # perform operation
fmul.d f11, f28, f5, rdn # perform operation
fmul.d f11, f28, f5, rmm # perform operation
fmul.d f11, f28, f5, rne # perform operation
fmul.d f11, f28, f5, rtz # perform operation
fmul.d f11, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x2, 0x06439bd60ea370f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmul.d f2, f30, f5, dyn # perform operation
fmul.d f2, f30, f5, rdn # perform operation
fmul.d f2, f30, f5, rmm # perform operation
fmul.d f2, f30, f5, rne # perform operation
fmul.d f2, f30, f5, rtz # perform operation
fmul.d f2, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x19, 0xc937015d5f85333a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmul.d f19, f2, f30, dyn # perform operation
fmul.d f19, f2, f30, rdn # perform operation
fmul.d f19, f2, f30, rmm # perform operation
fmul.d f19, f2, f30, rne # perform operation
fmul.d f19, f2, f30, rtz # perform operation
fmul.d f19, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x25, 0x0df4e33dd2623775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmul.d f25, f30, f1, dyn # perform operation
fmul.d f25, f30, f1, rdn # perform operation
fmul.d f25, f30, f1, rmm # perform operation
fmul.d f25, f30, f1, rne # perform operation
fmul.d f25, f30, f1, rtz # perform operation
fmul.d f25, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x19, 0x24d4e19b2fb149f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fmul.d f19, f30, f17, dyn # perform operation
fmul.d f19, f30, f17, rdn # perform operation
fmul.d f19, f30, f17, rmm # perform operation
fmul.d f19, f30, f17, rne # perform operation
fmul.d f19, f30, f17, rtz # perform operation
fmul.d f19, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x20, 0x1765935f7be6e13f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fmul.d f20, f28, f24, dyn # perform operation
fmul.d f20, f28, f24, rdn # perform operation
fmul.d f20, f28, f24, rmm # perform operation
fmul.d f20, f28, f24, rne # perform operation
fmul.d f20, f28, f24, rtz # perform operation
fmul.d f20, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x4, 0xf30c20390cf9a981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmul.d f4, f19, f28, dyn # perform operation
fmul.d f4, f19, f28, rdn # perform operation
fmul.d f4, f19, f28, rmm # perform operation
fmul.d f4, f19, f28, rne # perform operation
fmul.d f4, f19, f28, rtz # perform operation
fmul.d f4, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x10, 0xf8eb471e5c5bf935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fmul.d f10, f12, f24, dyn # perform operation
fmul.d f10, f12, f24, rdn # perform operation
fmul.d f10, f12, f24, rmm # perform operation
fmul.d f10, f12, f24, rne # perform operation
fmul.d f10, f12, f24, rtz # perform operation
fmul.d f10, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x25, 0x022d728ed3e652c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f31, 0(x2) # load 0x3ff8000000000000 from memory into f31
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fmul.d f25, f31, f30, dyn # perform operation
fmul.d f25, f31, f30, rdn # perform operation
fmul.d f25, f31, f30, rmm # perform operation
fmul.d f25, f31, f30, rne # perform operation
fmul.d f25, f31, f30, rtz # perform operation
fmul.d f25, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x8, 0x5d17e58eab8a5b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fmul.d f8, f11, f26, dyn # perform operation
fmul.d f8, f11, f26, rdn # perform operation
fmul.d f8, f11, f26, rmm # perform operation
fmul.d f8, f11, f26, rne # perform operation
fmul.d f8, f11, f26, rtz # perform operation
fmul.d f8, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x16, 0x0d93b8dd30578ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fmul.d f16, f5, f8, dyn # perform operation
fmul.d f16, f5, f8, rdn # perform operation
fmul.d f16, f5, f8, rmm # perform operation
fmul.d f16, f5, f8, rne # perform operation
fmul.d f16, f5, f8, rtz # perform operation
fmul.d f16, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x2, 0x5bde8db044f22a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fmul.d f2, f1, f8, dyn # perform operation
fmul.d f2, f1, f8, rdn # perform operation
fmul.d f2, f1, f8, rmm # perform operation
fmul.d f2, f1, f8, rne # perform operation
fmul.d f2, f1, f8, rtz # perform operation
fmul.d f2, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x7, 0xd2dec838891faf63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fmul.d f7, f6, f31, dyn # perform operation
fmul.d f7, f6, f31, rdn # perform operation
fmul.d f7, f6, f31, rmm # perform operation
fmul.d f7, f6, f31, rne # perform operation
fmul.d f7, f6, f31, rtz # perform operation
fmul.d f7, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x9, 0xc8731d3e8e45ecbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fmul.d f9, f16, f18, dyn # perform operation
fmul.d f9, f16, f18, rdn # perform operation
fmul.d f9, f16, f18, rmm # perform operation
fmul.d f9, f16, f18, rne # perform operation
fmul.d f9, f16, f18, rtz # perform operation
fmul.d f9, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x7, 0xfc2fc01ce4db4d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fmul.d f7, f1, f15, dyn # perform operation
fmul.d f7, f1, f15, rdn # perform operation
fmul.d f7, f1, f15, rmm # perform operation
fmul.d f7, f1, f15, rne # perform operation
fmul.d f7, f1, f15, rtz # perform operation
fmul.d f7, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x10, 0x5fea21da43ec4bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmul.d f10, f14, f15, dyn # perform operation
fmul.d f10, f14, f15, rdn # perform operation
fmul.d f10, f14, f15, rmm # perform operation
fmul.d f10, f14, f15, rne # perform operation
fmul.d f10, f14, f15, rtz # perform operation
fmul.d f10, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x29, 0xd068bde2577080ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fmul.d f29, f13, f1, dyn # perform operation
fmul.d f29, f13, f1, rdn # perform operation
fmul.d f29, f13, f1, rmm # perform operation
fmul.d f29, f13, f1, rne # perform operation
fmul.d f29, f13, f1, rtz # perform operation
fmul.d f29, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x24, 0x84b490956873fa1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmul.d f24, f5, f17, dyn # perform operation
fmul.d f24, f5, f17, rdn # perform operation
fmul.d f24, f5, f17, rmm # perform operation
fmul.d f24, f5, f17, rne # perform operation
fmul.d f24, f5, f17, rtz # perform operation
fmul.d f24, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x11, 0xe8e8498facdc8e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fmul.d f11, f13, f16, dyn # perform operation
fmul.d f11, f13, f16, rdn # perform operation
fmul.d f11, f13, f16, rmm # perform operation
fmul.d f11, f13, f16, rne # perform operation
fmul.d f11, f13, f16, rtz # perform operation
fmul.d f11, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x18, 0x0fc54bb704b2ee86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmul.d f18, f6, f31, dyn # perform operation
fmul.d f18, f6, f31, rdn # perform operation
fmul.d f18, f6, f31, rmm # perform operation
fmul.d f18, f6, f31, rne # perform operation
fmul.d f18, f6, f31, rtz # perform operation
fmul.d f18, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x21, 0xadd6197b3f5748c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fmul.d f21, f27, f22, dyn # perform operation
fmul.d f21, f27, f22, rdn # perform operation
fmul.d f21, f27, f22, rmm # perform operation
fmul.d f21, f27, f22, rne # perform operation
fmul.d f21, f27, f22, rtz # perform operation
fmul.d f21, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x24, 0x576ce6e80fe23cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fmul.d f24, f29, f11, dyn # perform operation
fmul.d f24, f29, f11, rdn # perform operation
fmul.d f24, f29, f11, rmm # perform operation
fmul.d f24, f29, f11, rne # perform operation
fmul.d f24, f29, f11, rtz # perform operation
fmul.d f24, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x16, 0xf7b30d98ae17cb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fmul.d f16, f19, f5, dyn # perform operation
fmul.d f16, f19, f5, rdn # perform operation
fmul.d f16, f19, f5, rmm # perform operation
fmul.d f16, f19, f5, rne # perform operation
fmul.d f16, f19, f5, rtz # perform operation
fmul.d f16, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x14, 0x248f9eb427f960fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
fmul.d f14, f8, f3, dyn # perform operation
fmul.d f14, f8, f3, rdn # perform operation
fmul.d f14, f8, f3, rmm # perform operation
fmul.d f14, f8, f3, rne # perform operation
fmul.d f14, f8, f3, rtz # perform operation
fmul.d f14, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x23, 0xbacabe2152a68e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fmul.d f23, f15, f29, dyn # perform operation
fmul.d f23, f15, f29, rdn # perform operation
fmul.d f23, f15, f29, rmm # perform operation
fmul.d f23, f15, f29, rne # perform operation
fmul.d f23, f15, f29, rtz # perform operation
fmul.d f23, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x5, 0x5fc707db32595eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmul.d f5, f21, f7, dyn # perform operation
fmul.d f5, f21, f7, rdn # perform operation
fmul.d f5, f21, f7, rmm # perform operation
fmul.d f5, f21, f7, rne # perform operation
fmul.d f5, f21, f7, rtz # perform operation
fmul.d f5, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x7, 0x983e5fb6c2ffafb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmul.d f7, f19, f12, dyn # perform operation
fmul.d f7, f19, f12, rdn # perform operation
fmul.d f7, f19, f12, rmm # perform operation
fmul.d f7, f19, f12, rne # perform operation
fmul.d f7, f19, f12, rtz # perform operation
fmul.d f7, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x25, 0x1fdd648c1e59f655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fmul.d f25, f29, f4, dyn # perform operation
fmul.d f25, f29, f4, rdn # perform operation
fmul.d f25, f29, f4, rmm # perform operation
fmul.d f25, f29, f4, rne # perform operation
fmul.d f25, f29, f4, rtz # perform operation
fmul.d f25, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x4, 0x59f0a76b2bb47f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmul.d f4, f25, f1, dyn # perform operation
fmul.d f4, f25, f1, rdn # perform operation
fmul.d f4, f25, f1, rmm # perform operation
fmul.d f4, f25, f1, rne # perform operation
fmul.d f4, f25, f1, rtz # perform operation
fmul.d f4, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x16, 0x5c724f56143e2c7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fmul.d f16, f30, f25, dyn # perform operation
fmul.d f16, f30, f25, rdn # perform operation
fmul.d f16, f30, f25, rmm # perform operation
fmul.d f16, f30, f25, rne # perform operation
fmul.d f16, f30, f25, rtz # perform operation
fmul.d f16, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x2, 0xf97f5b76a8d88575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fmul.d f2, f8, f5, dyn # perform operation
fmul.d f2, f8, f5, rdn # perform operation
fmul.d f2, f8, f5, rmm # perform operation
fmul.d f2, f8, f5, rne # perform operation
fmul.d f2, f8, f5, rtz # perform operation
fmul.d f2, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x7, 0x8295fd6e168141c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmul.d f7, f15, f31, dyn # perform operation
fmul.d f7, f15, f31, rdn # perform operation
fmul.d f7, f15, f31, rmm # perform operation
fmul.d f7, f15, f31, rne # perform operation
fmul.d f7, f15, f31, rtz # perform operation
fmul.d f7, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x21, 0xd6f47344adcc1a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fmul.d f21, f18, f12, dyn # perform operation
fmul.d f21, f18, f12, rdn # perform operation
fmul.d f21, f18, f12, rmm # perform operation
fmul.d f21, f18, f12, rne # perform operation
fmul.d f21, f18, f12, rtz # perform operation
fmul.d f21, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x17, 0xf40906a5c59c9ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f11, 0(x2) # load 0xbff8000000000000 from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmul.d f17, f11, f2, dyn # perform operation
fmul.d f17, f11, f2, rdn # perform operation
fmul.d f17, f11, f2, rmm # perform operation
fmul.d f17, f11, f2, rne # perform operation
fmul.d f17, f11, f2, rtz # perform operation
fmul.d f17, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x16, 0x0a06d616755fb12f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmul.d f16, f15, f12, dyn # perform operation
fmul.d f16, f15, f12, rdn # perform operation
fmul.d f16, f15, f12, rmm # perform operation
fmul.d f16, f15, f12, rne # perform operation
fmul.d f16, f15, f12, rtz # perform operation
fmul.d f16, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x11, 0x9832574583063adb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fmul.d f11, f17, f31, dyn # perform operation
fmul.d f11, f17, f31, rdn # perform operation
fmul.d f11, f17, f31, rmm # perform operation
fmul.d f11, f17, f31, rne # perform operation
fmul.d f11, f17, f31, rtz # perform operation
fmul.d f11, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x21, 0x1edfded5ace1bb92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmul.d f21, f18, f14, dyn # perform operation
fmul.d f21, f18, f14, rdn # perform operation
fmul.d f21, f18, f14, rmm # perform operation
fmul.d f21, f18, f14, rne # perform operation
fmul.d f21, f18, f14, rtz # perform operation
fmul.d f21, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x24, 0xdaf354dadc1100ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fmul.d f24, f8, f21, dyn # perform operation
fmul.d f24, f8, f21, rdn # perform operation
fmul.d f24, f8, f21, rmm # perform operation
fmul.d f24, f8, f21, rne # perform operation
fmul.d f24, f8, f21, rtz # perform operation
fmul.d f24, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x1, 0x44a51e5f22afd064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmul.d f1, f15, f14, dyn # perform operation
fmul.d f1, f15, f14, rdn # perform operation
fmul.d f1, f15, f14, rmm # perform operation
fmul.d f1, f15, f14, rne # perform operation
fmul.d f1, f15, f14, rtz # perform operation
fmul.d f1, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x17, 0xd554ad13bb4a9fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmul.d f17, f9, f11, dyn # perform operation
fmul.d f17, f9, f11, rdn # perform operation
fmul.d f17, f9, f11, rmm # perform operation
fmul.d f17, f9, f11, rne # perform operation
fmul.d f17, f9, f11, rtz # perform operation
fmul.d f17, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x19, 0x42692f8144da4153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmul.d f19, f4, f9, dyn # perform operation
fmul.d f19, f4, f9, rdn # perform operation
fmul.d f19, f4, f9, rmm # perform operation
fmul.d f19, f4, f9, rne # perform operation
fmul.d f19, f4, f9, rtz # perform operation
fmul.d f19, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x27, 0xb25ee4b2532fc8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f4, 0(x2) # load 0x5a392534a57711ad from memory into f4
fmul.d f27, f22, f4, dyn # perform operation
fmul.d f27, f22, f4, rdn # perform operation
fmul.d f27, f22, f4, rmm # perform operation
fmul.d f27, f22, f4, rne # perform operation
fmul.d f27, f22, f4, rtz # perform operation
fmul.d f27, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x28, 0xae29db8512cfea58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fmul.d f28, f10, f22, dyn # perform operation
fmul.d f28, f10, f22, rdn # perform operation
fmul.d f28, f10, f22, rmm # perform operation
fmul.d f28, f10, f22, rne # perform operation
fmul.d f28, f10, f22, rtz # perform operation
fmul.d f28, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x16, 0xb35afa67c225c9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fmul.d f16, f31, f15, dyn # perform operation
fmul.d f16, f31, f15, rdn # perform operation
fmul.d f16, f31, f15, rmm # perform operation
fmul.d f16, f31, f15, rne # perform operation
fmul.d f16, f31, f15, rtz # perform operation
fmul.d f16, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x18, 0xca850e2b600f105b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f5, 0(x2) # load 0x4000000000000000 from memory into f5
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmul.d f18, f5, f3, dyn # perform operation
fmul.d f18, f5, f3, rdn # perform operation
fmul.d f18, f5, f3, rmm # perform operation
fmul.d f18, f5, f3, rne # perform operation
fmul.d f18, f5, f3, rtz # perform operation
fmul.d f18, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x22, 0x2eb821046c8488a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fmul.d f22, f9, f13, dyn # perform operation
fmul.d f22, f9, f13, rdn # perform operation
fmul.d f22, f9, f13, rmm # perform operation
fmul.d f22, f9, f13, rne # perform operation
fmul.d f22, f9, f13, rtz # perform operation
fmul.d f22, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x21, 0x9208857ab3629327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fmul.d f21, f13, f10, dyn # perform operation
fmul.d f21, f13, f10, rdn # perform operation
fmul.d f21, f13, f10, rmm # perform operation
fmul.d f21, f13, f10, rne # perform operation
fmul.d f21, f13, f10, rtz # perform operation
fmul.d f21, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x24, 0x7e920e841c04ad2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fmul.d f24, f2, f20, dyn # perform operation
fmul.d f24, f2, f20, rdn # perform operation
fmul.d f24, f2, f20, rmm # perform operation
fmul.d f24, f2, f20, rne # perform operation
fmul.d f24, f2, f20, rtz # perform operation
fmul.d f24, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x25, 0x5380b35517106c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fmul.d f25, f15, f24, dyn # perform operation
fmul.d f25, f15, f24, rdn # perform operation
fmul.d f25, f15, f24, rmm # perform operation
fmul.d f25, f15, f24, rne # perform operation
fmul.d f25, f15, f24, rtz # perform operation
fmul.d f25, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x18, 0x1c508883212a33f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmul.d f18, f15, f2, dyn # perform operation
fmul.d f18, f15, f2, rdn # perform operation
fmul.d f18, f15, f2, rmm # perform operation
fmul.d f18, f15, f2, rne # perform operation
fmul.d f18, f15, f2, rtz # perform operation
fmul.d f18, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x29, 0x566303291dd4c2f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fmul.d f29, f30, f23, dyn # perform operation
fmul.d f29, f30, f23, rdn # perform operation
fmul.d f29, f30, f23, rmm # perform operation
fmul.d f29, f30, f23, rne # perform operation
fmul.d f29, f30, f23, rtz # perform operation
fmul.d f29, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x28, 0xb3f3581fd4779d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fmul.d f28, f30, f23, dyn # perform operation
fmul.d f28, f30, f23, rdn # perform operation
fmul.d f28, f30, f23, rmm # perform operation
fmul.d f28, f30, f23, rne # perform operation
fmul.d f28, f30, f23, rtz # perform operation
fmul.d f28, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x28, 0xb2e1a83245eb9168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fmul.d f28, f31, f20, dyn # perform operation
fmul.d f28, f31, f20, rdn # perform operation
fmul.d f28, f31, f20, rmm # perform operation
fmul.d f28, f31, f20, rne # perform operation
fmul.d f28, f31, f20, rtz # perform operation
fmul.d f28, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x6, 0x6f93c3ce7a3aa1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmul.d f6, f28, f25, dyn # perform operation
fmul.d f6, f28, f25, rdn # perform operation
fmul.d f6, f28, f25, rmm # perform operation
fmul.d f6, f28, f25, rne # perform operation
fmul.d f6, f28, f25, rtz # perform operation
fmul.d f6, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x14, 0x0323073a7d4bb044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fmul.d f14, f8, f2, dyn # perform operation
fmul.d f14, f8, f2, rdn # perform operation
fmul.d f14, f8, f2, rmm # perform operation
fmul.d f14, f8, f2, rne # perform operation
fmul.d f14, f8, f2, rtz # perform operation
fmul.d f14, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x31, 0xa1bf507d51322cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
fmul.d f31, f6, f11, dyn # perform operation
fmul.d f31, f6, f11, rdn # perform operation
fmul.d f31, f6, f11, rmm # perform operation
fmul.d f31, f6, f11, rne # perform operation
fmul.d f31, f6, f11, rtz # perform operation
fmul.d f31, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x15, 0xb8c37acedfa67bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
fmul.d f15, f4, f27, dyn # perform operation
fmul.d f15, f4, f27, rdn # perform operation
fmul.d f15, f4, f27, rmm # perform operation
fmul.d f15, f4, f27, rne # perform operation
fmul.d f15, f4, f27, rtz # perform operation
fmul.d f15, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x13, 0xe3f6a998b3654ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmul.d f13, f10, f21, dyn # perform operation
fmul.d f13, f10, f21, rdn # perform operation
fmul.d f13, f10, f21, rmm # perform operation
fmul.d f13, f10, f21, rne # perform operation
fmul.d f13, f10, f21, rtz # perform operation
fmul.d f13, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x28, 0xfed4b5e100167222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
fmul.d f28, f2, f24, dyn # perform operation
fmul.d f28, f2, f24, rdn # perform operation
fmul.d f28, f2, f24, rmm # perform operation
fmul.d f28, f2, f24, rne # perform operation
fmul.d f28, f2, f24, rtz # perform operation
fmul.d f28, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x3, 0x14d8526b50095889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmul.d f3, f19, f12, dyn # perform operation
fmul.d f3, f19, f12, rdn # perform operation
fmul.d f3, f19, f12, rmm # perform operation
fmul.d f3, f19, f12, rne # perform operation
fmul.d f3, f19, f12, rtz # perform operation
fmul.d f3, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x5, 0x50b7f42cb1771b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmul.d f5, f2, f15, dyn # perform operation
fmul.d f5, f2, f15, rdn # perform operation
fmul.d f5, f2, f15, rmm # perform operation
fmul.d f5, f2, f15, rne # perform operation
fmul.d f5, f2, f15, rtz # perform operation
fmul.d f5, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x27, 0xb49d6398c59ecb37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fmul.d f27, f1, f23, dyn # perform operation
fmul.d f27, f1, f23, rdn # perform operation
fmul.d f27, f1, f23, rmm # perform operation
fmul.d f27, f1, f23, rne # perform operation
fmul.d f27, f1, f23, rtz # perform operation
fmul.d f27, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x19, 0xc7f5ac70ef80ee73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fmul.d f19, f4, f5, dyn # perform operation
fmul.d f19, f4, f5, rdn # perform operation
fmul.d f19, f4, f5, rmm # perform operation
fmul.d f19, f4, f5, rne # perform operation
fmul.d f19, f4, f5, rtz # perform operation
fmul.d f19, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x21, 0x44a788160a4ee5e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmul.d f21, f2, f29, dyn # perform operation
fmul.d f21, f2, f29, rdn # perform operation
fmul.d f21, f2, f29, rmm # perform operation
fmul.d f21, f2, f29, rne # perform operation
fmul.d f21, f2, f29, rtz # perform operation
fmul.d f21, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x19, 0x382fe473784a7559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmul.d f19, f1, f29, dyn # perform operation
fmul.d f19, f1, f29, rdn # perform operation
fmul.d f19, f1, f29, rmm # perform operation
fmul.d f19, f1, f29, rne # perform operation
fmul.d f19, f1, f29, rtz # perform operation
fmul.d f19, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x13, 0x140fd8fed57c1530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fmul.d f13, f23, f17, dyn # perform operation
fmul.d f13, f23, f17, rdn # perform operation
fmul.d f13, f23, f17, rmm # perform operation
fmul.d f13, f23, f17, rne # perform operation
fmul.d f13, f23, f17, rtz # perform operation
fmul.d f13, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x31, 0x116179ee8217d9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmul.d f31, f25, f13, dyn # perform operation
fmul.d f31, f25, f13, rdn # perform operation
fmul.d f31, f25, f13, rmm # perform operation
fmul.d f31, f25, f13, rne # perform operation
fmul.d f31, f25, f13, rtz # perform operation
fmul.d f31, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0xa7438526fbb25daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fmul.d f12, f22, f31, dyn # perform operation
fmul.d f12, f22, f31, rdn # perform operation
fmul.d f12, f22, f31, rmm # perform operation
fmul.d f12, f22, f31, rne # perform operation
fmul.d f12, f22, f31, rtz # perform operation
fmul.d f12, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x16, 0xac89405c3ae0efb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fmul.d f16, f23, f30, dyn # perform operation
fmul.d f16, f23, f30, rdn # perform operation
fmul.d f16, f23, f30, rmm # perform operation
fmul.d f16, f23, f30, rne # perform operation
fmul.d f16, f23, f30, rtz # perform operation
fmul.d f16, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x25, 0xdbd4ac33f3b7b724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmul.d f25, f15, f17, dyn # perform operation
fmul.d f25, f15, f17, rdn # perform operation
fmul.d f25, f15, f17, rmm # perform operation
fmul.d f25, f15, f17, rne # perform operation
fmul.d f25, f15, f17, rtz # perform operation
fmul.d f25, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x12, 0x606dd1c91f9be2f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fmul.d f12, f16, f29, dyn # perform operation
fmul.d f12, f16, f29, rdn # perform operation
fmul.d f12, f16, f29, rmm # perform operation
fmul.d f12, f16, f29, rne # perform operation
fmul.d f12, f16, f29, rtz # perform operation
fmul.d f12, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x15, 0xe3b374e3da8dd289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fmul.d f15, f4, f11, dyn # perform operation
fmul.d f15, f4, f11, rdn # perform operation
fmul.d f15, f4, f11, rmm # perform operation
fmul.d f15, f4, f11, rne # perform operation
fmul.d f15, f4, f11, rtz # perform operation
fmul.d f15, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x31, 0x0afb71afe623ca42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fmul.d f31, f7, f16, dyn # perform operation
fmul.d f31, f7, f16, rdn # perform operation
fmul.d f31, f7, f16, rmm # perform operation
fmul.d f31, f7, f16, rne # perform operation
fmul.d f31, f7, f16, rtz # perform operation
fmul.d f31, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x2, 0x985ef079136a434a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fmul.d f2, f30, f23, dyn # perform operation
fmul.d f2, f30, f23, rdn # perform operation
fmul.d f2, f30, f23, rmm # perform operation
fmul.d f2, f30, f23, rne # perform operation
fmul.d f2, f30, f23, rtz # perform operation
fmul.d f2, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x11, 0xca204582643d3d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
fmul.d f11, f14, f26, dyn # perform operation
fmul.d f11, f14, f26, rdn # perform operation
fmul.d f11, f14, f26, rmm # perform operation
fmul.d f11, f14, f26, rne # perform operation
fmul.d f11, f14, f26, rtz # perform operation
fmul.d f11, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x17, 0xdf03e99edcb01651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
fmul.d f17, f3, f7, dyn # perform operation
fmul.d f17, f3, f7, rdn # perform operation
fmul.d f17, f3, f7, rmm # perform operation
fmul.d f17, f3, f7, rne # perform operation
fmul.d f17, f3, f7, rtz # perform operation
fmul.d f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x1, 0x9ceecea8f2bfb98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fmul.d f1, f2, f14, dyn # perform operation
fmul.d f1, f2, f14, rdn # perform operation
fmul.d f1, f2, f14, rmm # perform operation
fmul.d f1, f2, f14, rne # perform operation
fmul.d f1, f2, f14, rtz # perform operation
fmul.d f1, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x10, 0x1ccbd97ba291087d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fmul.d f10, f17, f16, dyn # perform operation
fmul.d f10, f17, f16, rdn # perform operation
fmul.d f10, f17, f16, rmm # perform operation
fmul.d f10, f17, f16, rne # perform operation
fmul.d f10, f17, f16, rtz # perform operation
fmul.d f10, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x27, 0xbcecdb0ab2ac4f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fmul.d f27, f13, f15, dyn # perform operation
fmul.d f27, f13, f15, rdn # perform operation
fmul.d f27, f13, f15, rmm # perform operation
fmul.d f27, f13, f15, rne # perform operation
fmul.d f27, f13, f15, rtz # perform operation
fmul.d f27, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x22, 0xaf57ce6920319922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmul.d f22, f4, f12, dyn # perform operation
fmul.d f22, f4, f12, rdn # perform operation
fmul.d f22, f4, f12, rmm # perform operation
fmul.d f22, f4, f12, rne # perform operation
fmul.d f22, f4, f12, rtz # perform operation
fmul.d f22, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x9, 0xf1afff6b93d78d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fmul.d f9, f1, f28, dyn # perform operation
fmul.d f9, f1, f28, rdn # perform operation
fmul.d f9, f1, f28, rmm # perform operation
fmul.d f9, f1, f28, rne # perform operation
fmul.d f9, f1, f28, rtz # perform operation
fmul.d f9, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x12, 0xc08db1156a9eedce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f30, 0(x2) # load 0xc000000000000000 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fmul.d f12, f30, f23, dyn # perform operation
fmul.d f12, f30, f23, rdn # perform operation
fmul.d f12, f30, f23, rmm # perform operation
fmul.d f12, f30, f23, rne # perform operation
fmul.d f12, f30, f23, rtz # perform operation
fmul.d f12, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x14, 0xb31e491f1477db7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmul.d f14, f6, f8, dyn # perform operation
fmul.d f14, f6, f8, rdn # perform operation
fmul.d f14, f6, f8, rmm # perform operation
fmul.d f14, f6, f8, rne # perform operation
fmul.d f14, f6, f8, rtz # perform operation
fmul.d f14, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x4, 0xb2b5b4c2f1adb637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fmul.d f4, f29, f26, dyn # perform operation
fmul.d f4, f29, f26, rdn # perform operation
fmul.d f4, f29, f26, rmm # perform operation
fmul.d f4, f29, f26, rne # perform operation
fmul.d f4, f29, f26, rtz # perform operation
fmul.d f4, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x21, 0xfe3d531681c54d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fmul.d f21, f4, f14, dyn # perform operation
fmul.d f21, f4, f14, rdn # perform operation
fmul.d f21, f4, f14, rmm # perform operation
fmul.d f21, f4, f14, rne # perform operation
fmul.d f21, f4, f14, rtz # perform operation
fmul.d f21, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x6, 0x5a9453b8abc91587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f4, 0(x2) # load 0xc000000000000000 from memory into f4
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
fmul.d f6, f4, f8, dyn # perform operation
fmul.d f6, f4, f8, rdn # perform operation
fmul.d f6, f4, f8, rmm # perform operation
fmul.d f6, f4, f8, rne # perform operation
fmul.d f6, f4, f8, rtz # perform operation
fmul.d f6, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x20, 0x947984ea06fb88ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fmul.d f20, f10, f6, dyn # perform operation
fmul.d f20, f10, f6, rdn # perform operation
fmul.d f20, f10, f6, rmm # perform operation
fmul.d f20, f10, f6, rne # perform operation
fmul.d f20, f10, f6, rtz # perform operation
fmul.d f20, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x8, 0x5c29e6ba90b9c073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fmul.d f8, f27, f31, dyn # perform operation
fmul.d f8, f27, f31, rdn # perform operation
fmul.d f8, f27, f31, rmm # perform operation
fmul.d f8, f27, f31, rne # perform operation
fmul.d f8, f27, f31, rtz # perform operation
fmul.d f8, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x4, 0x2003918f26687a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fmul.d f4, f10, f8, dyn # perform operation
fmul.d f4, f10, f8, rdn # perform operation
fmul.d f4, f10, f8, rmm # perform operation
fmul.d f4, f10, f8, rne # perform operation
fmul.d f4, f10, f8, rtz # perform operation
fmul.d f4, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x23, 0xcf7fc17621b73c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmul.d f23, f9, f1, dyn # perform operation
fmul.d f23, f9, f1, rdn # perform operation
fmul.d f23, f9, f1, rmm # perform operation
fmul.d f23, f9, f1, rne # perform operation
fmul.d f23, f9, f1, rtz # perform operation
fmul.d f23, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x2, 0xc69630b5c74b5927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fmul.d f2, f10, f5, dyn # perform operation
fmul.d f2, f10, f5, rdn # perform operation
fmul.d f2, f10, f5, rmm # perform operation
fmul.d f2, f10, f5, rne # perform operation
fmul.d f2, f10, f5, rtz # perform operation
fmul.d f2, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x12, 0x4c9fef839aa7869b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmul.d f12, f11, f29, dyn # perform operation
fmul.d f12, f11, f29, rdn # perform operation
fmul.d f12, f11, f29, rmm # perform operation
fmul.d f12, f11, f29, rne # perform operation
fmul.d f12, f11, f29, rtz # perform operation
fmul.d f12, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x22, 0xd0cce1f0faebf750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
fmul.d f22, f28, f7, dyn # perform operation
fmul.d f22, f28, f7, rdn # perform operation
fmul.d f22, f28, f7, rmm # perform operation
fmul.d f22, f28, f7, rne # perform operation
fmul.d f22, f28, f7, rtz # perform operation
fmul.d f22, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0xee5b124d2b515075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
fmul.d f14, f12, f2, dyn # perform operation
fmul.d f14, f12, f2, rdn # perform operation
fmul.d f14, f12, f2, rmm # perform operation
fmul.d f14, f12, f2, rne # perform operation
fmul.d f14, f12, f2, rtz # perform operation
fmul.d f14, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x28, 0xadf1011d5f92039e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f16, 0(x2) # load 0xa6e895993737426c from memory into f16
fmul.d f28, f10, f16, dyn # perform operation
fmul.d f28, f10, f16, rdn # perform operation
fmul.d f28, f10, f16, rmm # perform operation
fmul.d f28, f10, f16, rne # perform operation
fmul.d f28, f10, f16, rtz # perform operation
fmul.d f28, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x31, 0xc5e61724c7557703 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fmul.d f31, f11, f29, dyn # perform operation
fmul.d f31, f11, f29, rdn # perform operation
fmul.d f31, f11, f29, rmm # perform operation
fmul.d f31, f11, f29, rne # perform operation
fmul.d f31, f11, f29, rtz # perform operation
fmul.d f31, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x3, 0x22947c17df4a6ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f16, 0(x2) # load 0x8000000000000000 from memory into f16
fmul.d f3, f6, f16, dyn # perform operation
fmul.d f3, f6, f16, rdn # perform operation
fmul.d f3, f6, f16, rmm # perform operation
fmul.d f3, f6, f16, rne # perform operation
fmul.d f3, f6, f16, rtz # perform operation
fmul.d f3, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x2, 0x84cb7da7f01cde19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmul.d f2, f25, f1, dyn # perform operation
fmul.d f2, f25, f1, rdn # perform operation
fmul.d f2, f25, f1, rmm # perform operation
fmul.d f2, f25, f1, rne # perform operation
fmul.d f2, f25, f1, rtz # perform operation
fmul.d f2, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x7, 0x0f23254e4f056c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fmul.d f7, f16, f21, dyn # perform operation
fmul.d f7, f16, f21, rdn # perform operation
fmul.d f7, f16, f21, rmm # perform operation
fmul.d f7, f16, f21, rne # perform operation
fmul.d f7, f16, f21, rtz # perform operation
fmul.d f7, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x22, 0x2fb3c61be8a359ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f17, 0(x2) # load 0x3ff8000000000000 from memory into f17
fmul.d f22, f29, f17, dyn # perform operation
fmul.d f22, f29, f17, rdn # perform operation
fmul.d f22, f29, f17, rmm # perform operation
fmul.d f22, f29, f17, rne # perform operation
fmul.d f22, f29, f17, rtz # perform operation
fmul.d f22, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x16, 0x84e2417e848152a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fmul.d f16, f26, f15, dyn # perform operation
fmul.d f16, f26, f15, rdn # perform operation
fmul.d f16, f26, f15, rmm # perform operation
fmul.d f16, f26, f15, rne # perform operation
fmul.d f16, f26, f15, rtz # perform operation
fmul.d f16, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x18, 0x18ca6dc7b106f768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
fmul.d f18, f7, f22, dyn # perform operation
fmul.d f18, f7, f22, rdn # perform operation
fmul.d f18, f7, f22, rmm # perform operation
fmul.d f18, f7, f22, rne # perform operation
fmul.d f18, f7, f22, rtz # perform operation
fmul.d f18, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x11, 0x5f8d86e5d29aa464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fmul.d f11, f19, f18, dyn # perform operation
fmul.d f11, f19, f18, rdn # perform operation
fmul.d f11, f19, f18, rmm # perform operation
fmul.d f11, f19, f18, rne # perform operation
fmul.d f11, f19, f18, rtz # perform operation
fmul.d f11, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x17, 0xe99362ba0907774a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f1, 0(x2) # load 0x0010000000000000 from memory into f1
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmul.d f17, f1, f18, dyn # perform operation
fmul.d f17, f1, f18, rdn # perform operation
fmul.d f17, f1, f18, rmm # perform operation
fmul.d f17, f1, f18, rne # perform operation
fmul.d f17, f1, f18, rtz # perform operation
fmul.d f17, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x30, 0x874b8e6cf64bf0c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fmul.d f30, f15, f16, dyn # perform operation
fmul.d f30, f15, f16, rdn # perform operation
fmul.d f30, f15, f16, rmm # perform operation
fmul.d f30, f15, f16, rne # perform operation
fmul.d f30, f15, f16, rtz # perform operation
fmul.d f30, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x20, 0x1ccaa8eb0bd94047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
fmul.d f20, f23, f30, dyn # perform operation
fmul.d f20, f23, f30, rdn # perform operation
fmul.d f20, f23, f30, rmm # perform operation
fmul.d f20, f23, f30, rne # perform operation
fmul.d f20, f23, f30, rtz # perform operation
fmul.d f20, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x20, 0xb318740cb88dbf84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fmul.d f20, f29, f4, dyn # perform operation
fmul.d f20, f29, f4, rdn # perform operation
fmul.d f20, f29, f4, rmm # perform operation
fmul.d f20, f29, f4, rne # perform operation
fmul.d f20, f29, f4, rtz # perform operation
fmul.d f20, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x22, 0xfd196a9811989c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fmul.d f22, f28, f25, dyn # perform operation
fmul.d f22, f28, f25, rdn # perform operation
fmul.d f22, f28, f25, rmm # perform operation
fmul.d f22, f28, f25, rne # perform operation
fmul.d f22, f28, f25, rtz # perform operation
fmul.d f22, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x11, 0x02be157d801de842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmul.d f11, f8, f29, dyn # perform operation
fmul.d f11, f8, f29, rdn # perform operation
fmul.d f11, f8, f29, rmm # perform operation
fmul.d f11, f8, f29, rne # perform operation
fmul.d f11, f8, f29, rtz # perform operation
fmul.d f11, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x11, 0x1e5de78dcd722c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fmul.d f11, f23, f24, dyn # perform operation
fmul.d f11, f23, f24, rdn # perform operation
fmul.d f11, f23, f24, rmm # perform operation
fmul.d f11, f23, f24, rne # perform operation
fmul.d f11, f23, f24, rtz # perform operation
fmul.d f11, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x21, 0x78fea95e41fc1550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fmul.d f21, f30, f14, dyn # perform operation
fmul.d f21, f30, f14, rdn # perform operation
fmul.d f21, f30, f14, rmm # perform operation
fmul.d f21, f30, f14, rne # perform operation
fmul.d f21, f30, f14, rtz # perform operation
fmul.d f21, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x18, 0xf9becc85db23d27b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmul.d f18, f6, f5, dyn # perform operation
fmul.d f18, f6, f5, rdn # perform operation
fmul.d f18, f6, f5, rmm # perform operation
fmul.d f18, f6, f5, rne # perform operation
fmul.d f18, f6, f5, rtz # perform operation
fmul.d f18, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x24, 0xd56881f9bd4a7b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmul.d f24, f11, f12, dyn # perform operation
fmul.d f24, f11, f12, rdn # perform operation
fmul.d f24, f11, f12, rmm # perform operation
fmul.d f24, f11, f12, rne # perform operation
fmul.d f24, f11, f12, rtz # perform operation
fmul.d f24, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x5, 0xc8449ab4e586c72c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmul.d f5, f19, f3, dyn # perform operation
fmul.d f5, f19, f3, rdn # perform operation
fmul.d f5, f19, f3, rmm # perform operation
fmul.d f5, f19, f3, rne # perform operation
fmul.d f5, f19, f3, rtz # perform operation
fmul.d f5, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x11, 0x9e50d5651c587a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fmul.d f11, f16, f24, dyn # perform operation
fmul.d f11, f16, f24, rdn # perform operation
fmul.d f11, f16, f24, rmm # perform operation
fmul.d f11, f16, f24, rne # perform operation
fmul.d f11, f16, f24, rtz # perform operation
fmul.d f11, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x2, 0x1445256abf18fce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f20, 0(x2) # load 0x7ff8000000000000 from memory into f20
fmul.d f2, f29, f20, dyn # perform operation
fmul.d f2, f29, f20, rdn # perform operation
fmul.d f2, f29, f20, rmm # perform operation
fmul.d f2, f29, f20, rne # perform operation
fmul.d f2, f29, f20, rtz # perform operation
fmul.d f2, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x8, 0xc3c1fb8999425e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmul.d f8, f6, f17, dyn # perform operation
fmul.d f8, f6, f17, rdn # perform operation
fmul.d f8, f6, f17, rmm # perform operation
fmul.d f8, f6, f17, rne # perform operation
fmul.d f8, f6, f17, rtz # perform operation
fmul.d f8, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x30, 0x29b257abef2f85c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fmul.d f30, f20, f18, dyn # perform operation
fmul.d f30, f20, f18, rdn # perform operation
fmul.d f30, f20, f18, rmm # perform operation
fmul.d f30, f20, f18, rne # perform operation
fmul.d f30, f20, f18, rtz # perform operation
fmul.d f30, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x7, 0x27c228c280a47bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmul.d f7, f19, f24, dyn # perform operation
fmul.d f7, f19, f24, rdn # perform operation
fmul.d f7, f19, f24, rmm # perform operation
fmul.d f7, f19, f24, rne # perform operation
fmul.d f7, f19, f24, rtz # perform operation
fmul.d f7, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0x75bf97e89b522114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fmul.d f26, f13, f29, dyn # perform operation
fmul.d f26, f13, f29, rdn # perform operation
fmul.d f26, f13, f29, rmm # perform operation
fmul.d f26, f13, f29, rne # perform operation
fmul.d f26, f13, f29, rtz # perform operation
fmul.d f26, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x29, 0xa0deb40d5db73fcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
fmul.d f29, f23, f11, dyn # perform operation
fmul.d f29, f23, f11, rdn # perform operation
fmul.d f29, f23, f11, rmm # perform operation
fmul.d f29, f23, f11, rne # perform operation
fmul.d f29, f23, f11, rtz # perform operation
fmul.d f29, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x23, 0xe9215827761531af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fmul.d f23, f19, f29, dyn # perform operation
fmul.d f23, f19, f29, rdn # perform operation
fmul.d f23, f19, f29, rmm # perform operation
fmul.d f23, f19, f29, rne # perform operation
fmul.d f23, f19, f29, rtz # perform operation
fmul.d f23, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x15, 0x9fd1d808098470cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fmul.d f15, f1, f5, dyn # perform operation
fmul.d f15, f1, f5, rdn # perform operation
fmul.d f15, f1, f5, rmm # perform operation
fmul.d f15, f1, f5, rne # perform operation
fmul.d f15, f1, f5, rtz # perform operation
fmul.d f15, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x24, 0x539f11d555d818c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmul.d f24, f28, f1, dyn # perform operation
fmul.d f24, f28, f1, rdn # perform operation
fmul.d f24, f28, f1, rmm # perform operation
fmul.d f24, f28, f1, rne # perform operation
fmul.d f24, f28, f1, rtz # perform operation
fmul.d f24, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x12, 0x950020e09e94dca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fmul.d f12, f21, f11, dyn # perform operation
fmul.d f12, f21, f11, rdn # perform operation
fmul.d f12, f21, f11, rmm # perform operation
fmul.d f12, f21, f11, rne # perform operation
fmul.d f12, f21, f11, rtz # perform operation
fmul.d f12, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x31, 0xc9814f85a2eea3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmul.d f31, f30, f6, dyn # perform operation
fmul.d f31, f30, f6, rdn # perform operation
fmul.d f31, f30, f6, rmm # perform operation
fmul.d f31, f30, f6, rne # perform operation
fmul.d f31, f30, f6, rtz # perform operation
fmul.d f31, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x17, 0x47cfd6b3e9390819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fmul.d f17, f29, f19, dyn # perform operation
fmul.d f17, f29, f19, rdn # perform operation
fmul.d f17, f29, f19, rmm # perform operation
fmul.d f17, f29, f19, rne # perform operation
fmul.d f17, f29, f19, rtz # perform operation
fmul.d f17, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x12, 0xeeca8442dd3b2be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fmul.d f12, f8, f16, dyn # perform operation
fmul.d f12, f8, f16, rdn # perform operation
fmul.d f12, f8, f16, rmm # perform operation
fmul.d f12, f8, f16, rne # perform operation
fmul.d f12, f8, f16, rtz # perform operation
fmul.d f12, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x2, 0x3a24583bc4890eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fmul.d f2, f22, f5, dyn # perform operation
fmul.d f2, f22, f5, rdn # perform operation
fmul.d f2, f22, f5, rmm # perform operation
fmul.d f2, f22, f5, rne # perform operation
fmul.d f2, f22, f5, rtz # perform operation
fmul.d f2, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x2, 0x2379c3c8e46ae2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fmul.d f2, f22, f25, dyn # perform operation
fmul.d f2, f22, f25, rdn # perform operation
fmul.d f2, f22, f25, rmm # perform operation
fmul.d f2, f22, f25, rne # perform operation
fmul.d f2, f22, f25, rtz # perform operation
fmul.d f2, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x21, 0x57811775da748366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fmul.d f21, f30, f1, dyn # perform operation
fmul.d f21, f30, f1, rdn # perform operation
fmul.d f21, f30, f1, rmm # perform operation
fmul.d f21, f30, f1, rne # perform operation
fmul.d f21, f30, f1, rtz # perform operation
fmul.d f21, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x28, 0x59ff37950071d387 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fmul.d f28, f3, f16, dyn # perform operation
fmul.d f28, f3, f16, rdn # perform operation
fmul.d f28, f3, f16, rmm # perform operation
fmul.d f28, f3, f16, rne # perform operation
fmul.d f28, f3, f16, rtz # perform operation
fmul.d f28, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x1, 0x08f3a509ef170d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
fmul.d f1, f2, f9, dyn # perform operation
fmul.d f1, f2, f9, rdn # perform operation
fmul.d f1, f2, f9, rmm # perform operation
fmul.d f1, f2, f9, rne # perform operation
fmul.d f1, f2, f9, rtz # perform operation
fmul.d f1, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x17, 0xd9361c097a0b2c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmul.d f17, f8, f1, dyn # perform operation
fmul.d f17, f8, f1, rdn # perform operation
fmul.d f17, f8, f1, rmm # perform operation
fmul.d f17, f8, f1, rne # perform operation
fmul.d f17, f8, f1, rtz # perform operation
fmul.d f17, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x23, 0xc82d4666b778dffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fmul.d f23, f9, f16, dyn # perform operation
fmul.d f23, f9, f16, rdn # perform operation
fmul.d f23, f9, f16, rmm # perform operation
fmul.d f23, f9, f16, rne # perform operation
fmul.d f23, f9, f16, rtz # perform operation
fmul.d f23, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x29, 0x353234093b229da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmul.d f29, f31, f21, dyn # perform operation
fmul.d f29, f31, f21, rdn # perform operation
fmul.d f29, f31, f21, rmm # perform operation
fmul.d f29, f31, f21, rne # perform operation
fmul.d f29, f31, f21, rtz # perform operation
fmul.d f29, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x11, 0x4e6ec6af647df113 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmul.d f11, f12, f23, dyn # perform operation
fmul.d f11, f12, f23, rdn # perform operation
fmul.d f11, f12, f23, rmm # perform operation
fmul.d f11, f12, f23, rne # perform operation
fmul.d f11, f12, f23, rtz # perform operation
fmul.d f11, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x21, 0xb26348ea681cc5df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmul.d f21, f26, f2, dyn # perform operation
fmul.d f21, f26, f2, rdn # perform operation
fmul.d f21, f26, f2, rmm # perform operation
fmul.d f21, f26, f2, rne # perform operation
fmul.d f21, f26, f2, rtz # perform operation
fmul.d f21, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x12, 0x360a0615f894f2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fmul.d f12, f26, f17, dyn # perform operation
fmul.d f12, f26, f17, rdn # perform operation
fmul.d f12, f26, f17, rmm # perform operation
fmul.d f12, f26, f17, rne # perform operation
fmul.d f12, f26, f17, rtz # perform operation
fmul.d f12, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x18, 0xa6a33c8c9aa0c341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
fmul.d f18, f11, f8, dyn # perform operation
fmul.d f18, f11, f8, rdn # perform operation
fmul.d f18, f11, f8, rmm # perform operation
fmul.d f18, f11, f8, rne # perform operation
fmul.d f18, f11, f8, rtz # perform operation
fmul.d f18, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x15, 0xc2ad6ec93eba7184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fmul.d f15, f4, f12, dyn # perform operation
fmul.d f15, f4, f12, rdn # perform operation
fmul.d f15, f4, f12, rmm # perform operation
fmul.d f15, f4, f12, rne # perform operation
fmul.d f15, f4, f12, rtz # perform operation
fmul.d f15, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x5, 0x43d5ed5a5717ef8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
fmul.d f5, f9, f31, dyn # perform operation
fmul.d f5, f9, f31, rdn # perform operation
fmul.d f5, f9, f31, rmm # perform operation
fmul.d f5, f9, f31, rne # perform operation
fmul.d f5, f9, f31, rtz # perform operation
fmul.d f5, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x22, 0x30c32d8d1ce4de6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fmul.d f22, f9, f10, dyn # perform operation
fmul.d f22, f9, f10, rdn # perform operation
fmul.d f22, f9, f10, rmm # perform operation
fmul.d f22, f9, f10, rne # perform operation
fmul.d f22, f9, f10, rtz # perform operation
fmul.d f22, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x8, 0x61021483663579c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f7, 0(x2) # load 0x8010000000000000 from memory into f7
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
fmul.d f8, f7, f6, dyn # perform operation
fmul.d f8, f7, f6, rdn # perform operation
fmul.d f8, f7, f6, rmm # perform operation
fmul.d f8, f7, f6, rne # perform operation
fmul.d f8, f7, f6, rtz # perform operation
fmul.d f8, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0xc8ba171383705d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmul.d f3, f13, f30, dyn # perform operation
fmul.d f3, f13, f30, rdn # perform operation
fmul.d f3, f13, f30, rmm # perform operation
fmul.d f3, f13, f30, rne # perform operation
fmul.d f3, f13, f30, rtz # perform operation
fmul.d f3, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0x4a02d4234d3c3188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmul.d f2, f8, f27, dyn # perform operation
fmul.d f2, f8, f27, rdn # perform operation
fmul.d f2, f8, f27, rmm # perform operation
fmul.d f2, f8, f27, rne # perform operation
fmul.d f2, f8, f27, rtz # perform operation
fmul.d f2, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x22, 0x789b600c22e39cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fmul.d f22, f3, f19, dyn # perform operation
fmul.d f22, f3, f19, rdn # perform operation
fmul.d f22, f3, f19, rmm # perform operation
fmul.d f22, f3, f19, rne # perform operation
fmul.d f22, f3, f19, rtz # perform operation
fmul.d f22, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x6, 0x679886c740ec0592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
fmul.d f6, f24, f18, dyn # perform operation
fmul.d f6, f24, f18, rdn # perform operation
fmul.d f6, f24, f18, rmm # perform operation
fmul.d f6, f24, f18, rne # perform operation
fmul.d f6, f24, f18, rtz # perform operation
fmul.d f6, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x7, 0x280ec0797b4d764d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmul.d f7, f18, f3, dyn # perform operation
fmul.d f7, f18, f3, rdn # perform operation
fmul.d f7, f18, f3, rmm # perform operation
fmul.d f7, f18, f3, rne # perform operation
fmul.d f7, f18, f3, rtz # perform operation
fmul.d f7, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x7, 0x38cde06356461883 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fmul.d f7, f31, f16, dyn # perform operation
fmul.d f7, f31, f16, rdn # perform operation
fmul.d f7, f31, f16, rmm # perform operation
fmul.d f7, f31, f16, rne # perform operation
fmul.d f7, f31, f16, rtz # perform operation
fmul.d f7, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x25, 0xef12a2c690cb0df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fmul.d f25, f3, f6, dyn # perform operation
fmul.d f25, f3, f6, rdn # perform operation
fmul.d f25, f3, f6, rmm # perform operation
fmul.d f25, f3, f6, rne # perform operation
fmul.d f25, f3, f6, rtz # perform operation
fmul.d f25, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x17, 0xe7534d0dbff9b811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fmul.d f17, f25, f14, dyn # perform operation
fmul.d f17, f25, f14, rdn # perform operation
fmul.d f17, f25, f14, rmm # perform operation
fmul.d f17, f25, f14, rne # perform operation
fmul.d f17, f25, f14, rtz # perform operation
fmul.d f17, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x17, 0x1e423299cba0e636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmul.d f17, f18, f6, dyn # perform operation
fmul.d f17, f18, f6, rdn # perform operation
fmul.d f17, f18, f6, rmm # perform operation
fmul.d f17, f18, f6, rne # perform operation
fmul.d f17, f18, f6, rtz # perform operation
fmul.d f17, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x11, 0x00f3143ea824de73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fmul.d f11, f16, f1, dyn # perform operation
fmul.d f11, f16, f1, rdn # perform operation
fmul.d f11, f16, f1, rmm # perform operation
fmul.d f11, f16, f1, rne # perform operation
fmul.d f11, f16, f1, rtz # perform operation
fmul.d f11, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x16, 0x3d94699a78787ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fmul.d f16, f6, f7, dyn # perform operation
fmul.d f16, f6, f7, rdn # perform operation
fmul.d f16, f6, f7, rmm # perform operation
fmul.d f16, f6, f7, rne # perform operation
fmul.d f16, f6, f7, rtz # perform operation
fmul.d f16, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x29, 0xe913d5c69ad189f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fmul.d f29, f25, f4, dyn # perform operation
fmul.d f29, f25, f4, rdn # perform operation
fmul.d f29, f25, f4, rmm # perform operation
fmul.d f29, f25, f4, rne # perform operation
fmul.d f29, f25, f4, rtz # perform operation
fmul.d f29, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x25, 0xe5cf017b296474a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
fmul.d f25, f23, f16, dyn # perform operation
fmul.d f25, f23, f16, rdn # perform operation
fmul.d f25, f23, f16, rmm # perform operation
fmul.d f25, f23, f16, rne # perform operation
fmul.d f25, f23, f16, rtz # perform operation
fmul.d f25, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x20, 0x7f1e1ed1af82dc18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f17, 0(x2) # load 0x7fefffffffffffff from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmul.d f20, f17, f2, dyn # perform operation
fmul.d f20, f17, f2, rdn # perform operation
fmul.d f20, f17, f2, rmm # perform operation
fmul.d f20, f17, f2, rne # perform operation
fmul.d f20, f17, f2, rtz # perform operation
fmul.d f20, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x30, 0x9c340ed73d730641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fmul.d f30, f20, f4, dyn # perform operation
fmul.d f30, f20, f4, rdn # perform operation
fmul.d f30, f20, f4, rmm # perform operation
fmul.d f30, f20, f4, rne # perform operation
fmul.d f30, f20, f4, rtz # perform operation
fmul.d f30, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x21, 0xdb53d35de6adbdad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fmul.d f21, f11, f7, dyn # perform operation
fmul.d f21, f11, f7, rdn # perform operation
fmul.d f21, f11, f7, rmm # perform operation
fmul.d f21, f11, f7, rne # perform operation
fmul.d f21, f11, f7, rtz # perform operation
fmul.d f21, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x15, 0xa5bd3138333b01ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fmul.d f15, f1, f18, dyn # perform operation
fmul.d f15, f1, f18, rdn # perform operation
fmul.d f15, f1, f18, rmm # perform operation
fmul.d f15, f1, f18, rne # perform operation
fmul.d f15, f1, f18, rtz # perform operation
fmul.d f15, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x20, 0x2229a83a4d98dbc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fmul.d f20, f8, f14, dyn # perform operation
fmul.d f20, f8, f14, rdn # perform operation
fmul.d f20, f8, f14, rmm # perform operation
fmul.d f20, f8, f14, rne # perform operation
fmul.d f20, f8, f14, rtz # perform operation
fmul.d f20, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x30, 0xa9c138243c5474d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fmul.d f30, f9, f7, dyn # perform operation
fmul.d f30, f9, f7, rdn # perform operation
fmul.d f30, f9, f7, rmm # perform operation
fmul.d f30, f9, f7, rne # perform operation
fmul.d f30, f9, f7, rtz # perform operation
fmul.d f30, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x8, 0x08a8979216703d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fmul.d f8, f31, f28, dyn # perform operation
fmul.d f8, f31, f28, rdn # perform operation
fmul.d f8, f31, f28, rmm # perform operation
fmul.d f8, f31, f28, rne # perform operation
fmul.d f8, f31, f28, rtz # perform operation
fmul.d f8, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x19, 0x24e2ca95af60d7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fmul.d f19, f26, f29, dyn # perform operation
fmul.d f19, f26, f29, rdn # perform operation
fmul.d f19, f26, f29, rmm # perform operation
fmul.d f19, f26, f29, rne # perform operation
fmul.d f19, f26, f29, rtz # perform operation
fmul.d f19, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x19, 0xae0bbaf535b069e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fmul.d f19, f29, f28, dyn # perform operation
fmul.d f19, f29, f28, rdn # perform operation
fmul.d f19, f29, f28, rmm # perform operation
fmul.d f19, f29, f28, rne # perform operation
fmul.d f19, f29, f28, rtz # perform operation
fmul.d f19, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x31, 0x6473f09ed736e281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmul.d f31, f13, f25, dyn # perform operation
fmul.d f31, f13, f25, rdn # perform operation
fmul.d f31, f13, f25, rmm # perform operation
fmul.d f31, f13, f25, rne # perform operation
fmul.d f31, f13, f25, rtz # perform operation
fmul.d f31, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x29, 0x33ce0bffce44dfaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
fmul.d f29, f11, f26, dyn # perform operation
fmul.d f29, f11, f26, rdn # perform operation
fmul.d f29, f11, f26, rmm # perform operation
fmul.d f29, f11, f26, rne # perform operation
fmul.d f29, f11, f26, rtz # perform operation
fmul.d f29, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x6, 0x2447a8c8237cb937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fmul.d f6, f10, f12, dyn # perform operation
fmul.d f6, f10, f12, rdn # perform operation
fmul.d f6, f10, f12, rmm # perform operation
fmul.d f6, f10, f12, rne # perform operation
fmul.d f6, f10, f12, rtz # perform operation
fmul.d f6, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x19, 0x750f94e3627a9b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fmul.d f19, f5, f21, dyn # perform operation
fmul.d f19, f5, f21, rdn # perform operation
fmul.d f19, f5, f21, rmm # perform operation
fmul.d f19, f5, f21, rne # perform operation
fmul.d f19, f5, f21, rtz # perform operation
fmul.d f19, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x29, 0xd27406384a7daa1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
fmul.d f29, f31, f8, dyn # perform operation
fmul.d f29, f31, f8, rdn # perform operation
fmul.d f29, f31, f8, rmm # perform operation
fmul.d f29, f31, f8, rne # perform operation
fmul.d f29, f31, f8, rtz # perform operation
fmul.d f29, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x27, 0x4e87884a4de5f9fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fmul.d f27, f6, f29, dyn # perform operation
fmul.d f27, f6, f29, rdn # perform operation
fmul.d f27, f6, f29, rmm # perform operation
fmul.d f27, f6, f29, rne # perform operation
fmul.d f27, f6, f29, rtz # perform operation
fmul.d f27, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x4, 0x46bbdc9ab13f930b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
fmul.d f4, f28, f15, dyn # perform operation
fmul.d f4, f28, f15, rdn # perform operation
fmul.d f4, f28, f15, rmm # perform operation
fmul.d f4, f28, f15, rne # perform operation
fmul.d f4, f28, f15, rtz # perform operation
fmul.d f4, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x1, 0xf093f766e68866be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmul.d f1, f28, f6, dyn # perform operation
fmul.d f1, f28, f6, rdn # perform operation
fmul.d f1, f28, f6, rmm # perform operation
fmul.d f1, f28, f6, rne # perform operation
fmul.d f1, f28, f6, rtz # perform operation
fmul.d f1, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x1, 0x23fc77ae06f64efe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fmul.d f1, f10, f13, dyn # perform operation
fmul.d f1, f10, f13, rdn # perform operation
fmul.d f1, f10, f13, rmm # perform operation
fmul.d f1, f10, f13, rne # perform operation
fmul.d f1, f10, f13, rtz # perform operation
fmul.d f1, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x6, 0x5fa81a7b3d769059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fmul.d f6, f15, f29, dyn # perform operation
fmul.d f6, f15, f29, rdn # perform operation
fmul.d f6, f15, f29, rmm # perform operation
fmul.d f6, f15, f29, rne # perform operation
fmul.d f6, f15, f29, rtz # perform operation
fmul.d f6, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x27, 0x9f2ce30bdb197d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fmul.d f27, f6, f8, dyn # perform operation
fmul.d f27, f6, f8, rdn # perform operation
fmul.d f27, f6, f8, rmm # perform operation
fmul.d f27, f6, f8, rne # perform operation
fmul.d f27, f6, f8, rtz # perform operation
fmul.d f27, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x12, 0x13a0a2dcaf3afb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fmul.d f12, f10, f30, dyn # perform operation
fmul.d f12, f10, f30, rdn # perform operation
fmul.d f12, f10, f30, rmm # perform operation
fmul.d f12, f10, f30, rne # perform operation
fmul.d f12, f10, f30, rtz # perform operation
fmul.d f12, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x18, 0xf76795038afb7f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fmul.d f18, f23, f24, dyn # perform operation
fmul.d f18, f23, f24, rdn # perform operation
fmul.d f18, f23, f24, rmm # perform operation
fmul.d f18, f23, f24, rne # perform operation
fmul.d f18, f23, f24, rtz # perform operation
fmul.d f18, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x6, 0x15a7c2492d707d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fmul.d f6, f16, f25, dyn # perform operation
fmul.d f6, f16, f25, rdn # perform operation
fmul.d f6, f16, f25, rmm # perform operation
fmul.d f6, f16, f25, rne # perform operation
fmul.d f6, f16, f25, rtz # perform operation
fmul.d f6, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x27, 0xf6eef1a2bc71e895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
fmul.d f27, f1, f10, dyn # perform operation
fmul.d f27, f1, f10, rdn # perform operation
fmul.d f27, f1, f10, rmm # perform operation
fmul.d f27, f1, f10, rne # perform operation
fmul.d f27, f1, f10, rtz # perform operation
fmul.d f27, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x26, 0x6dd5ae13ca5024a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fmul.d f26, f9, f5, dyn # perform operation
fmul.d f26, f9, f5, rdn # perform operation
fmul.d f26, f9, f5, rmm # perform operation
fmul.d f26, f9, f5, rne # perform operation
fmul.d f26, f9, f5, rtz # perform operation
fmul.d f26, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x14, 0xf46c8db931251fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fmul.d f14, f11, f10, dyn # perform operation
fmul.d f14, f11, f10, rdn # perform operation
fmul.d f14, f11, f10, rmm # perform operation
fmul.d f14, f11, f10, rne # perform operation
fmul.d f14, f11, f10, rtz # perform operation
fmul.d f14, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x22, 0xca3f0b5d9771a06a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fmul.d f22, f2, f1, dyn # perform operation
fmul.d f22, f2, f1, rdn # perform operation
fmul.d f22, f2, f1, rmm # perform operation
fmul.d f22, f2, f1, rne # perform operation
fmul.d f22, f2, f1, rtz # perform operation
fmul.d f22, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x19, 0x7020826e2c7c06d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fmul.d f19, f17, f24, dyn # perform operation
fmul.d f19, f17, f24, rdn # perform operation
fmul.d f19, f17, f24, rmm # perform operation
fmul.d f19, f17, f24, rne # perform operation
fmul.d f19, f17, f24, rtz # perform operation
fmul.d f19, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x15, 0x97e149670c8545c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fmul.d f15, f18, f24, dyn # perform operation
fmul.d f15, f18, f24, rdn # perform operation
fmul.d f15, f18, f24, rmm # perform operation
fmul.d f15, f18, f24, rne # perform operation
fmul.d f15, f18, f24, rtz # perform operation
fmul.d f15, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x17, 0x2fe37b145b995549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fmul.d f17, f2, f16, dyn # perform operation
fmul.d f17, f2, f16, rdn # perform operation
fmul.d f17, f2, f16, rmm # perform operation
fmul.d f17, f2, f16, rne # perform operation
fmul.d f17, f2, f16, rtz # perform operation
fmul.d f17, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x27, 0x8bfbebffa24b0e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmul.d f27, f8, f21, dyn # perform operation
fmul.d f27, f8, f21, rdn # perform operation
fmul.d f27, f8, f21, rmm # perform operation
fmul.d f27, f8, f21, rne # perform operation
fmul.d f27, f8, f21, rtz # perform operation
fmul.d f27, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x14, 0x002b906d0e636f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmul.d f14, f5, f29, dyn # perform operation
fmul.d f14, f5, f29, rdn # perform operation
fmul.d f14, f5, f29, rmm # perform operation
fmul.d f14, f5, f29, rne # perform operation
fmul.d f14, f5, f29, rtz # perform operation
fmul.d f14, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x6, 0x6665c224e9af958f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fmul.d f6, f26, f4, dyn # perform operation
fmul.d f6, f26, f4, rdn # perform operation
fmul.d f6, f26, f4, rmm # perform operation
fmul.d f6, f26, f4, rne # perform operation
fmul.d f6, f26, f4, rtz # perform operation
fmul.d f6, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x10, 0xa8eb1914743fa749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmul.d f10, f8, f7, dyn # perform operation
fmul.d f10, f8, f7, rdn # perform operation
fmul.d f10, f8, f7, rmm # perform operation
fmul.d f10, f8, f7, rne # perform operation
fmul.d f10, f8, f7, rtz # perform operation
fmul.d f10, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x13, 0x0285ca5c62aafa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fmul.d f13, f29, f2, dyn # perform operation
fmul.d f13, f29, f2, rdn # perform operation
fmul.d f13, f29, f2, rmm # perform operation
fmul.d f13, f29, f2, rne # perform operation
fmul.d f13, f29, f2, rtz # perform operation
fmul.d f13, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x30, 0x27fa9c351c2b8981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fmul.d f30, f12, f4, dyn # perform operation
fmul.d f30, f12, f4, rdn # perform operation
fmul.d f30, f12, f4, rmm # perform operation
fmul.d f30, f12, f4, rne # perform operation
fmul.d f30, f12, f4, rtz # perform operation
fmul.d f30, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x20, 0xdd2eb8ad4f8a0f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
fmul.d f20, f1, f15, dyn # perform operation
fmul.d f20, f1, f15, rdn # perform operation
fmul.d f20, f1, f15, rmm # perform operation
fmul.d f20, f1, f15, rne # perform operation
fmul.d f20, f1, f15, rtz # perform operation
fmul.d f20, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x10, 0x1babb16d1b2152f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fmul.d f10, f25, f13, dyn # perform operation
fmul.d f10, f25, f13, rdn # perform operation
fmul.d f10, f25, f13, rmm # perform operation
fmul.d f10, f25, f13, rne # perform operation
fmul.d f10, f25, f13, rtz # perform operation
fmul.d f10, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x25, 0x43fe7a5bfde7e6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fmul.d f25, f14, f3, dyn # perform operation
fmul.d f25, f14, f3, rdn # perform operation
fmul.d f25, f14, f3, rmm # perform operation
fmul.d f25, f14, f3, rne # perform operation
fmul.d f25, f14, f3, rtz # perform operation
fmul.d f25, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x9, 0x9ee590b8ff8cc456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmul.d f9, f14, f30, dyn # perform operation
fmul.d f9, f14, f30, rdn # perform operation
fmul.d f9, f14, f30, rmm # perform operation
fmul.d f9, f14, f30, rne # perform operation
fmul.d f9, f14, f30, rtz # perform operation
fmul.d f9, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x7, 0xa1b3de39ce242b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fmul.d f7, f18, f29, dyn # perform operation
fmul.d f7, f18, f29, rdn # perform operation
fmul.d f7, f18, f29, rmm # perform operation
fmul.d f7, f18, f29, rne # perform operation
fmul.d f7, f18, f29, rtz # perform operation
fmul.d f7, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x11, 0x55863c8c6b64d135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fmul.d f11, f1, f8, dyn # perform operation
fmul.d f11, f1, f8, rdn # perform operation
fmul.d f11, f1, f8, rmm # perform operation
fmul.d f11, f1, f8, rne # perform operation
fmul.d f11, f1, f8, rtz # perform operation
fmul.d f11, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x22, 0x08b8b4bfbd8cd9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fmul.d f22, f1, f13, dyn # perform operation
fmul.d f22, f1, f13, rdn # perform operation
fmul.d f22, f1, f13, rmm # perform operation
fmul.d f22, f1, f13, rne # perform operation
fmul.d f22, f1, f13, rtz # perform operation
fmul.d f22, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x24, 0x0722b2faa35abf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fmul.d f24, f30, f29, dyn # perform operation
fmul.d f24, f30, f29, rdn # perform operation
fmul.d f24, f30, f29, rmm # perform operation
fmul.d f24, f30, f29, rne # perform operation
fmul.d f24, f30, f29, rtz # perform operation
fmul.d f24, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x1, 0x131b9377699be330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fmul.d f1, f28, f3, dyn # perform operation
fmul.d f1, f28, f3, rdn # perform operation
fmul.d f1, f28, f3, rmm # perform operation
fmul.d f1, f28, f3, rne # perform operation
fmul.d f1, f28, f3, rtz # perform operation
fmul.d f1, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x22, 0xc897026b331503d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fmul.d f22, f8, f21, dyn # perform operation
fmul.d f22, f8, f21, rdn # perform operation
fmul.d f22, f8, f21, rmm # perform operation
fmul.d f22, f8, f21, rne # perform operation
fmul.d f22, f8, f21, rtz # perform operation
fmul.d f22, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x14, 0x37f9db9918d12ada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fmul.d f14, f8, f11, dyn # perform operation
fmul.d f14, f8, f11, rdn # perform operation
fmul.d f14, f8, f11, rmm # perform operation
fmul.d f14, f8, f11, rne # perform operation
fmul.d f14, f8, f11, rtz # perform operation
fmul.d f14, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x23, 0xf45912c5416dfbff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmul.d f23, f22, f25, dyn # perform operation
fmul.d f23, f22, f25, rdn # perform operation
fmul.d f23, f22, f25, rmm # perform operation
fmul.d f23, f22, f25, rne # perform operation
fmul.d f23, f22, f25, rtz # perform operation
fmul.d f23, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x28, 0x5e8e27a71128a392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmul.d f28, f29, f12, dyn # perform operation
fmul.d f28, f29, f12, rdn # perform operation
fmul.d f28, f29, f12, rmm # perform operation
fmul.d f28, f29, f12, rne # perform operation
fmul.d f28, f29, f12, rtz # perform operation
fmul.d f28, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x18, 0xd86f11da30003873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f4, 0(x2) # load 0x000fffffffffffff from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fmul.d f18, f4, f28, dyn # perform operation
fmul.d f18, f4, f28, rdn # perform operation
fmul.d f18, f4, f28, rmm # perform operation
fmul.d f18, f4, f28, rne # perform operation
fmul.d f18, f4, f28, rtz # perform operation
fmul.d f18, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x31, 0xa8fba382277aba5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmul.d f31, f20, f18, dyn # perform operation
fmul.d f31, f20, f18, rdn # perform operation
fmul.d f31, f20, f18, rmm # perform operation
fmul.d f31, f20, f18, rne # perform operation
fmul.d f31, f20, f18, rtz # perform operation
fmul.d f31, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x31, 0x1bc503f1a63f3801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fmul.d f31, f5, f10, dyn # perform operation
fmul.d f31, f5, f10, rdn # perform operation
fmul.d f31, f5, f10, rmm # perform operation
fmul.d f31, f5, f10, rne # perform operation
fmul.d f31, f5, f10, rtz # perform operation
fmul.d f31, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x12, 0x84e7d84404339305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
fmul.d f12, f21, f2, dyn # perform operation
fmul.d f12, f21, f2, rdn # perform operation
fmul.d f12, f21, f2, rmm # perform operation
fmul.d f12, f21, f2, rne # perform operation
fmul.d f12, f21, f2, rtz # perform operation
fmul.d f12, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x4, 0xc566677b0896392d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
fmul.d f4, f25, f5, dyn # perform operation
fmul.d f4, f25, f5, rdn # perform operation
fmul.d f4, f25, f5, rmm # perform operation
fmul.d f4, f25, f5, rne # perform operation
fmul.d f4, f25, f5, rtz # perform operation
fmul.d f4, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x20, 0x695f91315b9b11ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fmul.d f20, f9, f3, dyn # perform operation
fmul.d f20, f9, f3, rdn # perform operation
fmul.d f20, f9, f3, rmm # perform operation
fmul.d f20, f9, f3, rne # perform operation
fmul.d f20, f9, f3, rtz # perform operation
fmul.d f20, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x15, 0x9c6af3a70d1a41fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
fmul.d f15, f3, f6, dyn # perform operation
fmul.d f15, f3, f6, rdn # perform operation
fmul.d f15, f3, f6, rmm # perform operation
fmul.d f15, f3, f6, rne # perform operation
fmul.d f15, f3, f6, rtz # perform operation
fmul.d f15, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x3, 0xf34f32c0aebd68d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fmul.d f3, f7, f27, dyn # perform operation
fmul.d f3, f7, f27, rdn # perform operation
fmul.d f3, f7, f27, rmm # perform operation
fmul.d f3, f7, f27, rne # perform operation
fmul.d f3, f7, f27, rtz # perform operation
fmul.d f3, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x24, 0xd4b012f32762e783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
fmul.d f24, f1, f13, dyn # perform operation
fmul.d f24, f1, f13, rdn # perform operation
fmul.d f24, f1, f13, rmm # perform operation
fmul.d f24, f1, f13, rne # perform operation
fmul.d f24, f1, f13, rtz # perform operation
fmul.d f24, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x21, 0xe3b14d7fcd04ec7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmul.d f21, f16, f22, dyn # perform operation
fmul.d f21, f16, f22, rdn # perform operation
fmul.d f21, f16, f22, rmm # perform operation
fmul.d f21, f16, f22, rne # perform operation
fmul.d f21, f16, f22, rtz # perform operation
fmul.d f21, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x30, 0xa152c39d3a72eb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fmul.d f30, f24, f26, dyn # perform operation
fmul.d f30, f24, f26, rdn # perform operation
fmul.d f30, f24, f26, rmm # perform operation
fmul.d f30, f24, f26, rne # perform operation
fmul.d f30, f24, f26, rtz # perform operation
fmul.d f30, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x3, 0x13b85b6b3d4b07ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fmul.d f3, f1, f19, dyn # perform operation
fmul.d f3, f1, f19, rdn # perform operation
fmul.d f3, f1, f19, rmm # perform operation
fmul.d f3, f1, f19, rne # perform operation
fmul.d f3, f1, f19, rtz # perform operation
fmul.d f3, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x26, 0xc422cd37f8d56fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fmul.d f26, f21, f9, dyn # perform operation
fmul.d f26, f21, f9, rdn # perform operation
fmul.d f26, f21, f9, rmm # perform operation
fmul.d f26, f21, f9, rne # perform operation
fmul.d f26, f21, f9, rtz # perform operation
fmul.d f26, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x21, 0xceb85421a6e3ab40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
fmul.d f21, f23, f8, dyn # perform operation
fmul.d f21, f23, f8, rdn # perform operation
fmul.d f21, f23, f8, rmm # perform operation
fmul.d f21, f23, f8, rne # perform operation
fmul.d f21, f23, f8, rtz # perform operation
fmul.d f21, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x19, 0xe62f9886adafef9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fmul.d f19, f10, f3, dyn # perform operation
fmul.d f19, f10, f3, rdn # perform operation
fmul.d f19, f10, f3, rmm # perform operation
fmul.d f19, f10, f3, rne # perform operation
fmul.d f19, f10, f3, rtz # perform operation
fmul.d f19, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x21, 0x8a8539429d68d374 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f29, 0(x2) # load 0x000fffffffffffff from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fmul.d f21, f29, f24, dyn # perform operation
fmul.d f21, f29, f24, rdn # perform operation
fmul.d f21, f29, f24, rmm # perform operation
fmul.d f21, f29, f24, rne # perform operation
fmul.d f21, f29, f24, rtz # perform operation
fmul.d f21, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x27, 0x6500fc7941721b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
fmul.d f27, f21, f11, dyn # perform operation
fmul.d f27, f21, f11, rdn # perform operation
fmul.d f27, f21, f11, rmm # perform operation
fmul.d f27, f21, f11, rne # perform operation
fmul.d f27, f21, f11, rtz # perform operation
fmul.d f27, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x10, 0x046eaf65d7da4d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fmul.d f10, f2, f24, dyn # perform operation
fmul.d f10, f2, f24, rdn # perform operation
fmul.d f10, f2, f24, rmm # perform operation
fmul.d f10, f2, f24, rne # perform operation
fmul.d f10, f2, f24, rtz # perform operation
fmul.d f10, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x22, 0x0e140edfa23841cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
fmul.d f22, f25, f6, dyn # perform operation
fmul.d f22, f25, f6, rdn # perform operation
fmul.d f22, f25, f6, rmm # perform operation
fmul.d f22, f25, f6, rne # perform operation
fmul.d f22, f25, f6, rtz # perform operation
fmul.d f22, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x31, 0xdde36abdb819f153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fmul.d f31, f3, f11, dyn # perform operation
fmul.d f31, f3, f11, rdn # perform operation
fmul.d f31, f3, f11, rmm # perform operation
fmul.d f31, f3, f11, rne # perform operation
fmul.d f31, f3, f11, rtz # perform operation
fmul.d f31, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x26, 0x3cb13c5fc7f2fdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fmul.d f26, f13, f12, dyn # perform operation
fmul.d f26, f13, f12, rdn # perform operation
fmul.d f26, f13, f12, rmm # perform operation
fmul.d f26, f13, f12, rne # perform operation
fmul.d f26, f13, f12, rtz # perform operation
fmul.d f26, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x3, 0xbcae5c39cf8053e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f22, 0(x2) # load 0x3ff0000000000000 from memory into f22
fmul.d f3, f10, f22, dyn # perform operation
fmul.d f3, f10, f22, rdn # perform operation
fmul.d f3, f10, f22, rmm # perform operation
fmul.d f3, f10, f22, rne # perform operation
fmul.d f3, f10, f22, rtz # perform operation
fmul.d f3, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x25, 0x0911389552017061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fmul.d f25, f11, f9, dyn # perform operation
fmul.d f25, f11, f9, rdn # perform operation
fmul.d f25, f11, f9, rmm # perform operation
fmul.d f25, f11, f9, rne # perform operation
fmul.d f25, f11, f9, rtz # perform operation
fmul.d f25, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x20, 0xe2b41b3a6174c4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fmul.d f20, f14, f1, dyn # perform operation
fmul.d f20, f14, f1, rdn # perform operation
fmul.d f20, f14, f1, rmm # perform operation
fmul.d f20, f14, f1, rne # perform operation
fmul.d f20, f14, f1, rtz # perform operation
fmul.d f20, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x30, 0x90c465cd49c16e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fmul.d f30, f22, f10, dyn # perform operation
fmul.d f30, f22, f10, rdn # perform operation
fmul.d f30, f22, f10, rmm # perform operation
fmul.d f30, f22, f10, rne # perform operation
fmul.d f30, f22, f10, rtz # perform operation
fmul.d f30, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x11, 0x8d8ade34e38e7fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fmul.d f11, f16, f1, dyn # perform operation
fmul.d f11, f16, f1, rdn # perform operation
fmul.d f11, f16, f1, rmm # perform operation
fmul.d f11, f16, f1, rne # perform operation
fmul.d f11, f16, f1, rtz # perform operation
fmul.d f11, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x7, 0x1254700c0bc2ee63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmul.d f7, f26, f15, dyn # perform operation
fmul.d f7, f26, f15, rdn # perform operation
fmul.d f7, f26, f15, rmm # perform operation
fmul.d f7, f26, f15, rne # perform operation
fmul.d f7, f26, f15, rtz # perform operation
fmul.d f7, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x29, 0x03b06ec4391534b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
fmul.d f29, f23, f6, dyn # perform operation
fmul.d f29, f23, f6, rdn # perform operation
fmul.d f29, f23, f6, rmm # perform operation
fmul.d f29, f23, f6, rne # perform operation
fmul.d f29, f23, f6, rtz # perform operation
fmul.d f29, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x14, 0x3066a72957ee06a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fmul.d f14, f5, f28, dyn # perform operation
fmul.d f14, f5, f28, rdn # perform operation
fmul.d f14, f5, f28, rmm # perform operation
fmul.d f14, f5, f28, rne # perform operation
fmul.d f14, f5, f28, rtz # perform operation
fmul.d f14, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x17, 0x0d13c6224a28e841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fmul.d f17, f12, f7, dyn # perform operation
fmul.d f17, f12, f7, rdn # perform operation
fmul.d f17, f12, f7, rmm # perform operation
fmul.d f17, f12, f7, rne # perform operation
fmul.d f17, f12, f7, rtz # perform operation
fmul.d f17, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x8, 0xe015ecb9510154dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmul.d f8, f5, f1, dyn # perform operation
fmul.d f8, f5, f1, rdn # perform operation
fmul.d f8, f5, f1, rmm # perform operation
fmul.d f8, f5, f1, rne # perform operation
fmul.d f8, f5, f1, rtz # perform operation
fmul.d f8, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x15, 0x20918dcaee74642d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fmul.d f15, f20, f24, dyn # perform operation
fmul.d f15, f20, f24, rdn # perform operation
fmul.d f15, f20, f24, rmm # perform operation
fmul.d f15, f20, f24, rne # perform operation
fmul.d f15, f20, f24, rtz # perform operation
fmul.d f15, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x23, 0x18fd65bd89f0c10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmul.d f23, f6, f24, dyn # perform operation
fmul.d f23, f6, f24, rdn # perform operation
fmul.d f23, f6, f24, rmm # perform operation
fmul.d f23, f6, f24, rne # perform operation
fmul.d f23, f6, f24, rtz # perform operation
fmul.d f23, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x27, 0x2a3f0ebe2f6fb1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fmul.d f27, f2, f17, dyn # perform operation
fmul.d f27, f2, f17, rdn # perform operation
fmul.d f27, f2, f17, rmm # perform operation
fmul.d f27, f2, f17, rne # perform operation
fmul.d f27, f2, f17, rtz # perform operation
fmul.d f27, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x20, 0xa4afde2af03af644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmul.d f20, f10, f25, dyn # perform operation
fmul.d f20, f10, f25, rdn # perform operation
fmul.d f20, f10, f25, rmm # perform operation
fmul.d f20, f10, f25, rne # perform operation
fmul.d f20, f10, f25, rtz # perform operation
fmul.d f20, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x17, 0x44665c151823d21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f6, 0(x2) # load 0x800fffffffffffff from memory into f6
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmul.d f17, f6, f14, dyn # perform operation
fmul.d f17, f6, f14, rdn # perform operation
fmul.d f17, f6, f14, rmm # perform operation
fmul.d f17, f6, f14, rne # perform operation
fmul.d f17, f6, f14, rtz # perform operation
fmul.d f17, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x28, 0xd17c78431a982b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fmul.d f28, f12, f30, dyn # perform operation
fmul.d f28, f12, f30, rdn # perform operation
fmul.d f28, f12, f30, rmm # perform operation
fmul.d f28, f12, f30, rne # perform operation
fmul.d f28, f12, f30, rtz # perform operation
fmul.d f28, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x21, 0x15a5c85f4dcf0d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fmul.d f21, f3, f27, dyn # perform operation
fmul.d f21, f3, f27, rdn # perform operation
fmul.d f21, f3, f27, rmm # perform operation
fmul.d f21, f3, f27, rne # perform operation
fmul.d f21, f3, f27, rtz # perform operation
fmul.d f21, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x19, 0x2443330034b0dcd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmul.d f19, f15, f26, dyn # perform operation
fmul.d f19, f15, f26, rdn # perform operation
fmul.d f19, f15, f26, rmm # perform operation
fmul.d f19, f15, f26, rne # perform operation
fmul.d f19, f15, f26, rtz # perform operation
fmul.d f19, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x18, 0x8afe30c8db35df2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fmul.d f18, f1, f6, dyn # perform operation
fmul.d f18, f1, f6, rdn # perform operation
fmul.d f18, f1, f6, rmm # perform operation
fmul.d f18, f1, f6, rne # perform operation
fmul.d f18, f1, f6, rtz # perform operation
fmul.d f18, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x16, 0xb108bca7fe6ceef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmul.d f16, f27, f6, dyn # perform operation
fmul.d f16, f27, f6, rdn # perform operation
fmul.d f16, f27, f6, rmm # perform operation
fmul.d f16, f27, f6, rne # perform operation
fmul.d f16, f27, f6, rtz # perform operation
fmul.d f16, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x8, 0x05e9cc5146b655df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
fmul.d f8, f24, f30, dyn # perform operation
fmul.d f8, f24, f30, rdn # perform operation
fmul.d f8, f24, f30, rmm # perform operation
fmul.d f8, f24, f30, rne # perform operation
fmul.d f8, f24, f30, rtz # perform operation
fmul.d f8, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x13, 0x3a7b7a95ef1454d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fmul.d f13, f15, f22, dyn # perform operation
fmul.d f13, f15, f22, rdn # perform operation
fmul.d f13, f15, f22, rmm # perform operation
fmul.d f13, f15, f22, rne # perform operation
fmul.d f13, f15, f22, rtz # perform operation
fmul.d f13, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x14, 0x7a3efb0d602bcae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
fmul.d f14, f11, f20, dyn # perform operation
fmul.d f14, f11, f20, rdn # perform operation
fmul.d f14, f11, f20, rmm # perform operation
fmul.d f14, f11, f20, rne # perform operation
fmul.d f14, f11, f20, rtz # perform operation
fmul.d f14, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x22, 0x6829d18db6ea106a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmul.d f22, f20, f10, dyn # perform operation
fmul.d f22, f20, f10, rdn # perform operation
fmul.d f22, f20, f10, rmm # perform operation
fmul.d f22, f20, f10, rne # perform operation
fmul.d f22, f20, f10, rtz # perform operation
fmul.d f22, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x24, 0x693971f39c8f4e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmul.d f24, f4, f31, dyn # perform operation
fmul.d f24, f4, f31, rdn # perform operation
fmul.d f24, f4, f31, rmm # perform operation
fmul.d f24, f4, f31, rne # perform operation
fmul.d f24, f4, f31, rtz # perform operation
fmul.d f24, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x24, 0xbe8de8bc3cbbd05e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmul.d f24, f16, f1, dyn # perform operation
fmul.d f24, f16, f1, rdn # perform operation
fmul.d f24, f16, f1, rmm # perform operation
fmul.d f24, f16, f1, rne # perform operation
fmul.d f24, f16, f1, rtz # perform operation
fmul.d f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x14, 0xb610e167ad5a203f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmul.d f14, f27, f19, dyn # perform operation
fmul.d f14, f27, f19, rdn # perform operation
fmul.d f14, f27, f19, rmm # perform operation
fmul.d f14, f27, f19, rne # perform operation
fmul.d f14, f27, f19, rtz # perform operation
fmul.d f14, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x31, 0xe6a57ab2fd30f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fmul.d f31, f26, f4, dyn # perform operation
fmul.d f31, f26, f4, rdn # perform operation
fmul.d f31, f26, f4, rmm # perform operation
fmul.d f31, f26, f4, rne # perform operation
fmul.d f31, f26, f4, rtz # perform operation
fmul.d f31, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x1, 0xb5fde2b1624a77f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fmul.d f1, f31, f8, dyn # perform operation
fmul.d f1, f31, f8, rdn # perform operation
fmul.d f1, f31, f8, rmm # perform operation
fmul.d f1, f31, f8, rne # perform operation
fmul.d f1, f31, f8, rtz # perform operation
fmul.d f1, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x21, 0xa83e06e35a9c7318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmul.d f21, f26, f29, dyn # perform operation
fmul.d f21, f26, f29, rdn # perform operation
fmul.d f21, f26, f29, rmm # perform operation
fmul.d f21, f26, f29, rne # perform operation
fmul.d f21, f26, f29, rtz # perform operation
fmul.d f21, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x20, 0xad2e5d7a804fc916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmul.d f20, f30, f19, dyn # perform operation
fmul.d f20, f30, f19, rdn # perform operation
fmul.d f20, f30, f19, rmm # perform operation
fmul.d f20, f30, f19, rne # perform operation
fmul.d f20, f30, f19, rtz # perform operation
fmul.d f20, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x25, 0x8338a287fd3cb437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fmul.d f25, f21, f28, dyn # perform operation
fmul.d f25, f21, f28, rdn # perform operation
fmul.d f25, f21, f28, rmm # perform operation
fmul.d f25, f21, f28, rne # perform operation
fmul.d f25, f21, f28, rtz # perform operation
fmul.d f25, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x3, 0x8ab3bc3d9261ebfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fmul.d f3, f16, f27, dyn # perform operation
fmul.d f3, f16, f27, rdn # perform operation
fmul.d f3, f16, f27, rmm # perform operation
fmul.d f3, f16, f27, rne # perform operation
fmul.d f3, f16, f27, rtz # perform operation
fmul.d f3, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x3, 0x4601edca638c3435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmul.d f3, f21, f4, dyn # perform operation
fmul.d f3, f21, f4, rdn # perform operation
fmul.d f3, f21, f4, rmm # perform operation
fmul.d f3, f21, f4, rne # perform operation
fmul.d f3, f21, f4, rtz # perform operation
fmul.d f3, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x2, 0x526e58167bcb3aac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmul.d f2, f13, f5, dyn # perform operation
fmul.d f2, f13, f5, rdn # perform operation
fmul.d f2, f13, f5, rmm # perform operation
fmul.d f2, f13, f5, rne # perform operation
fmul.d f2, f13, f5, rtz # perform operation
fmul.d f2, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x9, 0xa53622c9e67028ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmul.d f9, f24, f31, dyn # perform operation
fmul.d f9, f24, f31, rdn # perform operation
fmul.d f9, f24, f31, rmm # perform operation
fmul.d f9, f24, f31, rne # perform operation
fmul.d f9, f24, f31, rtz # perform operation
fmul.d f9, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x15, 0xacb577dd824f8c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fmul.d f15, f1, f9, dyn # perform operation
fmul.d f15, f1, f9, rdn # perform operation
fmul.d f15, f1, f9, rmm # perform operation
fmul.d f15, f1, f9, rne # perform operation
fmul.d f15, f1, f9, rtz # perform operation
fmul.d f15, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x933e5090467a6230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fmul.d f25, f4, f17, dyn # perform operation
fmul.d f25, f4, f17, rdn # perform operation
fmul.d f25, f4, f17, rmm # perform operation
fmul.d f25, f4, f17, rne # perform operation
fmul.d f25, f4, f17, rtz # perform operation
fmul.d f25, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x28, 0x9dfdb6ac562bcf4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmul.d f28, f14, f31, dyn # perform operation
fmul.d f28, f14, f31, rdn # perform operation
fmul.d f28, f14, f31, rmm # perform operation
fmul.d f28, f14, f31, rne # perform operation
fmul.d f28, f14, f31, rtz # perform operation
fmul.d f28, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x9, 0x612401095868276f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fmul.d f9, f21, f8, dyn # perform operation
fmul.d f9, f21, f8, rdn # perform operation
fmul.d f9, f21, f8, rmm # perform operation
fmul.d f9, f21, f8, rne # perform operation
fmul.d f9, f21, f8, rtz # perform operation
fmul.d f9, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x31, 0x524d024016a31ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmul.d f31, f18, f2, dyn # perform operation
fmul.d f31, f18, f2, rdn # perform operation
fmul.d f31, f18, f2, rmm # perform operation
fmul.d f31, f18, f2, rne # perform operation
fmul.d f31, f18, f2, rtz # perform operation
fmul.d f31, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x19, 0x3057cd2762a59496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmul.d f19, f10, f13, dyn # perform operation
fmul.d f19, f10, f13, rdn # perform operation
fmul.d f19, f10, f13, rmm # perform operation
fmul.d f19, f10, f13, rne # perform operation
fmul.d f19, f10, f13, rtz # perform operation
fmul.d f19, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x28, 0xfc82376b37ecbf4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
fmul.d f28, f29, f12, dyn # perform operation
fmul.d f28, f29, f12, rdn # perform operation
fmul.d f28, f29, f12, rmm # perform operation
fmul.d f28, f29, f12, rne # perform operation
fmul.d f28, f29, f12, rtz # perform operation
fmul.d f28, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x22, 0x4f19b78c82f5abe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fmul.d f22, f2, f28, dyn # perform operation
fmul.d f22, f2, f28, rdn # perform operation
fmul.d f22, f2, f28, rmm # perform operation
fmul.d f22, f2, f28, rne # perform operation
fmul.d f22, f2, f28, rtz # perform operation
fmul.d f22, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x8, 0x4ea54f4427607f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f20, 0(x2) # load 0x0008000000000000 from memory into f20
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
fmul.d f8, f20, f17, dyn # perform operation
fmul.d f8, f20, f17, rdn # perform operation
fmul.d f8, f20, f17, rmm # perform operation
fmul.d f8, f20, f17, rne # perform operation
fmul.d f8, f20, f17, rtz # perform operation
fmul.d f8, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x28, 0x262dfa1d3ec1efb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fmul.d f28, f5, f13, dyn # perform operation
fmul.d f28, f5, f13, rdn # perform operation
fmul.d f28, f5, f13, rmm # perform operation
fmul.d f28, f5, f13, rne # perform operation
fmul.d f28, f5, f13, rtz # perform operation
fmul.d f28, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x3, 0xee9c1236dcc88fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmul.d f3, f18, f10, dyn # perform operation
fmul.d f3, f18, f10, rdn # perform operation
fmul.d f3, f18, f10, rmm # perform operation
fmul.d f3, f18, f10, rne # perform operation
fmul.d f3, f18, f10, rtz # perform operation
fmul.d f3, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x21, 0xba9c3b47c48a384d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fmul.d f21, f31, f4, dyn # perform operation
fmul.d f21, f31, f4, rdn # perform operation
fmul.d f21, f31, f4, rmm # perform operation
fmul.d f21, f31, f4, rne # perform operation
fmul.d f21, f31, f4, rtz # perform operation
fmul.d f21, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x3, 0x65b261a26bb75f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
fmul.d f3, f13, f6, dyn # perform operation
fmul.d f3, f13, f6, rdn # perform operation
fmul.d f3, f13, f6, rmm # perform operation
fmul.d f3, f13, f6, rne # perform operation
fmul.d f3, f13, f6, rtz # perform operation
fmul.d f3, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x3, 0x83776a874468f1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmul.d f3, f31, f10, dyn # perform operation
fmul.d f3, f31, f10, rdn # perform operation
fmul.d f3, f31, f10, rmm # perform operation
fmul.d f3, f31, f10, rne # perform operation
fmul.d f3, f31, f10, rtz # perform operation
fmul.d f3, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x17, 0xcc98a24d8b8f88ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
fmul.d f17, f14, f31, dyn # perform operation
fmul.d f17, f14, f31, rdn # perform operation
fmul.d f17, f14, f31, rmm # perform operation
fmul.d f17, f14, f31, rne # perform operation
fmul.d f17, f14, f31, rtz # perform operation
fmul.d f17, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x31, 0xae7265efae2307a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fmul.d f31, f3, f10, dyn # perform operation
fmul.d f31, f3, f10, rdn # perform operation
fmul.d f31, f3, f10, rmm # perform operation
fmul.d f31, f3, f10, rne # perform operation
fmul.d f31, f3, f10, rtz # perform operation
fmul.d f31, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x21, 0x33d3555bd6726683 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
fmul.d f21, f19, f6, dyn # perform operation
fmul.d f21, f19, f6, rdn # perform operation
fmul.d f21, f19, f6, rmm # perform operation
fmul.d f21, f19, f6, rne # perform operation
fmul.d f21, f19, f6, rtz # perform operation
fmul.d f21, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x15, 0x460e3af7ae27b233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fmul.d f15, f7, f3, dyn # perform operation
fmul.d f15, f7, f3, rdn # perform operation
fmul.d f15, f7, f3, rmm # perform operation
fmul.d f15, f7, f3, rne # perform operation
fmul.d f15, f7, f3, rtz # perform operation
fmul.d f15, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x21, 0x32b863eae74b3636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fmul.d f21, f11, f20, dyn # perform operation
fmul.d f21, f11, f20, rdn # perform operation
fmul.d f21, f11, f20, rmm # perform operation
fmul.d f21, f11, f20, rne # perform operation
fmul.d f21, f11, f20, rtz # perform operation
fmul.d f21, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x24, 0xaed9b9dcbe8d4700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmul.d f24, f7, f21, dyn # perform operation
fmul.d f24, f7, f21, rdn # perform operation
fmul.d f24, f7, f21, rmm # perform operation
fmul.d f24, f7, f21, rne # perform operation
fmul.d f24, f7, f21, rtz # perform operation
fmul.d f24, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x24, 0xb25763da3fa8c5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f1, 0(x2) # load 0x8008000000000000 from memory into f1
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
fmul.d f24, f1, f26, dyn # perform operation
fmul.d f24, f1, f26, rdn # perform operation
fmul.d f24, f1, f26, rmm # perform operation
fmul.d f24, f1, f26, rne # perform operation
fmul.d f24, f1, f26, rtz # perform operation
fmul.d f24, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x30, 0x38f9d71f7218788c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fmul.d f30, f28, f8, dyn # perform operation
fmul.d f30, f28, f8, rdn # perform operation
fmul.d f30, f28, f8, rmm # perform operation
fmul.d f30, f28, f8, rne # perform operation
fmul.d f30, f28, f8, rtz # perform operation
fmul.d f30, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x10, 0x581c3c0beb6b2cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fmul.d f10, f7, f3, dyn # perform operation
fmul.d f10, f7, f3, rdn # perform operation
fmul.d f10, f7, f3, rmm # perform operation
fmul.d f10, f7, f3, rne # perform operation
fmul.d f10, f7, f3, rtz # perform operation
fmul.d f10, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x8, 0x9488881d5473c7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
fmul.d f8, f25, f12, dyn # perform operation
fmul.d f8, f25, f12, rdn # perform operation
fmul.d f8, f25, f12, rmm # perform operation
fmul.d f8, f25, f12, rne # perform operation
fmul.d f8, f25, f12, rtz # perform operation
fmul.d f8, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x10, 0x3c7c1b9d1f24c0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fmul.d f10, f22, f7, dyn # perform operation
fmul.d f10, f22, f7, rdn # perform operation
fmul.d f10, f22, f7, rmm # perform operation
fmul.d f10, f22, f7, rne # perform operation
fmul.d f10, f22, f7, rtz # perform operation
fmul.d f10, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x10, 0xc3ce9dbea958c433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmul.d f10, f4, f7, dyn # perform operation
fmul.d f10, f4, f7, rdn # perform operation
fmul.d f10, f4, f7, rmm # perform operation
fmul.d f10, f4, f7, rne # perform operation
fmul.d f10, f4, f7, rtz # perform operation
fmul.d f10, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x22, 0x5a573e1abc26c24b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmul.d f22, f9, f5, dyn # perform operation
fmul.d f22, f9, f5, rdn # perform operation
fmul.d f22, f9, f5, rmm # perform operation
fmul.d f22, f9, f5, rne # perform operation
fmul.d f22, f9, f5, rtz # perform operation
fmul.d f22, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x26, 0x167630e4f29f469f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fmul.d f26, f2, f12, dyn # perform operation
fmul.d f26, f2, f12, rdn # perform operation
fmul.d f26, f2, f12, rmm # perform operation
fmul.d f26, f2, f12, rne # perform operation
fmul.d f26, f2, f12, rtz # perform operation
fmul.d f26, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x9, 0xa6621c557ceb9b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fmul.d f9, f4, f29, dyn # perform operation
fmul.d f9, f4, f29, rdn # perform operation
fmul.d f9, f4, f29, rmm # perform operation
fmul.d f9, f4, f29, rne # perform operation
fmul.d f9, f4, f29, rtz # perform operation
fmul.d f9, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x23, 0xdfa657468b7773ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmul.d f23, f4, f26, dyn # perform operation
fmul.d f23, f4, f26, rdn # perform operation
fmul.d f23, f4, f26, rmm # perform operation
fmul.d f23, f4, f26, rne # perform operation
fmul.d f23, f4, f26, rtz # perform operation
fmul.d f23, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x14, 0xd6696238ff7ce974 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmul.d f14, f29, f22, dyn # perform operation
fmul.d f14, f29, f22, rdn # perform operation
fmul.d f14, f29, f22, rmm # perform operation
fmul.d f14, f29, f22, rne # perform operation
fmul.d f14, f29, f22, rtz # perform operation
fmul.d f14, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x20, 0x791f9195c54238dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmul.d f20, f3, f12, dyn # perform operation
fmul.d f20, f3, f12, rdn # perform operation
fmul.d f20, f3, f12, rmm # perform operation
fmul.d f20, f3, f12, rne # perform operation
fmul.d f20, f3, f12, rtz # perform operation
fmul.d f20, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x27, 0x4fd375e02ba50355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fmul.d f27, f14, f7, dyn # perform operation
fmul.d f27, f14, f7, rdn # perform operation
fmul.d f27, f14, f7, rmm # perform operation
fmul.d f27, f14, f7, rne # perform operation
fmul.d f27, f14, f7, rtz # perform operation
fmul.d f27, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x14, 0x5279305af47822fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fmul.d f14, f3, f12, dyn # perform operation
fmul.d f14, f3, f12, rdn # perform operation
fmul.d f14, f3, f12, rmm # perform operation
fmul.d f14, f3, f12, rne # perform operation
fmul.d f14, f3, f12, rtz # perform operation
fmul.d f14, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x12, 0x38aeab7df0986a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fmul.d f12, f7, f18, dyn # perform operation
fmul.d f12, f7, f18, rdn # perform operation
fmul.d f12, f7, f18, rmm # perform operation
fmul.d f12, f7, f18, rne # perform operation
fmul.d f12, f7, f18, rtz # perform operation
fmul.d f12, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x13, 0x8e03c5b5666a4f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fmul.d f13, f21, f7, dyn # perform operation
fmul.d f13, f21, f7, rdn # perform operation
fmul.d f13, f21, f7, rmm # perform operation
fmul.d f13, f21, f7, rne # perform operation
fmul.d f13, f21, f7, rtz # perform operation
fmul.d f13, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x7, 0x3955440123939233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fmul.d f7, f9, f13, dyn # perform operation
fmul.d f7, f9, f13, rdn # perform operation
fmul.d f7, f9, f13, rmm # perform operation
fmul.d f7, f9, f13, rne # perform operation
fmul.d f7, f9, f13, rtz # perform operation
fmul.d f7, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x11, 0x23fa74af3e1686de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmul.d f11, f8, f28, dyn # perform operation
fmul.d f11, f8, f28, rdn # perform operation
fmul.d f11, f8, f28, rmm # perform operation
fmul.d f11, f8, f28, rne # perform operation
fmul.d f11, f8, f28, rtz # perform operation
fmul.d f11, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x25, 0xe351ec45adbb5aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fmul.d f25, f17, f18, dyn # perform operation
fmul.d f25, f17, f18, rdn # perform operation
fmul.d f25, f17, f18, rmm # perform operation
fmul.d f25, f17, f18, rne # perform operation
fmul.d f25, f17, f18, rtz # perform operation
fmul.d f25, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x8d2c46c4e9b83421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmul.d f25, f18, f28, dyn # perform operation
fmul.d f25, f18, f28, rdn # perform operation
fmul.d f25, f18, f28, rmm # perform operation
fmul.d f25, f18, f28, rne # perform operation
fmul.d f25, f18, f28, rtz # perform operation
fmul.d f25, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x22, 0x9fbe17abf12816be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmul.d f22, f1, f16, dyn # perform operation
fmul.d f22, f1, f16, rdn # perform operation
fmul.d f22, f1, f16, rmm # perform operation
fmul.d f22, f1, f16, rne # perform operation
fmul.d f22, f1, f16, rtz # perform operation
fmul.d f22, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x6, 0xacf00ecae8fc3a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fmul.d f6, f18, f23, dyn # perform operation
fmul.d f6, f18, f23, rdn # perform operation
fmul.d f6, f18, f23, rmm # perform operation
fmul.d f6, f18, f23, rne # perform operation
fmul.d f6, f18, f23, rtz # perform operation
fmul.d f6, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x21, 0x0dae3643df4b8744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fmul.d f21, f28, f13, dyn # perform operation
fmul.d f21, f28, f13, rdn # perform operation
fmul.d f21, f28, f13, rmm # perform operation
fmul.d f21, f28, f13, rne # perform operation
fmul.d f21, f28, f13, rtz # perform operation
fmul.d f21, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x5, 0x243adb8fe0958095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fmul.d f5, f8, f12, dyn # perform operation
fmul.d f5, f8, f12, rdn # perform operation
fmul.d f5, f8, f12, rmm # perform operation
fmul.d f5, f8, f12, rne # perform operation
fmul.d f5, f8, f12, rtz # perform operation
fmul.d f5, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x4, 0x0364b37d4e43e430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
fmul.d f4, f28, f22, dyn # perform operation
fmul.d f4, f28, f22, rdn # perform operation
fmul.d f4, f28, f22, rmm # perform operation
fmul.d f4, f28, f22, rne # perform operation
fmul.d f4, f28, f22, rtz # perform operation
fmul.d f4, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x15, 0x9dcb7afb568bcf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmul.d f15, f11, f21, dyn # perform operation
fmul.d f15, f11, f21, rdn # perform operation
fmul.d f15, f11, f21, rmm # perform operation
fmul.d f15, f11, f21, rne # perform operation
fmul.d f15, f11, f21, rtz # perform operation
fmul.d f15, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x31, 0x7918016d2e9139b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmul.d f31, f6, f19, dyn # perform operation
fmul.d f31, f6, f19, rdn # perform operation
fmul.d f31, f6, f19, rmm # perform operation
fmul.d f31, f6, f19, rne # perform operation
fmul.d f31, f6, f19, rtz # perform operation
fmul.d f31, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x3, 0x00357802406b4b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmul.d f3, f6, f15, dyn # perform operation
fmul.d f3, f6, f15, rdn # perform operation
fmul.d f3, f6, f15, rmm # perform operation
fmul.d f3, f6, f15, rne # perform operation
fmul.d f3, f6, f15, rtz # perform operation
fmul.d f3, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x4, 0x6ee3f6e221a40192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmul.d f4, f8, f14, dyn # perform operation
fmul.d f4, f8, f14, rdn # perform operation
fmul.d f4, f8, f14, rmm # perform operation
fmul.d f4, f8, f14, rne # perform operation
fmul.d f4, f8, f14, rtz # perform operation
fmul.d f4, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x1, 0x36bfb9b1a2866e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
fmul.d f1, f9, f27, dyn # perform operation
fmul.d f1, f9, f27, rdn # perform operation
fmul.d f1, f9, f27, rmm # perform operation
fmul.d f1, f9, f27, rne # perform operation
fmul.d f1, f9, f27, rtz # perform operation
fmul.d f1, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x20, 0x38ef8af7cace8409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fmul.d f20, f13, f7, dyn # perform operation
fmul.d f20, f13, f7, rdn # perform operation
fmul.d f20, f13, f7, rmm # perform operation
fmul.d f20, f13, f7, rne # perform operation
fmul.d f20, f13, f7, rtz # perform operation
fmul.d f20, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x18, 0x5909384ec1931fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fmul.d f18, f15, f30, dyn # perform operation
fmul.d f18, f15, f30, rdn # perform operation
fmul.d f18, f15, f30, rmm # perform operation
fmul.d f18, f15, f30, rne # perform operation
fmul.d f18, f15, f30, rtz # perform operation
fmul.d f18, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x15, 0x735ad07946507484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmul.d f15, f2, f5, dyn # perform operation
fmul.d f15, f2, f5, rdn # perform operation
fmul.d f15, f2, f5, rmm # perform operation
fmul.d f15, f2, f5, rne # perform operation
fmul.d f15, f2, f5, rtz # perform operation
fmul.d f15, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x12, 0xcd67fb8bc61137b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fmul.d f12, f4, f11, dyn # perform operation
fmul.d f12, f4, f11, rdn # perform operation
fmul.d f12, f4, f11, rmm # perform operation
fmul.d f12, f4, f11, rne # perform operation
fmul.d f12, f4, f11, rtz # perform operation
fmul.d f12, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x18, 0x9c659ed1fb94885f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fmul.d f18, f21, f29, dyn # perform operation
fmul.d f18, f21, f29, rdn # perform operation
fmul.d f18, f21, f29, rmm # perform operation
fmul.d f18, f21, f29, rne # perform operation
fmul.d f18, f21, f29, rtz # perform operation
fmul.d f18, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x29, 0xad8cb205b97786ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmul.d f29, f25, f26, dyn # perform operation
fmul.d f29, f25, f26, rdn # perform operation
fmul.d f29, f25, f26, rmm # perform operation
fmul.d f29, f25, f26, rne # perform operation
fmul.d f29, f25, f26, rtz # perform operation
fmul.d f29, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x8, 0xbd904877d21feebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmul.d f8, f21, f22, dyn # perform operation
fmul.d f8, f21, f22, rdn # perform operation
fmul.d f8, f21, f22, rmm # perform operation
fmul.d f8, f21, f22, rne # perform operation
fmul.d f8, f21, f22, rtz # perform operation
fmul.d f8, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x2, 0x65aadddfc9f7bfc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fmul.d f2, f1, f22, dyn # perform operation
fmul.d f2, f1, f22, rdn # perform operation
fmul.d f2, f1, f22, rmm # perform operation
fmul.d f2, f1, f22, rne # perform operation
fmul.d f2, f1, f22, rtz # perform operation
fmul.d f2, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x18, 0x511eb4fa3ec2c15b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmul.d f18, f13, f3, dyn # perform operation
fmul.d f18, f13, f3, rdn # perform operation
fmul.d f18, f13, f3, rmm # perform operation
fmul.d f18, f13, f3, rne # perform operation
fmul.d f18, f13, f3, rtz # perform operation
fmul.d f18, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x2, 0xe5f2b0254df95005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmul.d f2, f29, f27, dyn # perform operation
fmul.d f2, f29, f27, rdn # perform operation
fmul.d f2, f29, f27, rmm # perform operation
fmul.d f2, f29, f27, rne # perform operation
fmul.d f2, f29, f27, rtz # perform operation
fmul.d f2, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x25, 0xfc99983397d4bd6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fmul.d f25, f1, f22, dyn # perform operation
fmul.d f25, f1, f22, rdn # perform operation
fmul.d f25, f1, f22, rmm # perform operation
fmul.d f25, f1, f22, rne # perform operation
fmul.d f25, f1, f22, rtz # perform operation
fmul.d f25, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x31, 0xacee00d82fc6142b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fmul.d f31, f11, f30, dyn # perform operation
fmul.d f31, f11, f30, rdn # perform operation
fmul.d f31, f11, f30, rmm # perform operation
fmul.d f31, f11, f30, rne # perform operation
fmul.d f31, f11, f30, rtz # perform operation
fmul.d f31, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x11, 0x92ae608c0bdf5d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
fmul.d f11, f20, f21, dyn # perform operation
fmul.d f11, f20, f21, rdn # perform operation
fmul.d f11, f20, f21, rmm # perform operation
fmul.d f11, f20, f21, rne # perform operation
fmul.d f11, f20, f21, rtz # perform operation
fmul.d f11, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x27, 0xe5be7d1d383b4093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmul.d f27, f17, f12, dyn # perform operation
fmul.d f27, f17, f12, rdn # perform operation
fmul.d f27, f17, f12, rmm # perform operation
fmul.d f27, f17, f12, rne # perform operation
fmul.d f27, f17, f12, rtz # perform operation
fmul.d f27, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x26, 0xe614f1b4e1d57fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fmul.d f26, f20, f31, dyn # perform operation
fmul.d f26, f20, f31, rdn # perform operation
fmul.d f26, f20, f31, rmm # perform operation
fmul.d f26, f20, f31, rne # perform operation
fmul.d f26, f20, f31, rtz # perform operation
fmul.d f26, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x16, 0x1af79ad04b81bb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fmul.d f16, f22, f8, dyn # perform operation
fmul.d f16, f22, f8, rdn # perform operation
fmul.d f16, f22, f8, rmm # perform operation
fmul.d f16, f22, f8, rne # perform operation
fmul.d f16, f22, f8, rtz # perform operation
fmul.d f16, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x17, 0xb042c8c6e9e60920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fmul.d f17, f5, f26, dyn # perform operation
fmul.d f17, f5, f26, rdn # perform operation
fmul.d f17, f5, f26, rmm # perform operation
fmul.d f17, f5, f26, rne # perform operation
fmul.d f17, f5, f26, rtz # perform operation
fmul.d f17, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x11, 0xd03aaea102fd241a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fmul.d f11, f12, f5, dyn # perform operation
fmul.d f11, f12, f5, rdn # perform operation
fmul.d f11, f12, f5, rmm # perform operation
fmul.d f11, f12, f5, rne # perform operation
fmul.d f11, f12, f5, rtz # perform operation
fmul.d f11, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x8, 0x62e680d0b1a0857f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmul.d f8, f16, f23, dyn # perform operation
fmul.d f8, f16, f23, rdn # perform operation
fmul.d f8, f16, f23, rmm # perform operation
fmul.d f8, f16, f23, rne # perform operation
fmul.d f8, f16, f23, rtz # perform operation
fmul.d f8, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x31, 0x89331f76b4575d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fmul.d f31, f30, f3, dyn # perform operation
fmul.d f31, f30, f3, rdn # perform operation
fmul.d f31, f30, f3, rmm # perform operation
fmul.d f31, f30, f3, rne # perform operation
fmul.d f31, f30, f3, rtz # perform operation
fmul.d f31, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x9, 0x3af220a66e34aacc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fmul.d f9, f7, f26, dyn # perform operation
fmul.d f9, f7, f26, rdn # perform operation
fmul.d f9, f7, f26, rmm # perform operation
fmul.d f9, f7, f26, rne # perform operation
fmul.d f9, f7, f26, rtz # perform operation
fmul.d f9, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x22, 0xa019e5c74ed92538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmul.d f22, f20, f25, dyn # perform operation
fmul.d f22, f20, f25, rdn # perform operation
fmul.d f22, f20, f25, rmm # perform operation
fmul.d f22, f20, f25, rne # perform operation
fmul.d f22, f20, f25, rtz # perform operation
fmul.d f22, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x27, 0x095d03eb08268f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fmul.d f27, f22, f23, dyn # perform operation
fmul.d f27, f22, f23, rdn # perform operation
fmul.d f27, f22, f23, rmm # perform operation
fmul.d f27, f22, f23, rne # perform operation
fmul.d f27, f22, f23, rtz # perform operation
fmul.d f27, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x17, 0x46479e74ac10d82e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmul.d f17, f6, f25, dyn # perform operation
fmul.d f17, f6, f25, rdn # perform operation
fmul.d f17, f6, f25, rmm # perform operation
fmul.d f17, f6, f25, rne # perform operation
fmul.d f17, f6, f25, rtz # perform operation
fmul.d f17, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x5, 0xb8533829384aed86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fmul.d f5, f15, f16, dyn # perform operation
fmul.d f5, f15, f16, rdn # perform operation
fmul.d f5, f15, f16, rmm # perform operation
fmul.d f5, f15, f16, rne # perform operation
fmul.d f5, f15, f16, rtz # perform operation
fmul.d f5, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x12, 0x562a01106e1a6a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fmul.d f12, f25, f11, dyn # perform operation
fmul.d f12, f25, f11, rdn # perform operation
fmul.d f12, f25, f11, rmm # perform operation
fmul.d f12, f25, f11, rne # perform operation
fmul.d f12, f25, f11, rtz # perform operation
fmul.d f12, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x4, 0x29e7730923c5abe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmul.d f4, f19, f5, dyn # perform operation
fmul.d f4, f19, f5, rdn # perform operation
fmul.d f4, f19, f5, rmm # perform operation
fmul.d f4, f19, f5, rne # perform operation
fmul.d f4, f19, f5, rtz # perform operation
fmul.d f4, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x31, 0xda83ef9d24ad3174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmul.d f31, f19, f14, dyn # perform operation
fmul.d f31, f19, f14, rdn # perform operation
fmul.d f31, f19, f14, rmm # perform operation
fmul.d f31, f19, f14, rne # perform operation
fmul.d f31, f19, f14, rtz # perform operation
fmul.d f31, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x3, 0x7428480b7df4bac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f22, 0(x2) # load 0x000fffffffffffff from memory into f22
fmul.d f3, f8, f22, dyn # perform operation
fmul.d f3, f8, f22, rdn # perform operation
fmul.d f3, f8, f22, rmm # perform operation
fmul.d f3, f8, f22, rne # perform operation
fmul.d f3, f8, f22, rtz # perform operation
fmul.d f3, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x31, 0x796e4a1a346f2b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fmul.d f31, f2, f14, dyn # perform operation
fmul.d f31, f2, f14, rdn # perform operation
fmul.d f31, f2, f14, rmm # perform operation
fmul.d f31, f2, f14, rne # perform operation
fmul.d f31, f2, f14, rtz # perform operation
fmul.d f31, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x5, 0x5d5538f0b74121c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fmul.d f5, f27, f22, dyn # perform operation
fmul.d f5, f27, f22, rdn # perform operation
fmul.d f5, f27, f22, rmm # perform operation
fmul.d f5, f27, f22, rne # perform operation
fmul.d f5, f27, f22, rtz # perform operation
fmul.d f5, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x5, 0x9341c99c496fa586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmul.d f5, f11, f26, dyn # perform operation
fmul.d f5, f11, f26, rdn # perform operation
fmul.d f5, f11, f26, rmm # perform operation
fmul.d f5, f11, f26, rne # perform operation
fmul.d f5, f11, f26, rtz # perform operation
fmul.d f5, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x7, 0xd899ec04bb4095ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmul.d f7, f25, f5, dyn # perform operation
fmul.d f7, f25, f5, rdn # perform operation
fmul.d f7, f25, f5, rmm # perform operation
fmul.d f7, f25, f5, rne # perform operation
fmul.d f7, f25, f5, rtz # perform operation
fmul.d f7, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x24, 0x0037f29ffa51b6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
fmul.d f24, f30, f16, dyn # perform operation
fmul.d f24, f30, f16, rdn # perform operation
fmul.d f24, f30, f16, rmm # perform operation
fmul.d f24, f30, f16, rne # perform operation
fmul.d f24, f30, f16, rtz # perform operation
fmul.d f24, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x22, 0x96d4d98eabd8ff7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fmul.d f22, f10, f31, dyn # perform operation
fmul.d f22, f10, f31, rdn # perform operation
fmul.d f22, f10, f31, rmm # perform operation
fmul.d f22, f10, f31, rne # perform operation
fmul.d f22, f10, f31, rtz # perform operation
fmul.d f22, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x8, 0x5f37e2299e7fbc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmul.d f8, f2, f25, dyn # perform operation
fmul.d f8, f2, f25, rdn # perform operation
fmul.d f8, f2, f25, rmm # perform operation
fmul.d f8, f2, f25, rne # perform operation
fmul.d f8, f2, f25, rtz # perform operation
fmul.d f8, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x8, 0x0e4965820e158f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fmul.d f8, f2, f30, dyn # perform operation
fmul.d f8, f2, f30, rdn # perform operation
fmul.d f8, f2, f30, rmm # perform operation
fmul.d f8, f2, f30, rne # perform operation
fmul.d f8, f2, f30, rtz # perform operation
fmul.d f8, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x18, 0x19227355e9e69a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmul.d f18, f25, f6, dyn # perform operation
fmul.d f18, f25, f6, rdn # perform operation
fmul.d f18, f25, f6, rmm # perform operation
fmul.d f18, f25, f6, rne # perform operation
fmul.d f18, f25, f6, rtz # perform operation
fmul.d f18, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x22, 0x635874092efaf1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f27, 0(x2) # load 0x8000000000000001 from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmul.d f22, f27, f11, dyn # perform operation
fmul.d f22, f27, f11, rdn # perform operation
fmul.d f22, f27, f11, rmm # perform operation
fmul.d f22, f27, f11, rne # perform operation
fmul.d f22, f27, f11, rtz # perform operation
fmul.d f22, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x11, 0xbea971990d05e880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fmul.d f11, f17, f18, dyn # perform operation
fmul.d f11, f17, f18, rdn # perform operation
fmul.d f11, f17, f18, rmm # perform operation
fmul.d f11, f17, f18, rne # perform operation
fmul.d f11, f17, f18, rtz # perform operation
fmul.d f11, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x15, 0x0a776064ec089754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
fmul.d f15, f25, f3, dyn # perform operation
fmul.d f15, f25, f3, rdn # perform operation
fmul.d f15, f25, f3, rmm # perform operation
fmul.d f15, f25, f3, rne # perform operation
fmul.d f15, f25, f3, rtz # perform operation
fmul.d f15, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x1, 0xce6340760a77833f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmul.d f1, f12, f28, dyn # perform operation
fmul.d f1, f12, f28, rdn # perform operation
fmul.d f1, f12, f28, rmm # perform operation
fmul.d f1, f12, f28, rne # perform operation
fmul.d f1, f12, f28, rtz # perform operation
fmul.d f1, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x11, 0x99d13161ba9a54ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
fmul.d f11, f7, f23, dyn # perform operation
fmul.d f11, f7, f23, rdn # perform operation
fmul.d f11, f7, f23, rmm # perform operation
fmul.d f11, f7, f23, rne # perform operation
fmul.d f11, f7, f23, rtz # perform operation
fmul.d f11, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x23, 0x516543885032525c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fmul.d f23, f21, f27, dyn # perform operation
fmul.d f23, f21, f27, rdn # perform operation
fmul.d f23, f21, f27, rmm # perform operation
fmul.d f23, f21, f27, rne # perform operation
fmul.d f23, f21, f27, rtz # perform operation
fmul.d f23, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x18, 0xc10728b443686e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f30, 0(x2) # load 0x7ff0000000000000 from memory into f30
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmul.d f18, f30, f23, dyn # perform operation
fmul.d f18, f30, f23, rdn # perform operation
fmul.d f18, f30, f23, rmm # perform operation
fmul.d f18, f30, f23, rne # perform operation
fmul.d f18, f30, f23, rtz # perform operation
fmul.d f18, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x3, 0x2e3490c5dc00f212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmul.d f3, f8, f23, dyn # perform operation
fmul.d f3, f8, f23, rdn # perform operation
fmul.d f3, f8, f23, rmm # perform operation
fmul.d f3, f8, f23, rne # perform operation
fmul.d f3, f8, f23, rtz # perform operation
fmul.d f3, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x22, 0x989e5c5e52680abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f8, 0(x2) # load 0x7ff0000000000000 from memory into f8
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmul.d f22, f8, f28, dyn # perform operation
fmul.d f22, f8, f28, rdn # perform operation
fmul.d f22, f8, f28, rmm # perform operation
fmul.d f22, f8, f28, rne # perform operation
fmul.d f22, f8, f28, rtz # perform operation
fmul.d f22, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x5, 0x36f77c1f927a4a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f18, 0(x2) # load 0xbff8000000000000 from memory into f18
fmul.d f5, f21, f18, dyn # perform operation
fmul.d f5, f21, f18, rdn # perform operation
fmul.d f5, f21, f18, rmm # perform operation
fmul.d f5, f21, f18, rne # perform operation
fmul.d f5, f21, f18, rtz # perform operation
fmul.d f5, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x6, 0x3e56c76b8e74e863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f31, 0(x2) # load 0x4000000000000000 from memory into f31
fmul.d f6, f5, f31, dyn # perform operation
fmul.d f6, f5, f31, rdn # perform operation
fmul.d f6, f5, f31, rmm # perform operation
fmul.d f6, f5, f31, rne # perform operation
fmul.d f6, f5, f31, rtz # perform operation
fmul.d f6, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x27, 0xc5b0e7858416eb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fmul.d f27, f17, f21, dyn # perform operation
fmul.d f27, f17, f21, rdn # perform operation
fmul.d f27, f17, f21, rmm # perform operation
fmul.d f27, f17, f21, rne # perform operation
fmul.d f27, f17, f21, rtz # perform operation
fmul.d f27, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x19, 0x8ae739e3a3dab21c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fmul.d f19, f29, f9, dyn # perform operation
fmul.d f19, f29, f9, rdn # perform operation
fmul.d f19, f29, f9, rmm # perform operation
fmul.d f19, f29, f9, rne # perform operation
fmul.d f19, f29, f9, rtz # perform operation
fmul.d f19, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x9, 0x1d5136e68e60acba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fmul.d f9, f11, f3, dyn # perform operation
fmul.d f9, f11, f3, rdn # perform operation
fmul.d f9, f11, f3, rmm # perform operation
fmul.d f9, f11, f3, rne # perform operation
fmul.d f9, f11, f3, rtz # perform operation
fmul.d f9, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x22, 0xc34156f6e57b1b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fmul.d f22, f20, f24, dyn # perform operation
fmul.d f22, f20, f24, rdn # perform operation
fmul.d f22, f20, f24, rmm # perform operation
fmul.d f22, f20, f24, rne # perform operation
fmul.d f22, f20, f24, rtz # perform operation
fmul.d f22, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x8, 0x967880e0525929f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
fmul.d f8, f11, f24, dyn # perform operation
fmul.d f8, f11, f24, rdn # perform operation
fmul.d f8, f11, f24, rmm # perform operation
fmul.d f8, f11, f24, rne # perform operation
fmul.d f8, f11, f24, rtz # perform operation
fmul.d f8, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x18, 0x2d68d8a700345f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fmul.d f18, f4, f13, dyn # perform operation
fmul.d f18, f4, f13, rdn # perform operation
fmul.d f18, f4, f13, rmm # perform operation
fmul.d f18, f4, f13, rne # perform operation
fmul.d f18, f4, f13, rtz # perform operation
fmul.d f18, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x11, 0x2a5ce5f2beca0fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmul.d f11, f6, f19, dyn # perform operation
fmul.d f11, f6, f19, rdn # perform operation
fmul.d f11, f6, f19, rmm # perform operation
fmul.d f11, f6, f19, rne # perform operation
fmul.d f11, f6, f19, rtz # perform operation
fmul.d f11, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x27, 0xfd68be04f9366e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fmul.d f27, f18, f13, dyn # perform operation
fmul.d f27, f18, f13, rdn # perform operation
fmul.d f27, f18, f13, rmm # perform operation
fmul.d f27, f18, f13, rne # perform operation
fmul.d f27, f18, f13, rtz # perform operation
fmul.d f27, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x15, 0x041043c69e8a574d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fmul.d f15, f1, f29, dyn # perform operation
fmul.d f15, f1, f29, rdn # perform operation
fmul.d f15, f1, f29, rmm # perform operation
fmul.d f15, f1, f29, rne # perform operation
fmul.d f15, f1, f29, rtz # perform operation
fmul.d f15, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x19, 0xccc4c8b5744a2c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f3, 0(x2) # load 0x0000000000000001 from memory into f3
fmul.d f19, f10, f3, dyn # perform operation
fmul.d f19, f10, f3, rdn # perform operation
fmul.d f19, f10, f3, rmm # perform operation
fmul.d f19, f10, f3, rne # perform operation
fmul.d f19, f10, f3, rtz # perform operation
fmul.d f19, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x26, 0xc76965d80e05093c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmul.d f26, f12, f13, dyn # perform operation
fmul.d f26, f12, f13, rdn # perform operation
fmul.d f26, f12, f13, rmm # perform operation
fmul.d f26, f12, f13, rne # perform operation
fmul.d f26, f12, f13, rtz # perform operation
fmul.d f26, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x27, 0xa4c5f6e331929877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fmul.d f27, f28, f14, dyn # perform operation
fmul.d f27, f28, f14, rdn # perform operation
fmul.d f27, f28, f14, rmm # perform operation
fmul.d f27, f28, f14, rne # perform operation
fmul.d f27, f28, f14, rtz # perform operation
fmul.d f27, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x4, 0xb50edae7501eeb6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fmul.d f4, f3, f27, dyn # perform operation
fmul.d f4, f3, f27, rdn # perform operation
fmul.d f4, f3, f27, rmm # perform operation
fmul.d f4, f3, f27, rne # perform operation
fmul.d f4, f3, f27, rtz # perform operation
fmul.d f4, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x16, 0x36c776db03f5d26a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fmul.d f16, f22, f24, dyn # perform operation
fmul.d f16, f22, f24, rdn # perform operation
fmul.d f16, f22, f24, rmm # perform operation
fmul.d f16, f22, f24, rne # perform operation
fmul.d f16, f22, f24, rtz # perform operation
fmul.d f16, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x23, 0xb3a34a98f1b6be74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fmul.d f23, f11, f21, dyn # perform operation
fmul.d f23, f11, f21, rdn # perform operation
fmul.d f23, f11, f21, rmm # perform operation
fmul.d f23, f11, f21, rne # perform operation
fmul.d f23, f11, f21, rtz # perform operation
fmul.d f23, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x14, 0x9c259f0bbcfab0be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fmul.d f14, f29, f19, dyn # perform operation
fmul.d f14, f29, f19, rdn # perform operation
fmul.d f14, f29, f19, rmm # perform operation
fmul.d f14, f29, f19, rne # perform operation
fmul.d f14, f29, f19, rtz # perform operation
fmul.d f14, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x27, 0x59a9a21d64ff63df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmul.d f27, f15, f21, dyn # perform operation
fmul.d f27, f15, f21, rdn # perform operation
fmul.d f27, f15, f21, rmm # perform operation
fmul.d f27, f15, f21, rne # perform operation
fmul.d f27, f15, f21, rtz # perform operation
fmul.d f27, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x12, 0xc62e80598c752a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fmul.d f12, f22, f5, dyn # perform operation
fmul.d f12, f22, f5, rdn # perform operation
fmul.d f12, f22, f5, rmm # perform operation
fmul.d f12, f22, f5, rne # perform operation
fmul.d f12, f22, f5, rtz # perform operation
fmul.d f12, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x11, 0x9ba63a5ca41c1d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fmul.d f11, f15, f31, dyn # perform operation
fmul.d f11, f15, f31, rdn # perform operation
fmul.d f11, f15, f31, rmm # perform operation
fmul.d f11, f15, f31, rne # perform operation
fmul.d f11, f15, f31, rtz # perform operation
fmul.d f11, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x8, 0xbda3ebdbe4f6681f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fmul.d f8, f17, f15, dyn # perform operation
fmul.d f8, f17, f15, rdn # perform operation
fmul.d f8, f17, f15, rmm # perform operation
fmul.d f8, f17, f15, rne # perform operation
fmul.d f8, f17, f15, rtz # perform operation
fmul.d f8, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x31, 0xdd79b2b97c03be1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fmul.d f31, f15, f8, dyn # perform operation
fmul.d f31, f15, f8, rdn # perform operation
fmul.d f31, f15, f8, rmm # perform operation
fmul.d f31, f15, f8, rne # perform operation
fmul.d f31, f15, f8, rtz # perform operation
fmul.d f31, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x26, 0xdb164d2434e0f957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
fmul.d f26, f12, f9, dyn # perform operation
fmul.d f26, f12, f9, rdn # perform operation
fmul.d f26, f12, f9, rmm # perform operation
fmul.d f26, f12, f9, rne # perform operation
fmul.d f26, f12, f9, rtz # perform operation
fmul.d f26, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x11, 0x974305de5f248b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
fmul.d f11, f18, f9, dyn # perform operation
fmul.d f11, f18, f9, rdn # perform operation
fmul.d f11, f18, f9, rmm # perform operation
fmul.d f11, f18, f9, rne # perform operation
fmul.d f11, f18, f9, rtz # perform operation
fmul.d f11, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x29, 0x2bc4d4c33ecd61be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fmul.d f29, f17, f13, dyn # perform operation
fmul.d f29, f17, f13, rdn # perform operation
fmul.d f29, f17, f13, rmm # perform operation
fmul.d f29, f17, f13, rne # perform operation
fmul.d f29, f17, f13, rtz # perform operation
fmul.d f29, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x8, 0xc4b9a2ca64c08152 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmul.d f8, f10, f29, dyn # perform operation
fmul.d f8, f10, f29, rdn # perform operation
fmul.d f8, f10, f29, rmm # perform operation
fmul.d f8, f10, f29, rne # perform operation
fmul.d f8, f10, f29, rtz # perform operation
fmul.d f8, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x29, 0x091ca796b54f001d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fmul.d f29, f12, f15, dyn # perform operation
fmul.d f29, f12, f15, rdn # perform operation
fmul.d f29, f12, f15, rmm # perform operation
fmul.d f29, f12, f15, rne # perform operation
fmul.d f29, f12, f15, rtz # perform operation
fmul.d f29, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x26, 0xed4ceeccebf2740c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmul.d f26, f21, f15, dyn # perform operation
fmul.d f26, f21, f15, rdn # perform operation
fmul.d f26, f21, f15, rmm # perform operation
fmul.d f26, f21, f15, rne # perform operation
fmul.d f26, f21, f15, rtz # perform operation
fmul.d f26, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x24, 0x9e79f9d30a19628f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmul.d f24, f2, f14, dyn # perform operation
fmul.d f24, f2, f14, rdn # perform operation
fmul.d f24, f2, f14, rmm # perform operation
fmul.d f24, f2, f14, rne # perform operation
fmul.d f24, f2, f14, rtz # perform operation
fmul.d f24, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x8, 0x4169ee338d4ec266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f29, 0(x2) # load 0x8010000000000000 from memory into f29
fmul.d f8, f7, f29, dyn # perform operation
fmul.d f8, f7, f29, rdn # perform operation
fmul.d f8, f7, f29, rmm # perform operation
fmul.d f8, f7, f29, rne # perform operation
fmul.d f8, f7, f29, rtz # perform operation
fmul.d f8, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x27, 0x5129d138071cfb9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmul.d f27, f5, f12, dyn # perform operation
fmul.d f27, f5, f12, rdn # perform operation
fmul.d f27, f5, f12, rmm # perform operation
fmul.d f27, f5, f12, rne # perform operation
fmul.d f27, f5, f12, rtz # perform operation
fmul.d f27, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x22, 0x7e71a85127033937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fmul.d f22, f5, f27, dyn # perform operation
fmul.d f22, f5, f27, rdn # perform operation
fmul.d f22, f5, f27, rmm # perform operation
fmul.d f22, f5, f27, rne # perform operation
fmul.d f22, f5, f27, rtz # perform operation
fmul.d f22, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x15, 0xe0bf54a6037f49f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fmul.d f15, f12, f23, dyn # perform operation
fmul.d f15, f12, f23, rdn # perform operation
fmul.d f15, f12, f23, rmm # perform operation
fmul.d f15, f12, f23, rne # perform operation
fmul.d f15, f12, f23, rtz # perform operation
fmul.d f15, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x4, 0x0e2154392b517e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmul.d f4, f15, f8, dyn # perform operation
fmul.d f4, f15, f8, rdn # perform operation
fmul.d f4, f15, f8, rmm # perform operation
fmul.d f4, f15, f8, rne # perform operation
fmul.d f4, f15, f8, rtz # perform operation
fmul.d f4, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x18, 0x04fc2b5aa059e552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fmul.d f18, f3, f11, dyn # perform operation
fmul.d f18, f3, f11, rdn # perform operation
fmul.d f18, f3, f11, rmm # perform operation
fmul.d f18, f3, f11, rne # perform operation
fmul.d f18, f3, f11, rtz # perform operation
fmul.d f18, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x29, 0xa52a47826ce7a4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
fmul.d f29, f16, f14, dyn # perform operation
fmul.d f29, f16, f14, rdn # perform operation
fmul.d f29, f16, f14, rmm # perform operation
fmul.d f29, f16, f14, rne # perform operation
fmul.d f29, f16, f14, rtz # perform operation
fmul.d f29, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x11, 0xfb7cd12622dbfd20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmul.d f11, f21, f6, dyn # perform operation
fmul.d f11, f21, f6, rdn # perform operation
fmul.d f11, f21, f6, rmm # perform operation
fmul.d f11, f21, f6, rne # perform operation
fmul.d f11, f21, f6, rtz # perform operation
fmul.d f11, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x23, 0x35df8a073bf9cfff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f15, 0(x2) # load 0x8000000000000001 from memory into f15
fmul.d f23, f26, f15, dyn # perform operation
fmul.d f23, f26, f15, rdn # perform operation
fmul.d f23, f26, f15, rmm # perform operation
fmul.d f23, f26, f15, rne # perform operation
fmul.d f23, f26, f15, rtz # perform operation
fmul.d f23, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x17, 0x386ff57f4a2529c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fmul.d f17, f14, f9, dyn # perform operation
fmul.d f17, f14, f9, rdn # perform operation
fmul.d f17, f14, f9, rmm # perform operation
fmul.d f17, f14, f9, rne # perform operation
fmul.d f17, f14, f9, rtz # perform operation
fmul.d f17, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x31, 0x7c01e73703bfb569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f21, 0(x2) # load 0xfff0000000000000 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
fmul.d f31, f21, f9, dyn # perform operation
fmul.d f31, f21, f9, rdn # perform operation
fmul.d f31, f21, f9, rmm # perform operation
fmul.d f31, f21, f9, rne # perform operation
fmul.d f31, f21, f9, rtz # perform operation
fmul.d f31, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x27, 0xd33de14360fb614a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmul.d f27, f17, f9, dyn # perform operation
fmul.d f27, f17, f9, rdn # perform operation
fmul.d f27, f17, f9, rmm # perform operation
fmul.d f27, f17, f9, rne # perform operation
fmul.d f27, f17, f9, rtz # perform operation
fmul.d f27, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x1, 0xed35fc1eb8b4def2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
fmul.d f1, f30, f18, dyn # perform operation
fmul.d f1, f30, f18, rdn # perform operation
fmul.d f1, f30, f18, rmm # perform operation
fmul.d f1, f30, f18, rne # perform operation
fmul.d f1, f30, f18, rtz # perform operation
fmul.d f1, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x24, 0xd02dffcca871e833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fmul.d f24, f28, f15, dyn # perform operation
fmul.d f24, f28, f15, rdn # perform operation
fmul.d f24, f28, f15, rmm # perform operation
fmul.d f24, f28, f15, rne # perform operation
fmul.d f24, f28, f15, rtz # perform operation
fmul.d f24, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x26, 0x55afbc9119ebb584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f9, 0(x2) # load 0xfff0000000000000 from memory into f9
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmul.d f26, f9, f28, dyn # perform operation
fmul.d f26, f9, f28, rdn # perform operation
fmul.d f26, f9, f28, rmm # perform operation
fmul.d f26, f9, f28, rne # perform operation
fmul.d f26, f9, f28, rtz # perform operation
fmul.d f26, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0x3f843e73f343405b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fmul.d f20, f31, f16, dyn # perform operation
fmul.d f20, f31, f16, rdn # perform operation
fmul.d f20, f31, f16, rmm # perform operation
fmul.d f20, f31, f16, rne # perform operation
fmul.d f20, f31, f16, rtz # perform operation
fmul.d f20, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x22, 0x65866b17a1a200ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
fmul.d f22, f24, f18, dyn # perform operation
fmul.d f22, f24, f18, rdn # perform operation
fmul.d f22, f24, f18, rmm # perform operation
fmul.d f22, f24, f18, rne # perform operation
fmul.d f22, f24, f18, rtz # perform operation
fmul.d f22, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x17, 0xefcb8f2c75fa9949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fmul.d f17, f5, f21, dyn # perform operation
fmul.d f17, f5, f21, rdn # perform operation
fmul.d f17, f5, f21, rmm # perform operation
fmul.d f17, f5, f21, rne # perform operation
fmul.d f17, f5, f21, rtz # perform operation
fmul.d f17, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x27, 0xfb0a36aa4fbc94ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f25, 0(x2) # load 0x7ff8000000000000 from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmul.d f27, f25, f3, dyn # perform operation
fmul.d f27, f25, f3, rdn # perform operation
fmul.d f27, f25, f3, rmm # perform operation
fmul.d f27, f25, f3, rne # perform operation
fmul.d f27, f25, f3, rtz # perform operation
fmul.d f27, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x4, 0xf66ac443dbc34e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fmul.d f4, f22, f2, dyn # perform operation
fmul.d f4, f22, f2, rdn # perform operation
fmul.d f4, f22, f2, rmm # perform operation
fmul.d f4, f22, f2, rne # perform operation
fmul.d f4, f22, f2, rtz # perform operation
fmul.d f4, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x1, 0x91e9eeaba315d998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fmul.d f1, f13, f16, dyn # perform operation
fmul.d f1, f13, f16, rdn # perform operation
fmul.d f1, f13, f16, rmm # perform operation
fmul.d f1, f13, f16, rne # perform operation
fmul.d f1, f13, f16, rtz # perform operation
fmul.d f1, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x28, 0x33b9377772a22d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fmul.d f28, f5, f12, dyn # perform operation
fmul.d f28, f5, f12, rdn # perform operation
fmul.d f28, f5, f12, rmm # perform operation
fmul.d f28, f5, f12, rne # perform operation
fmul.d f28, f5, f12, rtz # perform operation
fmul.d f28, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x31, 0x0b2e340f75c48916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmul.d f31, f16, f6, dyn # perform operation
fmul.d f31, f16, f6, rdn # perform operation
fmul.d f31, f16, f6, rmm # perform operation
fmul.d f31, f16, f6, rne # perform operation
fmul.d f31, f16, f6, rtz # perform operation
fmul.d f31, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x18, 0x5cbfbf5b8671d384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fmul.d f18, f7, f8, dyn # perform operation
fmul.d f18, f7, f8, rdn # perform operation
fmul.d f18, f7, f8, rmm # perform operation
fmul.d f18, f7, f8, rne # perform operation
fmul.d f18, f7, f8, rtz # perform operation
fmul.d f18, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x20, 0xe8a07a18b5411c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmul.d f20, f4, f25, dyn # perform operation
fmul.d f20, f4, f25, rdn # perform operation
fmul.d f20, f4, f25, rmm # perform operation
fmul.d f20, f4, f25, rne # perform operation
fmul.d f20, f4, f25, rtz # perform operation
fmul.d f20, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x13, 0xd7f3bcf70bc1f7be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fmul.d f13, f17, f29, dyn # perform operation
fmul.d f13, f17, f29, rdn # perform operation
fmul.d f13, f17, f29, rmm # perform operation
fmul.d f13, f17, f29, rne # perform operation
fmul.d f13, f17, f29, rtz # perform operation
fmul.d f13, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x3, 0xa9fed03c5e49d0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f14, 0(x2) # load 0x8010000000000000 from memory into f14
fmul.d f3, f1, f14, dyn # perform operation
fmul.d f3, f1, f14, rdn # perform operation
fmul.d f3, f1, f14, rmm # perform operation
fmul.d f3, f1, f14, rne # perform operation
fmul.d f3, f1, f14, rtz # perform operation
fmul.d f3, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x23, 0x3470e2c31fae1433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fmul.d f23, f16, f4, dyn # perform operation
fmul.d f23, f16, f4, rdn # perform operation
fmul.d f23, f16, f4, rmm # perform operation
fmul.d f23, f16, f4, rne # perform operation
fmul.d f23, f16, f4, rtz # perform operation
fmul.d f23, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x24, 0xe6470d75388b28f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fmul.d f24, f16, f6, dyn # perform operation
fmul.d f24, f16, f6, rdn # perform operation
fmul.d f24, f16, f6, rmm # perform operation
fmul.d f24, f16, f6, rne # perform operation
fmul.d f24, f16, f6, rtz # perform operation
fmul.d f24, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x14, 0xba4fdebf2975169f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fmul.d f14, f29, f23, dyn # perform operation
fmul.d f14, f29, f23, rdn # perform operation
fmul.d f14, f29, f23, rmm # perform operation
fmul.d f14, f29, f23, rne # perform operation
fmul.d f14, f29, f23, rtz # perform operation
fmul.d f14, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x18, 0x947550dd9e3ceeab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f26, 0(x2) # load 0x800fffffffffffff from memory into f26
fmul.d f18, f12, f26, dyn # perform operation
fmul.d f18, f12, f26, rdn # perform operation
fmul.d f18, f12, f26, rmm # perform operation
fmul.d f18, f12, f26, rne # perform operation
fmul.d f18, f12, f26, rtz # perform operation
fmul.d f18, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x24, 0x32ab00cd49e653f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fmul.d f24, f19, f15, dyn # perform operation
fmul.d f24, f19, f15, rdn # perform operation
fmul.d f24, f19, f15, rmm # perform operation
fmul.d f24, f19, f15, rne # perform operation
fmul.d f24, f19, f15, rtz # perform operation
fmul.d f24, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x23, 0x0ee7010488dab195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fmul.d f23, f8, f16, dyn # perform operation
fmul.d f23, f8, f16, rdn # perform operation
fmul.d f23, f8, f16, rmm # perform operation
fmul.d f23, f8, f16, rne # perform operation
fmul.d f23, f8, f16, rtz # perform operation
fmul.d f23, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x6, 0xe5547ee41b3969b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fmul.d f6, f9, f4, dyn # perform operation
fmul.d f6, f9, f4, rdn # perform operation
fmul.d f6, f9, f4, rmm # perform operation
fmul.d f6, f9, f4, rne # perform operation
fmul.d f6, f9, f4, rtz # perform operation
fmul.d f6, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x3, 0x1a8fcd49b7bf66e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fmul.d f3, f4, f24, dyn # perform operation
fmul.d f3, f4, f24, rdn # perform operation
fmul.d f3, f4, f24, rmm # perform operation
fmul.d f3, f4, f24, rne # perform operation
fmul.d f3, f4, f24, rtz # perform operation
fmul.d f3, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x30, 0x86baf17683eea942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fmul.d f30, f8, f6, dyn # perform operation
fmul.d f30, f8, f6, rdn # perform operation
fmul.d f30, f8, f6, rmm # perform operation
fmul.d f30, f8, f6, rne # perform operation
fmul.d f30, f8, f6, rtz # perform operation
fmul.d f30, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x17, 0xe86429ff97830997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmul.d f17, f16, f25, dyn # perform operation
fmul.d f17, f16, f25, rdn # perform operation
fmul.d f17, f16, f25, rmm # perform operation
fmul.d f17, f16, f25, rne # perform operation
fmul.d f17, f16, f25, rtz # perform operation
fmul.d f17, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x17, 0xe7668886c6550be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
fmul.d f17, f23, f3, dyn # perform operation
fmul.d f17, f23, f3, rdn # perform operation
fmul.d f17, f23, f3, rmm # perform operation
fmul.d f17, f23, f3, rne # perform operation
fmul.d f17, f23, f3, rtz # perform operation
fmul.d f17, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x24, 0xaf0b9c09502fecc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fmul.d f24, f12, f1, dyn # perform operation
fmul.d f24, f12, f1, rdn # perform operation
fmul.d f24, f12, f1, rmm # perform operation
fmul.d f24, f12, f1, rne # perform operation
fmul.d f24, f12, f1, rtz # perform operation
fmul.d f24, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x17, 0x32e9944209e4b81d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmul.d f17, f28, f31, dyn # perform operation
fmul.d f17, f28, f31, rdn # perform operation
fmul.d f17, f28, f31, rmm # perform operation
fmul.d f17, f28, f31, rne # perform operation
fmul.d f17, f28, f31, rtz # perform operation
fmul.d f17, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x8, 0x9923269e7260928f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fmul.d f8, f30, f16, dyn # perform operation
fmul.d f8, f30, f16, rdn # perform operation
fmul.d f8, f30, f16, rmm # perform operation
fmul.d f8, f30, f16, rne # perform operation
fmul.d f8, f30, f16, rtz # perform operation
fmul.d f8, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0xb7301e6524ae4b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f15, 0(x2) # load 0x7ff8000000000000 from memory into f15
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fmul.d f20, f15, f26, dyn # perform operation
fmul.d f20, f15, f26, rdn # perform operation
fmul.d f20, f15, f26, rmm # perform operation
fmul.d f20, f15, f26, rne # perform operation
fmul.d f20, f15, f26, rtz # perform operation
fmul.d f20, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x25, 0x3c88b9dca1fa7f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fmul.d f25, f8, f31, dyn # perform operation
fmul.d f25, f8, f31, rdn # perform operation
fmul.d f25, f8, f31, rmm # perform operation
fmul.d f25, f8, f31, rne # perform operation
fmul.d f25, f8, f31, rtz # perform operation
fmul.d f25, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x29, 0xcc09b764526ff469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fmul.d f29, f28, f30, dyn # perform operation
fmul.d f29, f28, f30, rdn # perform operation
fmul.d f29, f28, f30, rmm # perform operation
fmul.d f29, f28, f30, rne # perform operation
fmul.d f29, f28, f30, rtz # perform operation
fmul.d f29, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x8, 0x708b3a321a835234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmul.d f8, f25, f18, dyn # perform operation
fmul.d f8, f25, f18, rdn # perform operation
fmul.d f8, f25, f18, rmm # perform operation
fmul.d f8, f25, f18, rne # perform operation
fmul.d f8, f25, f18, rtz # perform operation
fmul.d f8, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x23, 0x69b533e82c2d3626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmul.d f23, f7, f31, dyn # perform operation
fmul.d f23, f7, f31, rdn # perform operation
fmul.d f23, f7, f31, rmm # perform operation
fmul.d f23, f7, f31, rne # perform operation
fmul.d f23, f7, f31, rtz # perform operation
fmul.d f23, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x9, 0xebf0410f41dd5714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmul.d f9, f29, f28, dyn # perform operation
fmul.d f9, f29, f28, rdn # perform operation
fmul.d f9, f29, f28, rmm # perform operation
fmul.d f9, f29, f28, rne # perform operation
fmul.d f9, f29, f28, rtz # perform operation
fmul.d f9, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x13, 0x1e366266d570ecc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fmul.d f13, f12, f16, dyn # perform operation
fmul.d f13, f12, f16, rdn # perform operation
fmul.d f13, f12, f16, rmm # perform operation
fmul.d f13, f12, f16, rne # perform operation
fmul.d f13, f12, f16, rtz # perform operation
fmul.d f13, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x12, 0x92ef60ad694e9e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmul.d f12, f11, f3, dyn # perform operation
fmul.d f12, f11, f3, rdn # perform operation
fmul.d f12, f11, f3, rmm # perform operation
fmul.d f12, f11, f3, rne # perform operation
fmul.d f12, f11, f3, rtz # perform operation
fmul.d f12, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x31, 0xeb2fa921d37f563c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fmul.d f31, f18, f11, dyn # perform operation
fmul.d f31, f18, f11, rdn # perform operation
fmul.d f31, f18, f11, rmm # perform operation
fmul.d f31, f18, f11, rne # perform operation
fmul.d f31, f18, f11, rtz # perform operation
fmul.d f31, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x6, 0xc9ab38dffa312afa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
fmul.d f6, f19, f9, dyn # perform operation
fmul.d f6, f19, f9, rdn # perform operation
fmul.d f6, f19, f9, rmm # perform operation
fmul.d f6, f19, f9, rne # perform operation
fmul.d f6, f19, f9, rtz # perform operation
fmul.d f6, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x30, 0x941f355f1b58ecf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fmul.d f30, f16, f4, dyn # perform operation
fmul.d f30, f16, f4, rdn # perform operation
fmul.d f30, f16, f4, rmm # perform operation
fmul.d f30, f16, f4, rne # perform operation
fmul.d f30, f16, f4, rtz # perform operation
fmul.d f30, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x30, 0xe1b3e171d713f814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f19, 0(x2) # load 0x8010000000000000 from memory into f19
fmul.d f30, f25, f19, dyn # perform operation
fmul.d f30, f25, f19, rdn # perform operation
fmul.d f30, f25, f19, rmm # perform operation
fmul.d f30, f25, f19, rne # perform operation
fmul.d f30, f25, f19, rtz # perform operation
fmul.d f30, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x15, 0x21d45d82adff25cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmul.d f15, f28, f25, dyn # perform operation
fmul.d f15, f28, f25, rdn # perform operation
fmul.d f15, f28, f25, rmm # perform operation
fmul.d f15, f28, f25, rne # perform operation
fmul.d f15, f28, f25, rtz # perform operation
fmul.d f15, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x10, 0x79e7429038e4bed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fmul.d f10, f28, f22, dyn # perform operation
fmul.d f10, f28, f22, rdn # perform operation
fmul.d f10, f28, f22, rmm # perform operation
fmul.d f10, f28, f22, rne # perform operation
fmul.d f10, f28, f22, rtz # perform operation
fmul.d f10, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x10, 0x3b1e0c395c8dd166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fmul.d f10, f24, f15, dyn # perform operation
fmul.d f10, f24, f15, rdn # perform operation
fmul.d f10, f24, f15, rmm # perform operation
fmul.d f10, f24, f15, rne # perform operation
fmul.d f10, f24, f15, rtz # perform operation
fmul.d f10, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x4, 0x176092951e329077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
fmul.d f4, f13, f14, dyn # perform operation
fmul.d f4, f13, f14, rdn # perform operation
fmul.d f4, f13, f14, rmm # perform operation
fmul.d f4, f13, f14, rne # perform operation
fmul.d f4, f13, f14, rtz # perform operation
fmul.d f4, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f4, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f4, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f4, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f4, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f4, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x16, 0xcf738ffb65a03bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fmul.d f16, f9, f26, dyn # perform operation
fmul.d f16, f9, f26, rdn # perform operation
fmul.d f16, f9, f26, rmm # perform operation
fmul.d f16, f9, f26, rne # perform operation
fmul.d f16, f9, f26, rtz # perform operation
fmul.d f16, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x15, 0x6ed33358f4f82c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f18, 0(x2) # load 0x7fffffffffffffff from memory into f18
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fmul.d f15, f18, f17, dyn # perform operation
fmul.d f15, f18, f17, rdn # perform operation
fmul.d f15, f18, f17, rmm # perform operation
fmul.d f15, f18, f17, rne # perform operation
fmul.d f15, f18, f17, rtz # perform operation
fmul.d f15, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x28, 0x16cf0e088046d917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fmul.d f28, f1, f29, dyn # perform operation
fmul.d f28, f1, f29, rdn # perform operation
fmul.d f28, f1, f29, rmm # perform operation
fmul.d f28, f1, f29, rne # perform operation
fmul.d f28, f1, f29, rtz # perform operation
fmul.d f28, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x26, 0x7ac6b120e1741f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fmul.d f26, f28, f8, dyn # perform operation
fmul.d f26, f28, f8, rdn # perform operation
fmul.d f26, f28, f8, rmm # perform operation
fmul.d f26, f28, f8, rne # perform operation
fmul.d f26, f28, f8, rtz # perform operation
fmul.d f26, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x8, 0x8a7a7ffa47343785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fmul.d f8, f12, f20, dyn # perform operation
fmul.d f8, f12, f20, rdn # perform operation
fmul.d f8, f12, f20, rmm # perform operation
fmul.d f8, f12, f20, rne # perform operation
fmul.d f8, f12, f20, rtz # perform operation
fmul.d f8, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x21, 0xc1c41acd86bbf7ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fmul.d f21, f15, f24, dyn # perform operation
fmul.d f21, f15, f24, rdn # perform operation
fmul.d f21, f15, f24, rmm # perform operation
fmul.d f21, f15, f24, rne # perform operation
fmul.d f21, f15, f24, rtz # perform operation
fmul.d f21, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x25, 0x7298a07d99e4fe7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fmul.d f25, f2, f22, dyn # perform operation
fmul.d f25, f2, f22, rdn # perform operation
fmul.d f25, f2, f22, rmm # perform operation
fmul.d f25, f2, f22, rne # perform operation
fmul.d f25, f2, f22, rtz # perform operation
fmul.d f25, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x3, 0x16558fad3de0d0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmul.d f3, f23, f17, dyn # perform operation
fmul.d f3, f23, f17, rdn # perform operation
fmul.d f3, f23, f17, rmm # perform operation
fmul.d f3, f23, f17, rne # perform operation
fmul.d f3, f23, f17, rtz # perform operation
fmul.d f3, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x8, 0xb035e696502a5b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
fmul.d f8, f29, f2, dyn # perform operation
fmul.d f8, f29, f2, rdn # perform operation
fmul.d f8, f29, f2, rmm # perform operation
fmul.d f8, f29, f2, rne # perform operation
fmul.d f8, f29, f2, rtz # perform operation
fmul.d f8, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x30, 0x5942cd12d3747fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f1, 0(x2) # load 0x7ff7ffffffffffff from memory into f1
fmul.d f30, f12, f1, dyn # perform operation
fmul.d f30, f12, f1, rdn # perform operation
fmul.d f30, f12, f1, rmm # perform operation
fmul.d f30, f12, f1, rne # perform operation
fmul.d f30, f12, f1, rtz # perform operation
fmul.d f30, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x3, 0xd38e401776f1fb33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fmul.d f3, f28, f22, dyn # perform operation
fmul.d f3, f28, f22, rdn # perform operation
fmul.d f3, f28, f22, rmm # perform operation
fmul.d f3, f28, f22, rne # perform operation
fmul.d f3, f28, f22, rtz # perform operation
fmul.d f3, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x13, 0xb389b75dd6de9686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fmul.d f13, f11, f19, dyn # perform operation
fmul.d f13, f11, f19, rdn # perform operation
fmul.d f13, f11, f19, rmm # perform operation
fmul.d f13, f11, f19, rne # perform operation
fmul.d f13, f11, f19, rtz # perform operation
fmul.d f13, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x3, 0x7f4e75aa0738250b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fmul.d f3, f9, f24, dyn # perform operation
fmul.d f3, f9, f24, rdn # perform operation
fmul.d f3, f9, f24, rmm # perform operation
fmul.d f3, f9, f24, rne # perform operation
fmul.d f3, f9, f24, rtz # perform operation
fmul.d f3, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x12, 0x486222ab82913e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
fmul.d f12, f29, f13, dyn # perform operation
fmul.d f12, f29, f13, rdn # perform operation
fmul.d f12, f29, f13, rmm # perform operation
fmul.d f12, f29, f13, rne # perform operation
fmul.d f12, f29, f13, rtz # perform operation
fmul.d f12, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x6, 0xb5399e100de12596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fmul.d f6, f11, f10, dyn # perform operation
fmul.d f6, f11, f10, rdn # perform operation
fmul.d f6, f11, f10, rmm # perform operation
fmul.d f6, f11, f10, rne # perform operation
fmul.d f6, f11, f10, rtz # perform operation
fmul.d f6, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x10, 0xa7cd38b9ec089a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
fmul.d f10, f25, f18, dyn # perform operation
fmul.d f10, f25, f18, rdn # perform operation
fmul.d f10, f25, f18, rmm # perform operation
fmul.d f10, f25, f18, rne # perform operation
fmul.d f10, f25, f18, rtz # perform operation
fmul.d f10, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x23, 0x5d310bf2d2329a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fmul.d f23, f2, f26, dyn # perform operation
fmul.d f23, f2, f26, rdn # perform operation
fmul.d f23, f2, f26, rmm # perform operation
fmul.d f23, f2, f26, rne # perform operation
fmul.d f23, f2, f26, rtz # perform operation
fmul.d f23, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x26, 0x6d13b9677fe9fbcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
fmul.d f26, f13, f1, dyn # perform operation
fmul.d f26, f13, f1, rdn # perform operation
fmul.d f26, f13, f1, rmm # perform operation
fmul.d f26, f13, f1, rne # perform operation
fmul.d f26, f13, f1, rtz # perform operation
fmul.d f26, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x21, 0xab697952920b5864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fmul.d f21, f30, f23, dyn # perform operation
fmul.d f21, f30, f23, rdn # perform operation
fmul.d f21, f30, f23, rmm # perform operation
fmul.d f21, f30, f23, rne # perform operation
fmul.d f21, f30, f23, rtz # perform operation
fmul.d f21, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x25, 0x63cf0162642c66c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmul.d f25, f28, f24, dyn # perform operation
fmul.d f25, f28, f24, rdn # perform operation
fmul.d f25, f28, f24, rmm # perform operation
fmul.d f25, f28, f24, rne # perform operation
fmul.d f25, f28, f24, rtz # perform operation
fmul.d f25, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x6, 0x486c8ed21b887967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f22, 0(x2) # load 0x7ff0000000000001 from memory into f22
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmul.d f6, f22, f7, dyn # perform operation
fmul.d f6, f22, f7, rdn # perform operation
fmul.d f6, f22, f7, rmm # perform operation
fmul.d f6, f22, f7, rne # perform operation
fmul.d f6, f22, f7, rtz # perform operation
fmul.d f6, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x11, 0xce9170022c55a110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
fmul.d f11, f25, f24, dyn # perform operation
fmul.d f11, f25, f24, rdn # perform operation
fmul.d f11, f25, f24, rmm # perform operation
fmul.d f11, f25, f24, rne # perform operation
fmul.d f11, f25, f24, rtz # perform operation
fmul.d f11, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x25, 0xa36edc94d764a81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fmul.d f25, f27, f16, dyn # perform operation
fmul.d f25, f27, f16, rdn # perform operation
fmul.d f25, f27, f16, rmm # perform operation
fmul.d f25, f27, f16, rne # perform operation
fmul.d f25, f27, f16, rtz # perform operation
fmul.d f25, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x2, 0xda41f400689699bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmul.d f2, f5, f19, dyn # perform operation
fmul.d f2, f5, f19, rdn # perform operation
fmul.d f2, f5, f19, rmm # perform operation
fmul.d f2, f5, f19, rne # perform operation
fmul.d f2, f5, f19, rtz # perform operation
fmul.d f2, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x7, 0x3ad6bd3eaf24e8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f30, 0(x2) # load 0x7ff0000000000001 from memory into f30
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fmul.d f7, f30, f27, dyn # perform operation
fmul.d f7, f30, f27, rdn # perform operation
fmul.d f7, f30, f27, rmm # perform operation
fmul.d f7, f30, f27, rne # perform operation
fmul.d f7, f30, f27, rtz # perform operation
fmul.d f7, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x24, 0xca3988a12dce083d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
fmul.d f24, f15, f7, dyn # perform operation
fmul.d f24, f15, f7, rdn # perform operation
fmul.d f24, f15, f7, rmm # perform operation
fmul.d f24, f15, f7, rne # perform operation
fmul.d f24, f15, f7, rtz # perform operation
fmul.d f24, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x28, 0xe5745f13d0d5c8d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f13, 0(x2) # load 0x0008000000000000 from memory into f13
fmul.d f28, f19, f13, dyn # perform operation
fmul.d f28, f19, f13, rdn # perform operation
fmul.d f28, f19, f13, rmm # perform operation
fmul.d f28, f19, f13, rne # perform operation
fmul.d f28, f19, f13, rtz # perform operation
fmul.d f28, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x15, 0xd9918f9bd170a2c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmul.d f15, f27, f26, dyn # perform operation
fmul.d f15, f27, f26, rdn # perform operation
fmul.d f15, f27, f26, rmm # perform operation
fmul.d f15, f27, f26, rne # perform operation
fmul.d f15, f27, f26, rtz # perform operation
fmul.d f15, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x18, 0x4106800f5f1214a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f25, 0(x2) # load 0x0000000000000001 from memory into f25
fmul.d f18, f28, f25, dyn # perform operation
fmul.d f18, f28, f25, rdn # perform operation
fmul.d f18, f28, f25, rmm # perform operation
fmul.d f18, f28, f25, rne # perform operation
fmul.d f18, f28, f25, rtz # perform operation
fmul.d f18, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x27, 0xb2b45100861ea719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fmul.d f27, f17, f18, dyn # perform operation
fmul.d f27, f17, f18, rdn # perform operation
fmul.d f27, f17, f18, rmm # perform operation
fmul.d f27, f17, f18, rne # perform operation
fmul.d f27, f17, f18, rtz # perform operation
fmul.d f27, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x12, 0x0d8aa652c61db440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmul.d f12, f9, f22, dyn # perform operation
fmul.d f12, f9, f22, rdn # perform operation
fmul.d f12, f9, f22, rmm # perform operation
fmul.d f12, f9, f22, rne # perform operation
fmul.d f12, f9, f22, rtz # perform operation
fmul.d f12, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x17, 0x3ede01f578eee1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f21, 0(x2) # load 0x7ff0000000000001 from memory into f21
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmul.d f17, f21, f13, dyn # perform operation
fmul.d f17, f21, f13, rdn # perform operation
fmul.d f17, f21, f13, rmm # perform operation
fmul.d f17, f21, f13, rne # perform operation
fmul.d f17, f21, f13, rtz # perform operation
fmul.d f17, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x30, 0x0f6d15a5a355253a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
fmul.d f30, f27, f14, dyn # perform operation
fmul.d f30, f27, f14, rdn # perform operation
fmul.d f30, f27, f14, rmm # perform operation
fmul.d f30, f27, f14, rne # perform operation
fmul.d f30, f27, f14, rtz # perform operation
fmul.d f30, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x20, 0x73777aa450b45f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fmul.d f20, f13, f12, dyn # perform operation
fmul.d f20, f13, f12, rdn # perform operation
fmul.d f20, f13, f12, rmm # perform operation
fmul.d f20, f13, f12, rne # perform operation
fmul.d f20, f13, f12, rtz # perform operation
fmul.d f20, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x12, 0xf8c0c2bcab74b29c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmul.d f12, f18, f29, dyn # perform operation
fmul.d f12, f18, f29, rdn # perform operation
fmul.d f12, f18, f29, rmm # perform operation
fmul.d f12, f18, f29, rne # perform operation
fmul.d f12, f18, f29, rtz # perform operation
fmul.d f12, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x8, 0xd743faef96f16f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fmul.d f8, f19, f24, dyn # perform operation
fmul.d f8, f19, f24, rdn # perform operation
fmul.d f8, f19, f24, rmm # perform operation
fmul.d f8, f19, f24, rne # perform operation
fmul.d f8, f19, f24, rtz # perform operation
fmul.d f8, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x14, 0x59e780ec15246e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fmul.d f14, f29, f21, dyn # perform operation
fmul.d f14, f29, f21, rdn # perform operation
fmul.d f14, f29, f21, rmm # perform operation
fmul.d f14, f29, f21, rne # perform operation
fmul.d f14, f29, f21, rtz # perform operation
fmul.d f14, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x16, 0xc0cafd4cdbc35661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fmul.d f16, f28, f21, dyn # perform operation
fmul.d f16, f28, f21, rdn # perform operation
fmul.d f16, f28, f21, rmm # perform operation
fmul.d f16, f28, f21, rne # perform operation
fmul.d f16, f28, f21, rtz # perform operation
fmul.d f16, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x11, 0x961ebf8d007f5b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
fmul.d f11, f21, f13, dyn # perform operation
fmul.d f11, f21, f13, rdn # perform operation
fmul.d f11, f21, f13, rmm # perform operation
fmul.d f11, f21, f13, rne # perform operation
fmul.d f11, f21, f13, rtz # perform operation
fmul.d f11, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x9, 0xa57097bc36190335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
fmul.d f9, f21, f8, dyn # perform operation
fmul.d f9, f21, f8, rdn # perform operation
fmul.d f9, f21, f8, rmm # perform operation
fmul.d f9, f21, f8, rne # perform operation
fmul.d f9, f21, f8, rtz # perform operation
fmul.d f9, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x10, 0x7af79c87701cae22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f11, 0(x2) # load 0x7ff7ffffffffffff from memory into f11
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
fmul.d f10, f11, f30, dyn # perform operation
fmul.d f10, f11, f30, rdn # perform operation
fmul.d f10, f11, f30, rmm # perform operation
fmul.d f10, f11, f30, rne # perform operation
fmul.d f10, f11, f30, rtz # perform operation
fmul.d f10, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x6, 0x72d85f5acba33c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f7, 0(x2) # load 0x7ff7ffffffffffff from memory into f7
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fmul.d f6, f7, f27, dyn # perform operation
fmul.d f6, f7, f27, rdn # perform operation
fmul.d f6, f7, f27, rmm # perform operation
fmul.d f6, f7, f27, rne # perform operation
fmul.d f6, f7, f27, rtz # perform operation
fmul.d f6, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x14, 0x3e99c945f0022be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
fmul.d f14, f28, f8, dyn # perform operation
fmul.d f14, f28, f8, rdn # perform operation
fmul.d f14, f28, f8, rmm # perform operation
fmul.d f14, f28, f8, rne # perform operation
fmul.d f14, f28, f8, rtz # perform operation
fmul.d f14, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x5, 0x95d5355eeb0f8be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fmul.d f5, f12, f4, dyn # perform operation
fmul.d f5, f12, f4, rdn # perform operation
fmul.d f5, f12, f4, rmm # perform operation
fmul.d f5, f12, f4, rne # perform operation
fmul.d f5, f12, f4, rtz # perform operation
fmul.d f5, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x21, 0x912b1bb162a0da68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
fmul.d f21, f30, f8, dyn # perform operation
fmul.d f21, f30, f8, rdn # perform operation
fmul.d f21, f30, f8, rmm # perform operation
fmul.d f21, f30, f8, rne # perform operation
fmul.d f21, f30, f8, rtz # perform operation
fmul.d f21, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x18, 0x56ca46d406abfcac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fmul.d f18, f25, f13, dyn # perform operation
fmul.d f18, f25, f13, rdn # perform operation
fmul.d f18, f25, f13, rmm # perform operation
fmul.d f18, f25, f13, rne # perform operation
fmul.d f18, f25, f13, rtz # perform operation
fmul.d f18, f25, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f25, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f25, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f25, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f25, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x21, 0x275f7bd929fb245c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmul.d f21, f16, f18, dyn # perform operation
fmul.d f21, f16, f18, rdn # perform operation
fmul.d f21, f16, f18, rmm # perform operation
fmul.d f21, f16, f18, rne # perform operation
fmul.d f21, f16, f18, rtz # perform operation
fmul.d f21, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x14, 0x4b556ca633716d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fmul.d f14, f13, f28, dyn # perform operation
fmul.d f14, f13, f28, rdn # perform operation
fmul.d f14, f13, f28, rmm # perform operation
fmul.d f14, f13, f28, rne # perform operation
fmul.d f14, f13, f28, rtz # perform operation
fmul.d f14, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x28, 0x17698dfc1c75a9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f24, 0(x2) # load 0x7fefffffffffffff from memory into f24
fmul.d f28, f9, f24, dyn # perform operation
fmul.d f28, f9, f24, rdn # perform operation
fmul.d f28, f9, f24, rmm # perform operation
fmul.d f28, f9, f24, rne # perform operation
fmul.d f28, f9, f24, rtz # perform operation
fmul.d f28, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f28, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f28, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f28, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f28, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f28, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x2, 0xe02a1ec6f0ee5335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f14, 0(x2) # load 0x7ff7ffffffffffff from memory into f14
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fmul.d f2, f14, f10, dyn # perform operation
fmul.d f2, f14, f10, rdn # perform operation
fmul.d f2, f14, f10, rmm # perform operation
fmul.d f2, f14, f10, rne # perform operation
fmul.d f2, f14, f10, rtz # perform operation
fmul.d f2, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x27, 0x87b6ebbd70ea2ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fmul.d f27, f3, f26, dyn # perform operation
fmul.d f27, f3, f26, rdn # perform operation
fmul.d f27, f3, f26, rmm # perform operation
fmul.d f27, f3, f26, rne # perform operation
fmul.d f27, f3, f26, rtz # perform operation
fmul.d f27, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x31, 0xc544f55241e02c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmul.d f31, f3, f8, dyn # perform operation
fmul.d f31, f3, f8, rdn # perform operation
fmul.d f31, f3, f8, rmm # perform operation
fmul.d f31, f3, f8, rne # perform operation
fmul.d f31, f3, f8, rtz # perform operation
fmul.d f31, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x13, 0x2e39b4be91031534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fmul.d f13, f20, f15, dyn # perform operation
fmul.d f13, f20, f15, rdn # perform operation
fmul.d f13, f20, f15, rmm # perform operation
fmul.d f13, f20, f15, rne # perform operation
fmul.d f13, f20, f15, rtz # perform operation
fmul.d f13, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x13, 0x8d4581cc9312275a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fmul.d f13, f6, f10, dyn # perform operation
fmul.d f13, f6, f10, rdn # perform operation
fmul.d f13, f6, f10, rmm # perform operation
fmul.d f13, f6, f10, rne # perform operation
fmul.d f13, f6, f10, rtz # perform operation
fmul.d f13, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x11, 0xc78006028ae62004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f26, 0(x2) # load 0x7ff7ffffffffffff from memory into f26
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f30, 0(x2) # load 0x0000000000000001 from memory into f30
fmul.d f11, f26, f30, dyn # perform operation
fmul.d f11, f26, f30, rdn # perform operation
fmul.d f11, f26, f30, rmm # perform operation
fmul.d f11, f26, f30, rne # perform operation
fmul.d f11, f26, f30, rtz # perform operation
fmul.d f11, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x20, 0x83948c6d4d73742c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f6, 0(x2) # load 0x8000000000000001 from memory into f6
fmul.d f20, f9, f6, dyn # perform operation
fmul.d f20, f9, f6, rdn # perform operation
fmul.d f20, f9, f6, rmm # perform operation
fmul.d f20, f9, f6, rne # perform operation
fmul.d f20, f9, f6, rtz # perform operation
fmul.d f20, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x5, 0xc920700923fa51c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmul.d f5, f25, f11, dyn # perform operation
fmul.d f5, f25, f11, rdn # perform operation
fmul.d f5, f25, f11, rmm # perform operation
fmul.d f5, f25, f11, rne # perform operation
fmul.d f5, f25, f11, rtz # perform operation
fmul.d f5, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x9, 0xe525f977ec6cba87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f5, 0(x2) # load 0x7ff7ffffffffffff from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fmul.d f9, f5, f11, dyn # perform operation
fmul.d f9, f5, f11, rdn # perform operation
fmul.d f9, f5, f11, rmm # perform operation
fmul.d f9, f5, f11, rne # perform operation
fmul.d f9, f5, f11, rtz # perform operation
fmul.d f9, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x30, 0x64fe3154fe5eca46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fmul.d f30, f13, f12, dyn # perform operation
fmul.d f30, f13, f12, rdn # perform operation
fmul.d f30, f13, f12, rmm # perform operation
fmul.d f30, f13, f12, rne # perform operation
fmul.d f30, f13, f12, rtz # perform operation
fmul.d f30, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x26, 0xee8af85bd9fc0235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f8, 0(x2) # load 0x7ff7ffffffffffff from memory into f8
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
fmul.d f26, f8, f14, dyn # perform operation
fmul.d f26, f8, f14, rdn # perform operation
fmul.d f26, f8, f14, rmm # perform operation
fmul.d f26, f8, f14, rne # perform operation
fmul.d f26, f8, f14, rtz # perform operation
fmul.d f26, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x8, 0x131e4b4e05389a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
fmul.d f8, f20, f14, dyn # perform operation
fmul.d f8, f20, f14, rdn # perform operation
fmul.d f8, f20, f14, rmm # perform operation
fmul.d f8, f20, f14, rne # perform operation
fmul.d f8, f20, f14, rtz # perform operation
fmul.d f8, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x26, 0x25b99943ab17cc9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
fmul.d f26, f28, f21, dyn # perform operation
fmul.d f26, f28, f21, rdn # perform operation
fmul.d f26, f28, f21, rmm # perform operation
fmul.d f26, f28, f21, rne # perform operation
fmul.d f26, f28, f21, rtz # perform operation
fmul.d f26, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x18, 0x17fc60c0c1840c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fmul.d f18, f25, f16, dyn # perform operation
fmul.d f18, f25, f16, rdn # perform operation
fmul.d f18, f25, f16, rmm # perform operation
fmul.d f18, f25, f16, rne # perform operation
fmul.d f18, f25, f16, rtz # perform operation
fmul.d f18, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f18, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f18, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f18, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f18, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f18, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x27, 0xd80389fa2efb9802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fmul.d f27, f2, f12, dyn # perform operation
fmul.d f27, f2, f12, rdn # perform operation
fmul.d f27, f2, f12, rmm # perform operation
fmul.d f27, f2, f12, rne # perform operation
fmul.d f27, f2, f12, rtz # perform operation
fmul.d f27, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x19, 0x2119be802c8b24e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fmul.d f19, f16, f12, dyn # perform operation
fmul.d f19, f16, f12, rdn # perform operation
fmul.d f19, f16, f12, rmm # perform operation
fmul.d f19, f16, f12, rne # perform operation
fmul.d f19, f16, f12, rtz # perform operation
fmul.d f19, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x17, 0xd952e65c527f8c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fmul.d f17, f22, f25, dyn # perform operation
fmul.d f17, f22, f25, rdn # perform operation
fmul.d f17, f22, f25, rmm # perform operation
fmul.d f17, f22, f25, rne # perform operation
fmul.d f17, f22, f25, rtz # perform operation
fmul.d f17, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f17, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f17, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f17, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f17, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f17, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x16, 0xc7aff43788783c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fmul.d f16, f12, f21, dyn # perform operation
fmul.d f16, f12, f21, rdn # perform operation
fmul.d f16, f12, f21, rmm # perform operation
fmul.d f16, f12, f21, rne # perform operation
fmul.d f16, f12, f21, rtz # perform operation
fmul.d f16, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x7, 0x96c1adca7963863e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fmul.d f7, f27, f24, dyn # perform operation
fmul.d f7, f27, f24, rdn # perform operation
fmul.d f7, f27, f24, rmm # perform operation
fmul.d f7, f27, f24, rne # perform operation
fmul.d f7, f27, f24, rtz # perform operation
fmul.d f7, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x9, 0x09d84500950d61cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmul.d f9, f16, f2, dyn # perform operation
fmul.d f9, f16, f2, rdn # perform operation
fmul.d f9, f16, f2, rmm # perform operation
fmul.d f9, f16, f2, rne # perform operation
fmul.d f9, f16, f2, rtz # perform operation
fmul.d f9, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f9, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f9, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f9, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f9, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f9, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x2, 0xa45252b9fec76822 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmul.d f2, f6, f29, dyn # perform operation
fmul.d f2, f6, f29, rdn # perform operation
fmul.d f2, f6, f29, rmm # perform operation
fmul.d f2, f6, f29, rne # perform operation
fmul.d f2, f6, f29, rtz # perform operation
fmul.d f2, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x13, 0xe0dc21502e52144f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fmul.d f13, f10, f4, dyn # perform operation
fmul.d f13, f10, f4, rdn # perform operation
fmul.d f13, f10, f4, rmm # perform operation
fmul.d f13, f10, f4, rne # perform operation
fmul.d f13, f10, f4, rtz # perform operation
fmul.d f13, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f13, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f13, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f13, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f13, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f13, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x20, 0x70dbf91f116fa18c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f12, 0(x2) # load 0xc000000000000000 from memory into f12
fmul.d f20, f1, f12, dyn # perform operation
fmul.d f20, f1, f12, rdn # perform operation
fmul.d f20, f1, f12, rmm # perform operation
fmul.d f20, f1, f12, rne # perform operation
fmul.d f20, f1, f12, rtz # perform operation
fmul.d f20, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x25, 0x22411fc429683e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
fmul.d f25, f23, f30, dyn # perform operation
fmul.d f25, f23, f30, rdn # perform operation
fmul.d f25, f23, f30, rmm # perform operation
fmul.d f25, f23, f30, rne # perform operation
fmul.d f25, f23, f30, rtz # perform operation
fmul.d f25, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x6, 0xf57551b421eb302a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmul.d f6, f29, f4, dyn # perform operation
fmul.d f6, f29, f4, rdn # perform operation
fmul.d f6, f29, f4, rmm # perform operation
fmul.d f6, f29, f4, rne # perform operation
fmul.d f6, f29, f4, rtz # perform operation
fmul.d f6, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x21, 0x1be562874c4ca0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fmul.d f21, f25, f26, dyn # perform operation
fmul.d f21, f25, f26, rdn # perform operation
fmul.d f21, f25, f26, rmm # perform operation
fmul.d f21, f25, f26, rne # perform operation
fmul.d f21, f25, f26, rtz # perform operation
fmul.d f21, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x26, 0xd76a97ec6e9df9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fmul.d f26, f30, f17, dyn # perform operation
fmul.d f26, f30, f17, rdn # perform operation
fmul.d f26, f30, f17, rmm # perform operation
fmul.d f26, f30, f17, rne # perform operation
fmul.d f26, f30, f17, rtz # perform operation
fmul.d f26, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x11, 0x4b20b7e8c973e275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fmul.d f11, f6, f21, dyn # perform operation
fmul.d f11, f6, f21, rdn # perform operation
fmul.d f11, f6, f21, rmm # perform operation
fmul.d f11, f6, f21, rne # perform operation
fmul.d f11, f6, f21, rtz # perform operation
fmul.d f11, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f11, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f11, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x21, 0xf92661bcf70f858d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fmul.d f21, f28, f9, dyn # perform operation
fmul.d f21, f28, f9, rdn # perform operation
fmul.d f21, f28, f9, rmm # perform operation
fmul.d f21, f28, f9, rne # perform operation
fmul.d f21, f28, f9, rtz # perform operation
fmul.d f21, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x19, 0xcae10b395d2fab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fmul.d f19, f10, f27, dyn # perform operation
fmul.d f19, f10, f27, rdn # perform operation
fmul.d f19, f10, f27, rmm # perform operation
fmul.d f19, f10, f27, rne # perform operation
fmul.d f19, f10, f27, rtz # perform operation
fmul.d f19, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x2, 0x2627f2e034a38892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
fmul.d f2, f11, f26, dyn # perform operation
fmul.d f2, f11, f26, rdn # perform operation
fmul.d f2, f11, f26, rmm # perform operation
fmul.d f2, f11, f26, rne # perform operation
fmul.d f2, f11, f26, rtz # perform operation
fmul.d f2, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f2, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f2, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f2, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f2, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f2, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x26, 0xa6002ac6057c04c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fmul.d f26, f21, f11, dyn # perform operation
fmul.d f26, f21, f11, rdn # perform operation
fmul.d f26, f21, f11, rmm # perform operation
fmul.d f26, f21, f11, rne # perform operation
fmul.d f26, f21, f11, rtz # perform operation
fmul.d f26, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f26, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f26, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f26, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f26, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f26, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x25, 0xc7414a8dccc3447f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f26, 0(x2) # load 0x8000000000000001 from memory into f26
fmul.d f25, f3, f26, dyn # perform operation
fmul.d f25, f3, f26, rdn # perform operation
fmul.d f25, f3, f26, rmm # perform operation
fmul.d f25, f3, f26, rne # perform operation
fmul.d f25, f3, f26, rtz # perform operation
fmul.d f25, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x27, 0x162d6ece8ce6dbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
fmul.d f27, f14, f15, dyn # perform operation
fmul.d f27, f14, f15, rdn # perform operation
fmul.d f27, f14, f15, rmm # perform operation
fmul.d f27, f14, f15, rne # perform operation
fmul.d f27, f14, f15, rtz # perform operation
fmul.d f27, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f27, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f27, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f27, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f27, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f27, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x14, 0x19fc7f0907586a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmul.d f14, f9, f13, dyn # perform operation
fmul.d f14, f9, f13, rdn # perform operation
fmul.d f14, f9, f13, rmm # perform operation
fmul.d f14, f9, f13, rne # perform operation
fmul.d f14, f9, f13, rtz # perform operation
fmul.d f14, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f14, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f14, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f14, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f14, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f14, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x6, 0x7e508f9813a0685e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fmul.d f6, f23, f16, dyn # perform operation
fmul.d f6, f23, f16, rdn # perform operation
fmul.d f6, f23, f16, rmm # perform operation
fmul.d f6, f23, f16, rne # perform operation
fmul.d f6, f23, f16, rtz # perform operation
fmul.d f6, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f6, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f6, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f6, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f6, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f6, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x25, 0x6e553de0259bafd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
fmul.d f25, f27, f21, dyn # perform operation
fmul.d f25, f27, f21, rdn # perform operation
fmul.d f25, f27, f21, rmm # perform operation
fmul.d f25, f27, f21, rne # perform operation
fmul.d f25, f27, f21, rtz # perform operation
fmul.d f25, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f25, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f25, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f25, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f25, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f25, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x5, 0x24c03d7832bf582f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
fmul.d f5, f24, f4, dyn # perform operation
fmul.d f5, f24, f4, rdn # perform operation
fmul.d f5, f24, f4, rmm # perform operation
fmul.d f5, f24, f4, rne # perform operation
fmul.d f5, f24, f4, rtz # perform operation
fmul.d f5, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f5, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f5, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f5, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f5, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f5, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x21, 0x73917f48167732c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmul.d f21, f30, f13, dyn # perform operation
fmul.d f21, f30, f13, rdn # perform operation
fmul.d f21, f30, f13, rmm # perform operation
fmul.d f21, f30, f13, rne # perform operation
fmul.d f21, f30, f13, rtz # perform operation
fmul.d f21, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f21, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f21, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f21, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f21, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f21, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x3, 0x1ed3a15cccd3ac91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
fmul.d f3, f18, f14, dyn # perform operation
fmul.d f3, f18, f14, rdn # perform operation
fmul.d f3, f18, f14, rmm # perform operation
fmul.d f3, f18, f14, rne # perform operation
fmul.d f3, f18, f14, rtz # perform operation
fmul.d f3, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x23, 0xf8b8efffc814e17e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fmul.d f23, f1, f27, dyn # perform operation
fmul.d f23, f1, f27, rdn # perform operation
fmul.d f23, f1, f27, rmm # perform operation
fmul.d f23, f1, f27, rne # perform operation
fmul.d f23, f1, f27, rtz # perform operation
fmul.d f23, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x24, 0x9f4117150eef0805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f27, 0(x2) # load 0x0000000000000000 from memory into f27
fmul.d f24, f7, f27, dyn # perform operation
fmul.d f24, f7, f27, rdn # perform operation
fmul.d f24, f7, f27, rmm # perform operation
fmul.d f24, f7, f27, rne # perform operation
fmul.d f24, f7, f27, rtz # perform operation
fmul.d f24, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x30, 0xc1fbd9ffb495c515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fmul.d f30, f26, f2, dyn # perform operation
fmul.d f30, f26, f2, rdn # perform operation
fmul.d f30, f26, f2, rmm # perform operation
fmul.d f30, f26, f2, rne # perform operation
fmul.d f30, f26, f2, rtz # perform operation
fmul.d f30, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x10, 0x11d51eb7272bf604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
fmul.d f10, f21, f12, dyn # perform operation
fmul.d f10, f21, f12, rdn # perform operation
fmul.d f10, f21, f12, rmm # perform operation
fmul.d f10, f21, f12, rne # perform operation
fmul.d f10, f21, f12, rtz # perform operation
fmul.d f10, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f10, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f10, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f10, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f10, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f10, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x23, 0x6040aa1eccc19f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
fmul.d f23, f27, f26, dyn # perform operation
fmul.d f23, f27, f26, rdn # perform operation
fmul.d f23, f27, f26, rmm # perform operation
fmul.d f23, f27, f26, rne # perform operation
fmul.d f23, f27, f26, rtz # perform operation
fmul.d f23, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x12, 0x6c72e950dbf0a07d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fmul.d f12, f13, f30, dyn # perform operation
fmul.d f12, f13, f30, rdn # perform operation
fmul.d f12, f13, f30, rmm # perform operation
fmul.d f12, f13, f30, rne # perform operation
fmul.d f12, f13, f30, rtz # perform operation
fmul.d f12, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f12, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f12, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f12, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f12, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f12, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x24, 0x8f3b90c8d4af7220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
fmul.d f24, f21, f13, dyn # perform operation
fmul.d f24, f21, f13, rdn # perform operation
fmul.d f24, f21, f13, rmm # perform operation
fmul.d f24, f21, f13, rne # perform operation
fmul.d f24, f21, f13, rtz # perform operation
fmul.d f24, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x24, 0x8b63d65cf3546809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fmul.d f24, f30, f13, dyn # perform operation
fmul.d f24, f30, f13, rdn # perform operation
fmul.d f24, f30, f13, rmm # perform operation
fmul.d f24, f30, f13, rne # perform operation
fmul.d f24, f30, f13, rtz # perform operation
fmul.d f24, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x3, 0x248a86ac9767e3e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
fmul.d f3, f15, f16, dyn # perform operation
fmul.d f3, f15, f16, rdn # perform operation
fmul.d f3, f15, f16, rmm # perform operation
fmul.d f3, f15, f16, rne # perform operation
fmul.d f3, f15, f16, rtz # perform operation
fmul.d f3, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f3, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f3, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f3, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f3, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f3, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x22, 0x83092bdd6a4026e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f16, 0(x2) # load 0x0010000000000000 from memory into f16
fmul.d f22, f26, f16, dyn # perform operation
fmul.d f22, f26, f16, rdn # perform operation
fmul.d f22, f26, f16, rmm # perform operation
fmul.d f22, f26, f16, rne # perform operation
fmul.d f22, f26, f16, rtz # perform operation
fmul.d f22, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f22, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f22, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f22, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f22, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f22, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x20, 0x91d456fabdd31c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmul.d f20, f28, f21, dyn # perform operation
fmul.d f20, f28, f21, rdn # perform operation
fmul.d f20, f28, f21, rmm # perform operation
fmul.d f20, f28, f21, rne # perform operation
fmul.d f20, f28, f21, rtz # perform operation
fmul.d f20, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x7, 0x7c333c93a1633f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f17, 0(x2) # load 0xa6e895993737426c from memory into f17
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmul.d f7, f17, f12, dyn # perform operation
fmul.d f7, f17, f12, rdn # perform operation
fmul.d f7, f17, f12, rmm # perform operation
fmul.d f7, f17, f12, rne # perform operation
fmul.d f7, f17, f12, rtz # perform operation
fmul.d f7, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f7, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f7, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f7, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f7, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f7, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x31, 0x3e7d00b9a9697a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
fmul.d f31, f5, f12, dyn # perform operation
fmul.d f31, f5, f12, rdn # perform operation
fmul.d f31, f5, f12, rmm # perform operation
fmul.d f31, f5, f12, rne # perform operation
fmul.d f31, f5, f12, rtz # perform operation
fmul.d f31, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x30, 0x9c69c800192060a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
fmul.d f30, f28, f6, dyn # perform operation
fmul.d f30, f28, f6, rdn # perform operation
fmul.d f30, f28, f6, rmm # perform operation
fmul.d f30, f28, f6, rne # perform operation
fmul.d f30, f28, f6, rtz # perform operation
fmul.d f30, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x30, 0x60c4c3b4311ad362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f1, 0(x2) # load 0x800fffffffffffff from memory into f1
fmul.d f30, f21, f1, dyn # perform operation
fmul.d f30, f21, f1, rdn # perform operation
fmul.d f30, f21, f1, rmm # perform operation
fmul.d f30, f21, f1, rne # perform operation
fmul.d f30, f21, f1, rtz # perform operation
fmul.d f30, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f30, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f30, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f30, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f30, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f30, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x20, 0x0257fe9bbaa0f32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
fmul.d f20, f26, f18, dyn # perform operation
fmul.d f20, f26, f18, rdn # perform operation
fmul.d f20, f26, f18, rmm # perform operation
fmul.d f20, f26, f18, rne # perform operation
fmul.d f20, f26, f18, rtz # perform operation
fmul.d f20, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x29, 0x044076cad2da6ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fmul.d f29, f20, f10, dyn # perform operation
fmul.d f29, f20, f10, rdn # perform operation
fmul.d f29, f20, f10, rmm # perform operation
fmul.d f29, f20, f10, rne # perform operation
fmul.d f29, f20, f10, rtz # perform operation
fmul.d f29, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x16, 0xb838cd005fc59bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f11, 0(x2) # load 0xa6e895993737426c from memory into f11
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmul.d f16, f11, f13, dyn # perform operation
fmul.d f16, f11, f13, rdn # perform operation
fmul.d f16, f11, f13, rmm # perform operation
fmul.d f16, f11, f13, rne # perform operation
fmul.d f16, f11, f13, rtz # perform operation
fmul.d f16, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f16, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f16, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f16, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f16, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f16, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x29, 0x62e7b5a49e5189b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmul.d f29, f8, f12, dyn # perform operation
fmul.d f29, f8, f12, rdn # perform operation
fmul.d f29, f8, f12, rmm # perform operation
fmul.d f29, f8, f12, rne # perform operation
fmul.d f29, f8, f12, rtz # perform operation
fmul.d f29, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f29, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f29, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f29, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f29, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f29, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x31, 0x474a17498dd831bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
fmul.d f31, f24, f5, dyn # perform operation
fmul.d f31, f24, f5, rdn # perform operation
fmul.d f31, f24, f5, rmm # perform operation
fmul.d f31, f24, f5, rne # perform operation
fmul.d f31, f24, f5, rtz # perform operation
fmul.d f31, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f31, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f31, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f31, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f31, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f31, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x24, 0xe2add3fb2c897038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f5, 0(x2) # load 0xa6e895993737426c from memory into f5
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
fmul.d f24, f5, f1, dyn # perform operation
fmul.d f24, f5, f1, rdn # perform operation
fmul.d f24, f5, f1, rmm # perform operation
fmul.d f24, f5, f1, rne # perform operation
fmul.d f24, f5, f1, rtz # perform operation
fmul.d f24, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f24, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f24, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f24, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f24, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f24, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x15, 0x28cae713b17e2ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fmul.d f15, f26, f2, dyn # perform operation
fmul.d f15, f26, f2, rdn # perform operation
fmul.d f15, f26, f2, rmm # perform operation
fmul.d f15, f26, f2, rne # perform operation
fmul.d f15, f26, f2, rtz # perform operation
fmul.d f15, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f15, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f15, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f15, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f15, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f15, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x23, 0x00cdea8b4ae0abe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
fmul.d f23, f6, f1, dyn # perform operation
fmul.d f23, f6, f1, rdn # perform operation
fmul.d f23, f6, f1, rmm # perform operation
fmul.d f23, f6, f1, rne # perform operation
fmul.d f23, f6, f1, rtz # perform operation
fmul.d f23, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f23, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f23, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f23, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f23, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f23, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x20, 0x2f2d840bebdee0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f13, 0(x2) # load 0x7ff0000000000001 from memory into f13
fmul.d f20, f27, f13, dyn # perform operation
fmul.d f20, f27, f13, rdn # perform operation
fmul.d f20, f27, f13, rmm # perform operation
fmul.d f20, f27, f13, rne # perform operation
fmul.d f20, f27, f13, rtz # perform operation
fmul.d f20, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f20, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f20, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f20, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f20, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f20, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x19, 0x4421573a0239ac7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f16, 0(x2) # load 0x7ff7ffffffffffff from memory into f16
fmul.d f19, f2, f16, dyn # perform operation
fmul.d f19, f2, f16, rdn # perform operation
fmul.d f19, f2, f16, rmm # perform operation
fmul.d f19, f2, f16, rne # perform operation
fmul.d f19, f2, f16, rtz # perform operation
fmul.d f19, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f19, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f19, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f19, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f19, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f19, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x1, 0x4fd827b487ba9230 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fmul.d f1, f31, f5, dyn # perform operation
fmul.d f1, f31, f5, rdn # perform operation
fmul.d f1, f31, f5, rmm # perform operation
fmul.d f1, f31, f5, rne # perform operation
fmul.d f1, f31, f5, rtz # perform operation
fmul.d f1, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f1, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f1, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f1, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f1, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f1, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x8, 0xe8928279a02a6026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
fmul.d f8, f19, f1, dyn # perform operation
fmul.d f8, f19, f1, rdn # perform operation
fmul.d f8, f19, f1, rmm # perform operation
fmul.d f8, f19, f1, rne # perform operation
fmul.d f8, f19, f1, rtz # perform operation
fmul.d f8, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.d f8, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.d f8, f19, f1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xa94d6d883c6d8872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7139a86631b74ed # load x3 with value 0xf7139a86631b74ed
sd x3, 0(x2) # store 0xf7139a86631b74ed in memory
fld f8, 0(x2) # load 0xf7139a86631b74ed from memory into f8
li x3, 0x43b836aea7493ac1 # load x3 with value 0x43b836aea7493ac1
sd x3, 0(x2) # store 0x43b836aea7493ac1 in memory
fld f27, 0(x2) # load 0x43b836aea7493ac1 from memory into f27
fmul.d f0, f8, f27 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x278782026a318f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75230aa7dcd6fed0 # load x3 with value 0x75230aa7dcd6fed0
sd x3, 0(x2) # store 0x75230aa7dcd6fed0 in memory
fld f23, 0(x2) # load 0x75230aa7dcd6fed0 from memory into f23
li x3, 0x79b24a3cfa5daba8 # load x3 with value 0x79b24a3cfa5daba8
sd x3, 0(x2) # store 0x79b24a3cfa5daba8 in memory
fld f16, 0(x2) # load 0x79b24a3cfa5daba8 from memory into f16
fmul.d f1, f23, f16 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x253ba84145a37133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f351e3fa95d6da6 # load x3 with value 0x4f351e3fa95d6da6
sd x3, 0(x2) # store 0x4f351e3fa95d6da6 in memory
fld f2, 0(x2) # load 0x4f351e3fa95d6da6 from memory into f2
li x3, 0x4a6570caacebd230 # load x3 with value 0x4a6570caacebd230
sd x3, 0(x2) # store 0x4a6570caacebd230 in memory
fld f21, 0(x2) # load 0x4a6570caacebd230 from memory into f21
fmul.d f2, f2, f21 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x58d6e338cc87993d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6f9b9c94f64826f # load x3 with value 0xc6f9b9c94f64826f
sd x3, 0(x2) # store 0xc6f9b9c94f64826f in memory
fld f11, 0(x2) # load 0xc6f9b9c94f64826f from memory into f11
li x3, 0xf704837fb9a4215d # load x3 with value 0xf704837fb9a4215d
sd x3, 0(x2) # store 0xf704837fb9a4215d in memory
fld f2, 0(x2) # load 0xf704837fb9a4215d from memory into f2
fmul.d f3, f11, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x6d7aba1a586483b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e690156f0048d01 # load x3 with value 0x3e690156f0048d01
sd x3, 0(x2) # store 0x3e690156f0048d01 in memory
fld f29, 0(x2) # load 0x3e690156f0048d01 from memory into f29
li x3, 0x06d3c8e7eddcbf61 # load x3 with value 0x06d3c8e7eddcbf61
sd x3, 0(x2) # store 0x06d3c8e7eddcbf61 in memory
fld f19, 0(x2) # load 0x06d3c8e7eddcbf61 from memory into f19
fmul.d f4, f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xb04e757a5a710e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb998e636a191bc4 # load x3 with value 0xdb998e636a191bc4
sd x3, 0(x2) # store 0xdb998e636a191bc4 in memory
fld f11, 0(x2) # load 0xdb998e636a191bc4 from memory into f11
li x3, 0x2f072137fa462f7d # load x3 with value 0x2f072137fa462f7d
sd x3, 0(x2) # store 0x2f072137fa462f7d in memory
fld f3, 0(x2) # load 0x2f072137fa462f7d from memory into f3
fmul.d f5, f11, f3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x7f0d6fede8fa9584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68082acd66651ca0 # load x3 with value 0x68082acd66651ca0
sd x3, 0(x2) # store 0x68082acd66651ca0 in memory
fld f2, 0(x2) # load 0x68082acd66651ca0 from memory into f2
li x3, 0xc71a156ee070c49f # load x3 with value 0xc71a156ee070c49f
sd x3, 0(x2) # store 0xc71a156ee070c49f in memory
fld f25, 0(x2) # load 0xc71a156ee070c49f from memory into f25
fmul.d f6, f2, f25 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd9be17ab92a92589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1319c9924e73ff24 # load x3 with value 0x1319c9924e73ff24
sd x3, 0(x2) # store 0x1319c9924e73ff24 in memory
fld f18, 0(x2) # load 0x1319c9924e73ff24 from memory into f18
li x3, 0x812cc1dce817bc1b # load x3 with value 0x812cc1dce817bc1b
sd x3, 0(x2) # store 0x812cc1dce817bc1b in memory
fld f24, 0(x2) # load 0x812cc1dce817bc1b from memory into f24
fmul.d f7, f18, f24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2455404a1e942a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e43293ca1ad25d8 # load x3 with value 0x3e43293ca1ad25d8
sd x3, 0(x2) # store 0x3e43293ca1ad25d8 in memory
fld f1, 0(x2) # load 0x3e43293ca1ad25d8 from memory into f1
li x3, 0xfb734ec30a82efd4 # load x3 with value 0xfb734ec30a82efd4
sd x3, 0(x2) # store 0xfb734ec30a82efd4 in memory
fld f23, 0(x2) # load 0xfb734ec30a82efd4 from memory into f23
fmul.d f8, f1, f23 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xae6c722cb6339ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9329dfa5b6a69a2 # load x3 with value 0xd9329dfa5b6a69a2
sd x3, 0(x2) # store 0xd9329dfa5b6a69a2 in memory
fld f14, 0(x2) # load 0xd9329dfa5b6a69a2 from memory into f14
li x3, 0x14719a0d09c25eb5 # load x3 with value 0x14719a0d09c25eb5
sd x3, 0(x2) # store 0x14719a0d09c25eb5 in memory
fld f12, 0(x2) # load 0x14719a0d09c25eb5 from memory into f12
fmul.d f9, f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x010b6d92e8fb2f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffd29e66ac0c20e8 # load x3 with value 0xffd29e66ac0c20e8
sd x3, 0(x2) # store 0xffd29e66ac0c20e8 in memory
fld f29, 0(x2) # load 0xffd29e66ac0c20e8 from memory into f29
li x3, 0x83855cbd4943c6e3 # load x3 with value 0x83855cbd4943c6e3
sd x3, 0(x2) # store 0x83855cbd4943c6e3 in memory
fld f22, 0(x2) # load 0x83855cbd4943c6e3 from memory into f22
fmul.d f10, f29, f22 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x438201ddfd7a75b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbee4c6a159f3882 # load x3 with value 0xcbee4c6a159f3882
sd x3, 0(x2) # store 0xcbee4c6a159f3882 in memory
fld f1, 0(x2) # load 0xcbee4c6a159f3882 from memory into f1
li x3, 0x0cd868094586e7ef # load x3 with value 0x0cd868094586e7ef
sd x3, 0(x2) # store 0x0cd868094586e7ef in memory
fld f4, 0(x2) # load 0x0cd868094586e7ef from memory into f4
fmul.d f11, f1, f4 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x564bfc05e38ecf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1431b62ee5a3ccb1 # load x3 with value 0x1431b62ee5a3ccb1
sd x3, 0(x2) # store 0x1431b62ee5a3ccb1 in memory
fld f28, 0(x2) # load 0x1431b62ee5a3ccb1 from memory into f28
li x3, 0xc468a78c8c4deaf5 # load x3 with value 0xc468a78c8c4deaf5
sd x3, 0(x2) # store 0xc468a78c8c4deaf5 in memory
fld f11, 0(x2) # load 0xc468a78c8c4deaf5 from memory into f11
fmul.d f12, f28, f11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x47114e80bb8fcb32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3039628d526ee570 # load x3 with value 0x3039628d526ee570
sd x3, 0(x2) # store 0x3039628d526ee570 in memory
fld f14, 0(x2) # load 0x3039628d526ee570 from memory into f14
li x3, 0x571761485ed5df05 # load x3 with value 0x571761485ed5df05
sd x3, 0(x2) # store 0x571761485ed5df05 in memory
fld f6, 0(x2) # load 0x571761485ed5df05 from memory into f6
fmul.d f13, f14, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xc77352209a836674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45dfcbaa0a9d41d1 # load x3 with value 0x45dfcbaa0a9d41d1
sd x3, 0(x2) # store 0x45dfcbaa0a9d41d1 in memory
fld f31, 0(x2) # load 0x45dfcbaa0a9d41d1 from memory into f31
li x3, 0x8609286f7d31ff09 # load x3 with value 0x8609286f7d31ff09
sd x3, 0(x2) # store 0x8609286f7d31ff09 in memory
fld f30, 0(x2) # load 0x8609286f7d31ff09 from memory into f30
fmul.d f14, f31, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x1eb7e13ba4953796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde5342193180626a # load x3 with value 0xde5342193180626a
sd x3, 0(x2) # store 0xde5342193180626a in memory
fld f20, 0(x2) # load 0xde5342193180626a from memory into f20
li x3, 0xef7e6c5037b2fc91 # load x3 with value 0xef7e6c5037b2fc91
sd x3, 0(x2) # store 0xef7e6c5037b2fc91 in memory
fld f4, 0(x2) # load 0xef7e6c5037b2fc91 from memory into f4
fmul.d f15, f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x0b76d5e4ae67f7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68ec6ef19e8625a2 # load x3 with value 0x68ec6ef19e8625a2
sd x3, 0(x2) # store 0x68ec6ef19e8625a2 in memory
fld f18, 0(x2) # load 0x68ec6ef19e8625a2 from memory into f18
li x3, 0x017ee4f047a7f931 # load x3 with value 0x017ee4f047a7f931
sd x3, 0(x2) # store 0x017ee4f047a7f931 in memory
fld f19, 0(x2) # load 0x017ee4f047a7f931 from memory into f19
fmul.d f16, f18, f19 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x940c1a118042e177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc851b5533df0cc2b # load x3 with value 0xc851b5533df0cc2b
sd x3, 0(x2) # store 0xc851b5533df0cc2b in memory
fld f17, 0(x2) # load 0xc851b5533df0cc2b from memory into f17
li x3, 0x3820926e8e4428bc # load x3 with value 0x3820926e8e4428bc
sd x3, 0(x2) # store 0x3820926e8e4428bc in memory
fld f23, 0(x2) # load 0x3820926e8e4428bc from memory into f23
fmul.d f17, f17, f23 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x2a26da1ce5467da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69f5b325ebb3e352 # load x3 with value 0x69f5b325ebb3e352
sd x3, 0(x2) # store 0x69f5b325ebb3e352 in memory
fld f28, 0(x2) # load 0x69f5b325ebb3e352 from memory into f28
li x3, 0x45e2a58a63d5e36f # load x3 with value 0x45e2a58a63d5e36f
sd x3, 0(x2) # store 0x45e2a58a63d5e36f in memory
fld f30, 0(x2) # load 0x45e2a58a63d5e36f from memory into f30
fmul.d f18, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x82a1cf7752884fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb30e1e87e7480b17 # load x3 with value 0xb30e1e87e7480b17
sd x3, 0(x2) # store 0xb30e1e87e7480b17 in memory
fld f11, 0(x2) # load 0xb30e1e87e7480b17 from memory into f11
li x3, 0x959c9c7fd6f0054d # load x3 with value 0x959c9c7fd6f0054d
sd x3, 0(x2) # store 0x959c9c7fd6f0054d in memory
fld f30, 0(x2) # load 0x959c9c7fd6f0054d from memory into f30
fmul.d f19, f11, f30 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x291fb1fe0b3daea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcdb5632abc87eb4 # load x3 with value 0xbcdb5632abc87eb4
sd x3, 0(x2) # store 0xbcdb5632abc87eb4 in memory
fld f7, 0(x2) # load 0xbcdb5632abc87eb4 from memory into f7
li x3, 0x027b5670fe830dee # load x3 with value 0x027b5670fe830dee
sd x3, 0(x2) # store 0x027b5670fe830dee in memory
fld f23, 0(x2) # load 0x027b5670fe830dee from memory into f23
fmul.d f20, f7, f23 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x01884ce5e4177987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c36501ae9dfb8e3 # load x3 with value 0x2c36501ae9dfb8e3
sd x3, 0(x2) # store 0x2c36501ae9dfb8e3 in memory
fld f26, 0(x2) # load 0x2c36501ae9dfb8e3 from memory into f26
li x3, 0x65024e73f2b0ecf8 # load x3 with value 0x65024e73f2b0ecf8
sd x3, 0(x2) # store 0x65024e73f2b0ecf8 in memory
fld f4, 0(x2) # load 0x65024e73f2b0ecf8 from memory into f4
fmul.d f21, f26, f4 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x4c9ba58337584455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9968b9d59aaf7f50 # load x3 with value 0x9968b9d59aaf7f50
sd x3, 0(x2) # store 0x9968b9d59aaf7f50 in memory
fld f29, 0(x2) # load 0x9968b9d59aaf7f50 from memory into f29
li x3, 0x14bee3e16eb83f03 # load x3 with value 0x14bee3e16eb83f03
sd x3, 0(x2) # store 0x14bee3e16eb83f03 in memory
fld f5, 0(x2) # load 0x14bee3e16eb83f03 from memory into f5
fmul.d f22, f29, f5 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbaa996da5ddaa5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ac9287610c35f89 # load x3 with value 0x6ac9287610c35f89
sd x3, 0(x2) # store 0x6ac9287610c35f89 in memory
fld f5, 0(x2) # load 0x6ac9287610c35f89 from memory into f5
li x3, 0x3fa15d0c3a947a71 # load x3 with value 0x3fa15d0c3a947a71
sd x3, 0(x2) # store 0x3fa15d0c3a947a71 in memory
fld f22, 0(x2) # load 0x3fa15d0c3a947a71 from memory into f22
fmul.d f23, f5, f22 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x5275597223b9a40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x076fa1dfb5b9476f # load x3 with value 0x076fa1dfb5b9476f
sd x3, 0(x2) # store 0x076fa1dfb5b9476f in memory
fld f4, 0(x2) # load 0x076fa1dfb5b9476f from memory into f4
li x3, 0xd391c616c71b9ffd # load x3 with value 0xd391c616c71b9ffd
sd x3, 0(x2) # store 0xd391c616c71b9ffd in memory
fld f24, 0(x2) # load 0xd391c616c71b9ffd from memory into f24
fmul.d f24, f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x4041e6d3648cb046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd10b44238239b8b6 # load x3 with value 0xd10b44238239b8b6
sd x3, 0(x2) # store 0xd10b44238239b8b6 in memory
fld f8, 0(x2) # load 0xd10b44238239b8b6 from memory into f8
li x3, 0xc86ba677337e543e # load x3 with value 0xc86ba677337e543e
sd x3, 0(x2) # store 0xc86ba677337e543e in memory
fld f21, 0(x2) # load 0xc86ba677337e543e from memory into f21
fmul.d f25, f8, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7e44965dd7941429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x492dcb5b5060f600 # load x3 with value 0x492dcb5b5060f600
sd x3, 0(x2) # store 0x492dcb5b5060f600 in memory
fld f7, 0(x2) # load 0x492dcb5b5060f600 from memory into f7
li x3, 0xc3016f54c9d51215 # load x3 with value 0xc3016f54c9d51215
sd x3, 0(x2) # store 0xc3016f54c9d51215 in memory
fld f4, 0(x2) # load 0xc3016f54c9d51215 from memory into f4
fmul.d f26, f7, f4 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x297b402c15551152 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ae21748d73227cc # load x3 with value 0x2ae21748d73227cc
sd x3, 0(x2) # store 0x2ae21748d73227cc in memory
fld f12, 0(x2) # load 0x2ae21748d73227cc from memory into f12
li x3, 0xae4afc83f610d835 # load x3 with value 0xae4afc83f610d835
sd x3, 0(x2) # store 0xae4afc83f610d835 in memory
fld f19, 0(x2) # load 0xae4afc83f610d835 from memory into f19
fmul.d f27, f12, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x98c498d909b9e049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc0fd82dbbf3601d # load x3 with value 0xcc0fd82dbbf3601d
sd x3, 0(x2) # store 0xcc0fd82dbbf3601d in memory
fld f4, 0(x2) # load 0xcc0fd82dbbf3601d from memory into f4
li x3, 0x369f365ae7ad3223 # load x3 with value 0x369f365ae7ad3223
sd x3, 0(x2) # store 0x369f365ae7ad3223 in memory
fld f21, 0(x2) # load 0x369f365ae7ad3223 from memory into f21
fmul.d f28, f4, f21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x925ba931e17f413c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe767c60495a4b93c # load x3 with value 0xe767c60495a4b93c
sd x3, 0(x2) # store 0xe767c60495a4b93c in memory
fld f6, 0(x2) # load 0xe767c60495a4b93c from memory into f6
li x3, 0x5637b67658fab6a8 # load x3 with value 0x5637b67658fab6a8
sd x3, 0(x2) # store 0x5637b67658fab6a8 in memory
fld f11, 0(x2) # load 0x5637b67658fab6a8 from memory into f11
fmul.d f29, f6, f11 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3caa975e5bec566c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c547c64d686dd66 # load x3 with value 0x3c547c64d686dd66
sd x3, 0(x2) # store 0x3c547c64d686dd66 in memory
fld f13, 0(x2) # load 0x3c547c64d686dd66 from memory into f13
li x3, 0x0fde79fe25f07d2a # load x3 with value 0x0fde79fe25f07d2a
sd x3, 0(x2) # store 0x0fde79fe25f07d2a in memory
fld f3, 0(x2) # load 0x0fde79fe25f07d2a from memory into f3
fmul.d f30, f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x9c66ed6e1a5523f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d66375c41740c15 # load x3 with value 0x4d66375c41740c15
sd x3, 0(x2) # store 0x4d66375c41740c15 in memory
fld f20, 0(x2) # load 0x4d66375c41740c15 from memory into f20
li x3, 0xcf73c0818aed56d2 # load x3 with value 0xcf73c0818aed56d2
sd x3, 0(x2) # store 0xcf73c0818aed56d2 in memory
fld f7, 0(x2) # load 0xcf73c0818aed56d2 from memory into f7
fmul.d f31, f20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x15, 0x3a236a29a31b3657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1aa6f155ecefa05d # load x3 with value 0x1aa6f155ecefa05d
sd x3, 0(x2) # store 0x1aa6f155ecefa05d in memory
fld f0, 0(x2) # load 0x1aa6f155ecefa05d from memory into f0
li x3, 0x66552528e4e4d171 # load x3 with value 0x66552528e4e4d171
sd x3, 0(x2) # store 0x66552528e4e4d171 in memory
fld f16, 0(x2) # load 0x66552528e4e4d171 from memory into f16
fmul.d f15, f0, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0x50bd4d021322556e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd930fbfa14a2c9b # load x3 with value 0xfd930fbfa14a2c9b
sd x3, 0(x2) # store 0xfd930fbfa14a2c9b in memory
fld f1, 0(x2) # load 0xfd930fbfa14a2c9b from memory into f1
li x3, 0xbb63bea94e6e84cd # load x3 with value 0xbb63bea94e6e84cd
sd x3, 0(x2) # store 0xbb63bea94e6e84cd in memory
fld f15, 0(x2) # load 0xbb63bea94e6e84cd from memory into f15
fmul.d f31, f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x2, 0xeb42c8feba02245c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45d37b948c19b34b # load x3 with value 0x45d37b948c19b34b
sd x3, 0(x2) # store 0x45d37b948c19b34b in memory
fld f2, 0(x2) # load 0x45d37b948c19b34b from memory into f2
li x3, 0x5c0eb979fc9babf2 # load x3 with value 0x5c0eb979fc9babf2
sd x3, 0(x2) # store 0x5c0eb979fc9babf2 in memory
fld f9, 0(x2) # load 0x5c0eb979fc9babf2 from memory into f9
fmul.d f2, f2, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0x67d5b5276b02fa06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf173029c0a352ebd # load x3 with value 0xf173029c0a352ebd
sd x3, 0(x2) # store 0xf173029c0a352ebd in memory
fld f3, 0(x2) # load 0xf173029c0a352ebd from memory into f3
li x3, 0x942478afe32efc52 # load x3 with value 0x942478afe32efc52
sd x3, 0(x2) # store 0x942478afe32efc52 in memory
fld f27, 0(x2) # load 0x942478afe32efc52 from memory into f27
fmul.d f22, f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0xc5cacc2759bf12b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x404da10e41cb2aec # load x3 with value 0x404da10e41cb2aec
sd x3, 0(x2) # store 0x404da10e41cb2aec in memory
fld f4, 0(x2) # load 0x404da10e41cb2aec from memory into f4
li x3, 0x9f500c919039c290 # load x3 with value 0x9f500c919039c290
sd x3, 0(x2) # store 0x9f500c919039c290 in memory
fld f20, 0(x2) # load 0x9f500c919039c290 from memory into f20
fmul.d f25, f4, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x22, 0xfae55130af2f3773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a8ee41075dcec3c # load x3 with value 0x7a8ee41075dcec3c
sd x3, 0(x2) # store 0x7a8ee41075dcec3c in memory
fld f5, 0(x2) # load 0x7a8ee41075dcec3c from memory into f5
li x3, 0xd824b31e7f614ef1 # load x3 with value 0xd824b31e7f614ef1
sd x3, 0(x2) # store 0xd824b31e7f614ef1 in memory
fld f12, 0(x2) # load 0xd824b31e7f614ef1 from memory into f12
fmul.d f22, f5, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0xb75681494a10899d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcd8b16954eadda5 # load x3 with value 0xbcd8b16954eadda5
sd x3, 0(x2) # store 0xbcd8b16954eadda5 in memory
fld f6, 0(x2) # load 0xbcd8b16954eadda5 from memory into f6
li x3, 0x989a5a422a5bb780 # load x3 with value 0x989a5a422a5bb780
sd x3, 0(x2) # store 0x989a5a422a5bb780 in memory
fld f21, 0(x2) # load 0x989a5a422a5bb780 from memory into f21
fmul.d f19, f6, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x2df3de6c3a94a87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf514a48c50871a7 # load x3 with value 0xaf514a48c50871a7
sd x3, 0(x2) # store 0xaf514a48c50871a7 in memory
fld f7, 0(x2) # load 0xaf514a48c50871a7 from memory into f7
li x3, 0x5479cee491ddab75 # load x3 with value 0x5479cee491ddab75
sd x3, 0(x2) # store 0x5479cee491ddab75 in memory
fld f21, 0(x2) # load 0x5479cee491ddab75 from memory into f21
fmul.d f23, f7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x29, 0x845952b510b4c8a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec008e2cf94e25da # load x3 with value 0xec008e2cf94e25da
sd x3, 0(x2) # store 0xec008e2cf94e25da in memory
fld f8, 0(x2) # load 0xec008e2cf94e25da from memory into f8
li x3, 0x4a2b3a31362fa84a # load x3 with value 0x4a2b3a31362fa84a
sd x3, 0(x2) # store 0x4a2b3a31362fa84a in memory
fld f22, 0(x2) # load 0x4a2b3a31362fa84a from memory into f22
fmul.d f29, f8, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x23, 0x33212509883cd1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d647f98dcb2a2fc # load x3 with value 0x2d647f98dcb2a2fc
sd x3, 0(x2) # store 0x2d647f98dcb2a2fc in memory
fld f9, 0(x2) # load 0x2d647f98dcb2a2fc from memory into f9
li x3, 0x3f00deceb6f50dff # load x3 with value 0x3f00deceb6f50dff
sd x3, 0(x2) # store 0x3f00deceb6f50dff in memory
fld f10, 0(x2) # load 0x3f00deceb6f50dff from memory into f10
fmul.d f23, f9, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x10, 0x28af9922b406a919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72e9feb429a2e0c6 # load x3 with value 0x72e9feb429a2e0c6
sd x3, 0(x2) # store 0x72e9feb429a2e0c6 in memory
fld f10, 0(x2) # load 0x72e9feb429a2e0c6 from memory into f10
li x3, 0x6d0f2019359ad3eb # load x3 with value 0x6d0f2019359ad3eb
sd x3, 0(x2) # store 0x6d0f2019359ad3eb in memory
fld f23, 0(x2) # load 0x6d0f2019359ad3eb from memory into f23
fmul.d f10, f10, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x8, 0x997d93dd69d39a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cbf0f1cd34edc8c # load x3 with value 0x9cbf0f1cd34edc8c
sd x3, 0(x2) # store 0x9cbf0f1cd34edc8c in memory
fld f11, 0(x2) # load 0x9cbf0f1cd34edc8c from memory into f11
li x3, 0x38c53f51be776827 # load x3 with value 0x38c53f51be776827
sd x3, 0(x2) # store 0x38c53f51be776827 in memory
fld f9, 0(x2) # load 0x38c53f51be776827 from memory into f9
fmul.d f8, f11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x19, 0x2130444416d314c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x086c9d6ce9a5c745 # load x3 with value 0x086c9d6ce9a5c745
sd x3, 0(x2) # store 0x086c9d6ce9a5c745 in memory
fld f12, 0(x2) # load 0x086c9d6ce9a5c745 from memory into f12
li x3, 0x412e5627346101c3 # load x3 with value 0x412e5627346101c3
sd x3, 0(x2) # store 0x412e5627346101c3 in memory
fld f26, 0(x2) # load 0x412e5627346101c3 from memory into f26
fmul.d f19, f12, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x17, 0xa13bf9186ae5eede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74fd55715cb52382 # load x3 with value 0x74fd55715cb52382
sd x3, 0(x2) # store 0x74fd55715cb52382 in memory
fld f13, 0(x2) # load 0x74fd55715cb52382 from memory into f13
li x3, 0xce2fc72927944960 # load x3 with value 0xce2fc72927944960
sd x3, 0(x2) # store 0xce2fc72927944960 in memory
fld f22, 0(x2) # load 0xce2fc72927944960 from memory into f22
fmul.d f17, f13, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x27, 0xc827b9b46867b63e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc738c823e8bbd5b3 # load x3 with value 0xc738c823e8bbd5b3
sd x3, 0(x2) # store 0xc738c823e8bbd5b3 in memory
fld f14, 0(x2) # load 0xc738c823e8bbd5b3 from memory into f14
li x3, 0x18f7777455f20a50 # load x3 with value 0x18f7777455f20a50
sd x3, 0(x2) # store 0x18f7777455f20a50 in memory
fld f21, 0(x2) # load 0x18f7777455f20a50 from memory into f21
fmul.d f27, f14, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x4, 0x9321e1ee3bf23c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc01374e84c59f239 # load x3 with value 0xc01374e84c59f239
sd x3, 0(x2) # store 0xc01374e84c59f239 in memory
fld f15, 0(x2) # load 0xc01374e84c59f239 from memory into f15
li x3, 0xdf927d22f6a1eaf6 # load x3 with value 0xdf927d22f6a1eaf6
sd x3, 0(x2) # store 0xdf927d22f6a1eaf6 in memory
fld f21, 0(x2) # load 0xdf927d22f6a1eaf6 from memory into f21
fmul.d f4, f15, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x5, 0x3cb463f5e9900c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69c7301ad24e7310 # load x3 with value 0x69c7301ad24e7310
sd x3, 0(x2) # store 0x69c7301ad24e7310 in memory
fld f16, 0(x2) # load 0x69c7301ad24e7310 from memory into f16
li x3, 0x75ef39fe92cd782b # load x3 with value 0x75ef39fe92cd782b
sd x3, 0(x2) # store 0x75ef39fe92cd782b in memory
fld f12, 0(x2) # load 0x75ef39fe92cd782b from memory into f12
fmul.d f5, f16, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x24, 0x7a7204f9afdb9138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdde41ecfa0313863 # load x3 with value 0xdde41ecfa0313863
sd x3, 0(x2) # store 0xdde41ecfa0313863 in memory
fld f17, 0(x2) # load 0xdde41ecfa0313863 from memory into f17
li x3, 0x13dfeadb12fdeb58 # load x3 with value 0x13dfeadb12fdeb58
sd x3, 0(x2) # store 0x13dfeadb12fdeb58 in memory
fld f27, 0(x2) # load 0x13dfeadb12fdeb58 from memory into f27
fmul.d f24, f17, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0x9990d05fc951ead7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47dddf7e05f63eb0 # load x3 with value 0x47dddf7e05f63eb0
sd x3, 0(x2) # store 0x47dddf7e05f63eb0 in memory
fld f18, 0(x2) # load 0x47dddf7e05f63eb0 from memory into f18
li x3, 0x41a082ca196e9499 # load x3 with value 0x41a082ca196e9499
sd x3, 0(x2) # store 0x41a082ca196e9499 in memory
fld f20, 0(x2) # load 0x41a082ca196e9499 from memory into f20
fmul.d f31, f18, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x12, 0xea48da2c4e77a969 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87ed0831ba84e469 # load x3 with value 0x87ed0831ba84e469
sd x3, 0(x2) # store 0x87ed0831ba84e469 in memory
fld f19, 0(x2) # load 0x87ed0831ba84e469 from memory into f19
li x3, 0x24b7c53dd50d1c70 # load x3 with value 0x24b7c53dd50d1c70
sd x3, 0(x2) # store 0x24b7c53dd50d1c70 in memory
fld f5, 0(x2) # load 0x24b7c53dd50d1c70 from memory into f5
fmul.d f12, f19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x7, 0x30eb9ce6d650dd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcf09861ddbee3eb # load x3 with value 0xbcf09861ddbee3eb
sd x3, 0(x2) # store 0xbcf09861ddbee3eb in memory
fld f20, 0(x2) # load 0xbcf09861ddbee3eb from memory into f20
li x3, 0xca90700f270ae6db # load x3 with value 0xca90700f270ae6db
sd x3, 0(x2) # store 0xca90700f270ae6db in memory
fld f22, 0(x2) # load 0xca90700f270ae6db from memory into f22
fmul.d f7, f20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x13, 0xd5a77d3abd4853c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04bdf86409e21272 # load x3 with value 0x04bdf86409e21272
sd x3, 0(x2) # store 0x04bdf86409e21272 in memory
fld f21, 0(x2) # load 0x04bdf86409e21272 from memory into f21
li x3, 0x7f23ce52faa00fa4 # load x3 with value 0x7f23ce52faa00fa4
sd x3, 0(x2) # store 0x7f23ce52faa00fa4 in memory
fld f4, 0(x2) # load 0x7f23ce52faa00fa4 from memory into f4
fmul.d f13, f21, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0x15a3aeca2620aff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaab5b4a3322fcfc9 # load x3 with value 0xaab5b4a3322fcfc9
sd x3, 0(x2) # store 0xaab5b4a3322fcfc9 in memory
fld f22, 0(x2) # load 0xaab5b4a3322fcfc9 from memory into f22
li x3, 0x4606708d30f1841c # load x3 with value 0x4606708d30f1841c
sd x3, 0(x2) # store 0x4606708d30f1841c in memory
fld f11, 0(x2) # load 0x4606708d30f1841c from memory into f11
fmul.d f14, f22, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x4, 0xb07ce01a6b5b11e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6b854a65f574dc3 # load x3 with value 0xb6b854a65f574dc3
sd x3, 0(x2) # store 0xb6b854a65f574dc3 in memory
fld f23, 0(x2) # load 0xb6b854a65f574dc3 from memory into f23
li x3, 0x3d0dd5804fee8c76 # load x3 with value 0x3d0dd5804fee8c76
sd x3, 0(x2) # store 0x3d0dd5804fee8c76 in memory
fld f26, 0(x2) # load 0x3d0dd5804fee8c76 from memory into f26
fmul.d f4, f23, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x18, 0x909598288f08ad2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b8571bad6594f80 # load x3 with value 0x6b8571bad6594f80
sd x3, 0(x2) # store 0x6b8571bad6594f80 in memory
fld f24, 0(x2) # load 0x6b8571bad6594f80 from memory into f24
li x3, 0x02f0a72e388b216c # load x3 with value 0x02f0a72e388b216c
sd x3, 0(x2) # store 0x02f0a72e388b216c in memory
fld f27, 0(x2) # load 0x02f0a72e388b216c from memory into f27
fmul.d f18, f24, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x9, 0x292dd3b80c949241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07db80d93dd2ce78 # load x3 with value 0x07db80d93dd2ce78
sd x3, 0(x2) # store 0x07db80d93dd2ce78 in memory
fld f25, 0(x2) # load 0x07db80d93dd2ce78 from memory into f25
li x3, 0x52d72ded4749f212 # load x3 with value 0x52d72ded4749f212
sd x3, 0(x2) # store 0x52d72ded4749f212 in memory
fld f16, 0(x2) # load 0x52d72ded4749f212 from memory into f16
fmul.d f9, f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x25, 0xae382c28d32715d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb15ee7e873814748 # load x3 with value 0xb15ee7e873814748
sd x3, 0(x2) # store 0xb15ee7e873814748 in memory
fld f26, 0(x2) # load 0xb15ee7e873814748 from memory into f26
li x3, 0xce7c1a37efe27029 # load x3 with value 0xce7c1a37efe27029
sd x3, 0(x2) # store 0xce7c1a37efe27029 in memory
fld f12, 0(x2) # load 0xce7c1a37efe27029 from memory into f12
fmul.d f25, f26, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x5a8719b0c009e85b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf1ec70bcc1a2d86 # load x3 with value 0xdf1ec70bcc1a2d86
sd x3, 0(x2) # store 0xdf1ec70bcc1a2d86 in memory
fld f27, 0(x2) # load 0xdf1ec70bcc1a2d86 from memory into f27
li x3, 0x1994017ce604065f # load x3 with value 0x1994017ce604065f
sd x3, 0(x2) # store 0x1994017ce604065f in memory
fld f28, 0(x2) # load 0x1994017ce604065f from memory into f28
fmul.d f1, f27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x23, 0x053d9ac20dba1ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01063ab31a6c0322 # load x3 with value 0x01063ab31a6c0322
sd x3, 0(x2) # store 0x01063ab31a6c0322 in memory
fld f28, 0(x2) # load 0x01063ab31a6c0322 from memory into f28
li x3, 0xe198118b75bc8fa0 # load x3 with value 0xe198118b75bc8fa0
sd x3, 0(x2) # store 0xe198118b75bc8fa0 in memory
fld f27, 0(x2) # load 0xe198118b75bc8fa0 from memory into f27
fmul.d f23, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x29, 0x1319e49d99f80433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9454f89949a8aa96 # load x3 with value 0x9454f89949a8aa96
sd x3, 0(x2) # store 0x9454f89949a8aa96 in memory
fld f29, 0(x2) # load 0x9454f89949a8aa96 from memory into f29
li x3, 0x49c19c8ea3aec346 # load x3 with value 0x49c19c8ea3aec346
sd x3, 0(x2) # store 0x49c19c8ea3aec346 in memory
fld f11, 0(x2) # load 0x49c19c8ea3aec346 from memory into f11
fmul.d f29, f29, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0x9142552c3a7c72f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd73e61d3341b40b7 # load x3 with value 0xd73e61d3341b40b7
sd x3, 0(x2) # store 0xd73e61d3341b40b7 in memory
fld f30, 0(x2) # load 0xd73e61d3341b40b7 from memory into f30
li x3, 0x6402359a6dbf9680 # load x3 with value 0x6402359a6dbf9680
sd x3, 0(x2) # store 0x6402359a6dbf9680 in memory
fld f22, 0(x2) # load 0x6402359a6dbf9680 from memory into f22
fmul.d f31, f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0x61e3a6f462d0ec91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x499198c3c82f367e # load x3 with value 0x499198c3c82f367e
sd x3, 0(x2) # store 0x499198c3c82f367e in memory
fld f31, 0(x2) # load 0x499198c3c82f367e from memory into f31
li x3, 0x8a33a1f41b1570c1 # load x3 with value 0x8a33a1f41b1570c1
sd x3, 0(x2) # store 0x8a33a1f41b1570c1 in memory
fld f9, 0(x2) # load 0x8a33a1f41b1570c1 from memory into f9
fmul.d f10, f31, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x7, 0x9c46cfc69be4fd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x387030f836fcb236 # load x3 with value 0x387030f836fcb236
sd x3, 0(x2) # store 0x387030f836fcb236 in memory
fld f2, 0(x2) # load 0x387030f836fcb236 from memory into f2
li x3, 0x0767bbc66f10b49c # load x3 with value 0x0767bbc66f10b49c
sd x3, 0(x2) # store 0x0767bbc66f10b49c in memory
fld f0, 0(x2) # load 0x0767bbc66f10b49c from memory into f0
fmul.d f7, f2, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x25, 0x1754024d95b22754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9954d842e06fafc # load x3 with value 0xf9954d842e06fafc
sd x3, 0(x2) # store 0xf9954d842e06fafc in memory
fld f6, 0(x2) # load 0xf9954d842e06fafc from memory into f6
li x3, 0xd7a039b9028324ca # load x3 with value 0xd7a039b9028324ca
sd x3, 0(x2) # store 0xd7a039b9028324ca in memory
fld f1, 0(x2) # load 0xd7a039b9028324ca from memory into f1
fmul.d f25, f6, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x3, 0xfe3c00bfeb71b048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a421e21f843a36e # load x3 with value 0x8a421e21f843a36e
sd x3, 0(x2) # store 0x8a421e21f843a36e in memory
fld f15, 0(x2) # load 0x8a421e21f843a36e from memory into f15
li x3, 0xf1bfa31f288c7f2d # load x3 with value 0xf1bfa31f288c7f2d
sd x3, 0(x2) # store 0xf1bfa31f288c7f2d in memory
fld f2, 0(x2) # load 0xf1bfa31f288c7f2d from memory into f2
fmul.d f3, f15, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x18, 0x255e1d2bbaf53a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a71946263b1bffe # load x3 with value 0x5a71946263b1bffe
sd x3, 0(x2) # store 0x5a71946263b1bffe in memory
fld f27, 0(x2) # load 0x5a71946263b1bffe from memory into f27
li x3, 0x65753498e5a01c35 # load x3 with value 0x65753498e5a01c35
sd x3, 0(x2) # store 0x65753498e5a01c35 in memory
fld f3, 0(x2) # load 0x65753498e5a01c35 from memory into f3
fmul.d f18, f27, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x9, 0xbac1936943e83e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9be3b06e6989085 # load x3 with value 0xe9be3b06e6989085
sd x3, 0(x2) # store 0xe9be3b06e6989085 in memory
fld f20, 0(x2) # load 0xe9be3b06e6989085 from memory into f20
li x3, 0x9a2137f1ad18a76f # load x3 with value 0x9a2137f1ad18a76f
sd x3, 0(x2) # store 0x9a2137f1ad18a76f in memory
fld f4, 0(x2) # load 0x9a2137f1ad18a76f from memory into f4
fmul.d f9, f20, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x9, 0xbe619a87a0c17bac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x678e4bcef6779f54 # load x3 with value 0x678e4bcef6779f54
sd x3, 0(x2) # store 0x678e4bcef6779f54 in memory
fld f3, 0(x2) # load 0x678e4bcef6779f54 from memory into f3
li x3, 0x9ff82e385452d055 # load x3 with value 0x9ff82e385452d055
sd x3, 0(x2) # store 0x9ff82e385452d055 in memory
fld f5, 0(x2) # load 0x9ff82e385452d055 from memory into f5
fmul.d f9, f3, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x23, 0x2388268097a6e1c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36e828fdfefe5f65 # load x3 with value 0x36e828fdfefe5f65
sd x3, 0(x2) # store 0x36e828fdfefe5f65 in memory
fld f4, 0(x2) # load 0x36e828fdfefe5f65 from memory into f4
li x3, 0x7b5f4d7d55b7b043 # load x3 with value 0x7b5f4d7d55b7b043
sd x3, 0(x2) # store 0x7b5f4d7d55b7b043 in memory
fld f6, 0(x2) # load 0x7b5f4d7d55b7b043 from memory into f6
fmul.d f23, f4, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x16, 0xe28eb6fe16d2fb0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2164108d51a55ff3 # load x3 with value 0x2164108d51a55ff3
sd x3, 0(x2) # store 0x2164108d51a55ff3 in memory
fld f27, 0(x2) # load 0x2164108d51a55ff3 from memory into f27
li x3, 0x433657f92b2fd88d # load x3 with value 0x433657f92b2fd88d
sd x3, 0(x2) # store 0x433657f92b2fd88d in memory
fld f7, 0(x2) # load 0x433657f92b2fd88d from memory into f7
fmul.d f16, f27, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x24, 0xdd87ff3e2149b489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x891a49d9b68222d6 # load x3 with value 0x891a49d9b68222d6
sd x3, 0(x2) # store 0x891a49d9b68222d6 in memory
fld f22, 0(x2) # load 0x891a49d9b68222d6 from memory into f22
li x3, 0xfa0ec6648cbce53d # load x3 with value 0xfa0ec6648cbce53d
sd x3, 0(x2) # store 0xfa0ec6648cbce53d in memory
fld f8, 0(x2) # load 0xfa0ec6648cbce53d from memory into f8
fmul.d f24, f22, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x24, 0x9c3896fabd86d3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d8e55ef9cd5250d # load x3 with value 0x9d8e55ef9cd5250d
sd x3, 0(x2) # store 0x9d8e55ef9cd5250d in memory
fld f29, 0(x2) # load 0x9d8e55ef9cd5250d from memory into f29
li x3, 0xc918438a84b9103c # load x3 with value 0xc918438a84b9103c
sd x3, 0(x2) # store 0xc918438a84b9103c in memory
fld f9, 0(x2) # load 0xc918438a84b9103c from memory into f9
fmul.d f24, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x4d7d58649356a1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x616ee2441f34f022 # load x3 with value 0x616ee2441f34f022
sd x3, 0(x2) # store 0x616ee2441f34f022 in memory
fld f25, 0(x2) # load 0x616ee2441f34f022 from memory into f25
li x3, 0xa604d6b1b136e1d1 # load x3 with value 0xa604d6b1b136e1d1
sd x3, 0(x2) # store 0xa604d6b1b136e1d1 in memory
fld f10, 0(x2) # load 0xa604d6b1b136e1d1 from memory into f10
fmul.d f10, f25, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0xf40eacff1288adc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed509ef2ebee250d # load x3 with value 0xed509ef2ebee250d
sd x3, 0(x2) # store 0xed509ef2ebee250d in memory
fld f12, 0(x2) # load 0xed509ef2ebee250d from memory into f12
li x3, 0xe8fdf7fd3fde65bf # load x3 with value 0xe8fdf7fd3fde65bf
sd x3, 0(x2) # store 0xe8fdf7fd3fde65bf in memory
fld f11, 0(x2) # load 0xe8fdf7fd3fde65bf from memory into f11
fmul.d f22, f12, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x23, 0x0820c83b790f272e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ef440916873023e # load x3 with value 0x3ef440916873023e
sd x3, 0(x2) # store 0x3ef440916873023e in memory
fld f4, 0(x2) # load 0x3ef440916873023e from memory into f4
li x3, 0x7bc911c80ce07fd2 # load x3 with value 0x7bc911c80ce07fd2
sd x3, 0(x2) # store 0x7bc911c80ce07fd2 in memory
fld f12, 0(x2) # load 0x7bc911c80ce07fd2 from memory into f12
fmul.d f23, f4, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x28, 0xec6821e315c9fbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64f54cf647d1b82c # load x3 with value 0x64f54cf647d1b82c
sd x3, 0(x2) # store 0x64f54cf647d1b82c in memory
fld f5, 0(x2) # load 0x64f54cf647d1b82c from memory into f5
li x3, 0x7afd34c0a2bb932f # load x3 with value 0x7afd34c0a2bb932f
sd x3, 0(x2) # store 0x7afd34c0a2bb932f in memory
fld f13, 0(x2) # load 0x7afd34c0a2bb932f from memory into f13
fmul.d f28, f5, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x2, 0xc246929c0f2dc1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39c171dd17c9e3e5 # load x3 with value 0x39c171dd17c9e3e5
sd x3, 0(x2) # store 0x39c171dd17c9e3e5 in memory
fld f1, 0(x2) # load 0x39c171dd17c9e3e5 from memory into f1
li x3, 0x13ec0d4384e52fbd # load x3 with value 0x13ec0d4384e52fbd
sd x3, 0(x2) # store 0x13ec0d4384e52fbd in memory
fld f14, 0(x2) # load 0x13ec0d4384e52fbd from memory into f14
fmul.d f2, f1, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x4, 0x9d30888377ae0c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e881da7321aceb7 # load x3 with value 0x3e881da7321aceb7
sd x3, 0(x2) # store 0x3e881da7321aceb7 in memory
fld f21, 0(x2) # load 0x3e881da7321aceb7 from memory into f21
li x3, 0xe95ba38979bd22ce # load x3 with value 0xe95ba38979bd22ce
sd x3, 0(x2) # store 0xe95ba38979bd22ce in memory
fld f15, 0(x2) # load 0xe95ba38979bd22ce from memory into f15
fmul.d f4, f21, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x25, 0xc1a758cd373328d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ac175391231dbef # load x3 with value 0x8ac175391231dbef
sd x3, 0(x2) # store 0x8ac175391231dbef in memory
fld f29, 0(x2) # load 0x8ac175391231dbef from memory into f29
li x3, 0x257b3482a5f8952e # load x3 with value 0x257b3482a5f8952e
sd x3, 0(x2) # store 0x257b3482a5f8952e in memory
fld f16, 0(x2) # load 0x257b3482a5f8952e from memory into f16
fmul.d f25, f29, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x7, 0xbd20649daab5e9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74666d00618997f6 # load x3 with value 0x74666d00618997f6
sd x3, 0(x2) # store 0x74666d00618997f6 in memory
fld f1, 0(x2) # load 0x74666d00618997f6 from memory into f1
li x3, 0x581b05abe326c831 # load x3 with value 0x581b05abe326c831
sd x3, 0(x2) # store 0x581b05abe326c831 in memory
fld f17, 0(x2) # load 0x581b05abe326c831 from memory into f17
fmul.d f7, f1, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x23, 0x17a690dc768f06ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8a68fa8287227c0 # load x3 with value 0xa8a68fa8287227c0
sd x3, 0(x2) # store 0xa8a68fa8287227c0 in memory
fld f10, 0(x2) # load 0xa8a68fa8287227c0 from memory into f10
li x3, 0x9d43ffae51501f4f # load x3 with value 0x9d43ffae51501f4f
sd x3, 0(x2) # store 0x9d43ffae51501f4f in memory
fld f18, 0(x2) # load 0x9d43ffae51501f4f from memory into f18
fmul.d f23, f10, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x5, 0x073d03e89ddfe4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec71496ff772ad6e # load x3 with value 0xec71496ff772ad6e
sd x3, 0(x2) # store 0xec71496ff772ad6e in memory
fld f9, 0(x2) # load 0xec71496ff772ad6e from memory into f9
li x3, 0x3f84bbf4d2140a71 # load x3 with value 0x3f84bbf4d2140a71
sd x3, 0(x2) # store 0x3f84bbf4d2140a71 in memory
fld f19, 0(x2) # load 0x3f84bbf4d2140a71 from memory into f19
fmul.d f5, f9, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x4, 0x85b866a072d327ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c3962a438145002 # load x3 with value 0x7c3962a438145002
sd x3, 0(x2) # store 0x7c3962a438145002 in memory
fld f27, 0(x2) # load 0x7c3962a438145002 from memory into f27
li x3, 0x606ccfc8b45cd601 # load x3 with value 0x606ccfc8b45cd601
sd x3, 0(x2) # store 0x606ccfc8b45cd601 in memory
fld f20, 0(x2) # load 0x606ccfc8b45cd601 from memory into f20
fmul.d f4, f27, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x11, 0x0d11332972926cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3312b0aa3ddfb36f # load x3 with value 0x3312b0aa3ddfb36f
sd x3, 0(x2) # store 0x3312b0aa3ddfb36f in memory
fld f3, 0(x2) # load 0x3312b0aa3ddfb36f from memory into f3
li x3, 0x56f35dccc63d3f40 # load x3 with value 0x56f35dccc63d3f40
sd x3, 0(x2) # store 0x56f35dccc63d3f40 in memory
fld f21, 0(x2) # load 0x56f35dccc63d3f40 from memory into f21
fmul.d f11, f3, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x23, 0x00927ac036c944d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbf4fa614342206b # load x3 with value 0xfbf4fa614342206b
sd x3, 0(x2) # store 0xfbf4fa614342206b in memory
fld f3, 0(x2) # load 0xfbf4fa614342206b from memory into f3
li x3, 0x715de11bd695f19e # load x3 with value 0x715de11bd695f19e
sd x3, 0(x2) # store 0x715de11bd695f19e in memory
fld f22, 0(x2) # load 0x715de11bd695f19e from memory into f22
fmul.d f23, f3, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x22, 0xd0af508a013c5a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e854e4c945a0d6e # load x3 with value 0x4e854e4c945a0d6e
sd x3, 0(x2) # store 0x4e854e4c945a0d6e in memory
fld f28, 0(x2) # load 0x4e854e4c945a0d6e from memory into f28
li x3, 0x86473be6909c024c # load x3 with value 0x86473be6909c024c
sd x3, 0(x2) # store 0x86473be6909c024c in memory
fld f23, 0(x2) # load 0x86473be6909c024c from memory into f23
fmul.d f22, f28, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0x77898cf48ed1a5ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd9c2f1118a874ae # load x3 with value 0xcd9c2f1118a874ae
sd x3, 0(x2) # store 0xcd9c2f1118a874ae in memory
fld f6, 0(x2) # load 0xcd9c2f1118a874ae from memory into f6
li x3, 0x5f731f1a1252a18a # load x3 with value 0x5f731f1a1252a18a
sd x3, 0(x2) # store 0x5f731f1a1252a18a in memory
fld f24, 0(x2) # load 0x5f731f1a1252a18a from memory into f24
fmul.d f1, f6, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x28, 0x09b0e24c6a221db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf06b1dbf028a2466 # load x3 with value 0xf06b1dbf028a2466
sd x3, 0(x2) # store 0xf06b1dbf028a2466 in memory
fld f29, 0(x2) # load 0xf06b1dbf028a2466 from memory into f29
li x3, 0xf6c03cf53fb783dc # load x3 with value 0xf6c03cf53fb783dc
sd x3, 0(x2) # store 0xf6c03cf53fb783dc in memory
fld f25, 0(x2) # load 0xf6c03cf53fb783dc from memory into f25
fmul.d f28, f29, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x18, 0x9068cfbc21950fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ddb58ab4b1fe44c # load x3 with value 0x8ddb58ab4b1fe44c
sd x3, 0(x2) # store 0x8ddb58ab4b1fe44c in memory
fld f14, 0(x2) # load 0x8ddb58ab4b1fe44c from memory into f14
li x3, 0xb36a532d0f50c348 # load x3 with value 0xb36a532d0f50c348
sd x3, 0(x2) # store 0xb36a532d0f50c348 in memory
fld f26, 0(x2) # load 0xb36a532d0f50c348 from memory into f26
fmul.d f18, f14, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x4, 0xbea3e15daa7f0c4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9761805ca77d3250 # load x3 with value 0x9761805ca77d3250
sd x3, 0(x2) # store 0x9761805ca77d3250 in memory
fld f8, 0(x2) # load 0x9761805ca77d3250 from memory into f8
li x3, 0x5e44c75d2785768a # load x3 with value 0x5e44c75d2785768a
sd x3, 0(x2) # store 0x5e44c75d2785768a in memory
fld f27, 0(x2) # load 0x5e44c75d2785768a from memory into f27
fmul.d f4, f8, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x4, 0x432bc93f0d7ffaca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc052c949f501b686 # load x3 with value 0xc052c949f501b686
sd x3, 0(x2) # store 0xc052c949f501b686 in memory
fld f15, 0(x2) # load 0xc052c949f501b686 from memory into f15
li x3, 0xce7755b31f564ca9 # load x3 with value 0xce7755b31f564ca9
sd x3, 0(x2) # store 0xce7755b31f564ca9 in memory
fld f28, 0(x2) # load 0xce7755b31f564ca9 from memory into f28
fmul.d f4, f15, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x27, 0xd7f00c9ce0b96291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd9721caacde9385 # load x3 with value 0xfd9721caacde9385
sd x3, 0(x2) # store 0xfd9721caacde9385 in memory
fld f25, 0(x2) # load 0xfd9721caacde9385 from memory into f25
li x3, 0x975ae3070ce7f24e # load x3 with value 0x975ae3070ce7f24e
sd x3, 0(x2) # store 0x975ae3070ce7f24e in memory
fld f29, 0(x2) # load 0x975ae3070ce7f24e from memory into f29
fmul.d f27, f25, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x28, 0x5bc4e1077e89355c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa79f7217384e2233 # load x3 with value 0xa79f7217384e2233
sd x3, 0(x2) # store 0xa79f7217384e2233 in memory
fld f3, 0(x2) # load 0xa79f7217384e2233 from memory into f3
li x3, 0x07acc5b2ce46cf9a # load x3 with value 0x07acc5b2ce46cf9a
sd x3, 0(x2) # store 0x07acc5b2ce46cf9a in memory
fld f30, 0(x2) # load 0x07acc5b2ce46cf9a from memory into f30
fmul.d f28, f3, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x14, 0xe533caceb41a87b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7637d1941f950314 # load x3 with value 0x7637d1941f950314
sd x3, 0(x2) # store 0x7637d1941f950314 in memory
fld f20, 0(x2) # load 0x7637d1941f950314 from memory into f20
li x3, 0xe88dcf696d80ae0c # load x3 with value 0xe88dcf696d80ae0c
sd x3, 0(x2) # store 0xe88dcf696d80ae0c in memory
fld f31, 0(x2) # load 0xe88dcf696d80ae0c from memory into f31
fmul.d f14, f20, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
