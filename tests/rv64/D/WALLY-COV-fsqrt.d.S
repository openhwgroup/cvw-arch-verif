///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsqrt.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.781471
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
fsqrt.d f19, f30 # perform first operation
fsqrt.d f12, f19 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.d f13, f28 # perform first operation
fsqrt.d f19, f10 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.d f22, f11 # perform first operation
fsqrt.d f22, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.d f14, f21 # perform first operation
fsqrt.d f14, f14 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.d f8, f28 # perform first operation
fsqrt.d f28, f18 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.d f30, f27 # perform first operation
fsqrt.d f21, f8 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xc52ed4b970d235cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x210b0f5364aa7190 # load x3 with value 0x210b0f5364aa7190
sd x3, 0(x2) # store 0x210b0f5364aa7190 in memory
fld f0, 0(x2) # load 0x210b0f5364aa7190 from memory into f0
fsqrt.d f0, f0 # perform operation
fsqrt.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xd7730b9f2dc93d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dc7f7821c9acaf2 # load x3 with value 0x3dc7f7821c9acaf2
sd x3, 0(x2) # store 0x3dc7f7821c9acaf2 in memory
fld f1, 0(x2) # load 0x3dc7f7821c9acaf2 from memory into f1
fsqrt.d f1, f1 # perform operation
fsqrt.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x23c61595643fe912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2963126757fb5cb5 # load x3 with value 0x2963126757fb5cb5
sd x3, 0(x2) # store 0x2963126757fb5cb5 in memory
fld f2, 0(x2) # load 0x2963126757fb5cb5 from memory into f2
fsqrt.d f2, f2 # perform operation
fsqrt.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x50d43da31a37026d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fb91b41b085c7cf # load x3 with value 0x6fb91b41b085c7cf
sd x3, 0(x2) # store 0x6fb91b41b085c7cf in memory
fld f3, 0(x2) # load 0x6fb91b41b085c7cf from memory into f3
fsqrt.d f3, f3 # perform operation
fsqrt.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xb26fecdea9246276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea23c25cdfe8e9fd # load x3 with value 0xea23c25cdfe8e9fd
sd x3, 0(x2) # store 0xea23c25cdfe8e9fd in memory
fld f4, 0(x2) # load 0xea23c25cdfe8e9fd from memory into f4
fsqrt.d f4, f4 # perform operation
fsqrt.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x3af0dc33843b1b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdd0458502a7d89d # load x3 with value 0xfdd0458502a7d89d
sd x3, 0(x2) # store 0xfdd0458502a7d89d in memory
fld f5, 0(x2) # load 0xfdd0458502a7d89d from memory into f5
fsqrt.d f5, f5 # perform operation
fsqrt.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x965941402246ad21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc091c7226bdf3f27 # load x3 with value 0xc091c7226bdf3f27
sd x3, 0(x2) # store 0xc091c7226bdf3f27 in memory
fld f6, 0(x2) # load 0xc091c7226bdf3f27 from memory into f6
fsqrt.d f6, f6 # perform operation
fsqrt.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xeb15f4f709fb7046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8afa44745b775c3f # load x3 with value 0x8afa44745b775c3f
sd x3, 0(x2) # store 0x8afa44745b775c3f in memory
fld f7, 0(x2) # load 0x8afa44745b775c3f from memory into f7
fsqrt.d f7, f7 # perform operation
fsqrt.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x4e8fe32ff49d13f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7497c1398b1a1e88 # load x3 with value 0x7497c1398b1a1e88
sd x3, 0(x2) # store 0x7497c1398b1a1e88 in memory
fld f8, 0(x2) # load 0x7497c1398b1a1e88 from memory into f8
fsqrt.d f8, f8 # perform operation
fsqrt.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xaab6b8d39f02ac01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7321ad9d08d1f895 # load x3 with value 0x7321ad9d08d1f895
sd x3, 0(x2) # store 0x7321ad9d08d1f895 in memory
fld f9, 0(x2) # load 0x7321ad9d08d1f895 from memory into f9
fsqrt.d f9, f9 # perform operation
fsqrt.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x0c7b8978e30f7d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfebc1fb04fca3667 # load x3 with value 0xfebc1fb04fca3667
sd x3, 0(x2) # store 0xfebc1fb04fca3667 in memory
fld f10, 0(x2) # load 0xfebc1fb04fca3667 from memory into f10
fsqrt.d f10, f10 # perform operation
fsqrt.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x16162e80b4c3176d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad86b33ba3f4043b # load x3 with value 0xad86b33ba3f4043b
sd x3, 0(x2) # store 0xad86b33ba3f4043b in memory
fld f11, 0(x2) # load 0xad86b33ba3f4043b from memory into f11
fsqrt.d f11, f11 # perform operation
fsqrt.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x151df9262d3af06e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87a37b2cc9c7f96f # load x3 with value 0x87a37b2cc9c7f96f
sd x3, 0(x2) # store 0x87a37b2cc9c7f96f in memory
fld f12, 0(x2) # load 0x87a37b2cc9c7f96f from memory into f12
fsqrt.d f12, f12 # perform operation
fsqrt.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xb65dc38eec29eafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07868dcb5b4d04e4 # load x3 with value 0x07868dcb5b4d04e4
sd x3, 0(x2) # store 0x07868dcb5b4d04e4 in memory
fld f13, 0(x2) # load 0x07868dcb5b4d04e4 from memory into f13
fsqrt.d f13, f13 # perform operation
fsqrt.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x10e28a1b36f7a3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa463f2b6ccd0717d # load x3 with value 0xa463f2b6ccd0717d
sd x3, 0(x2) # store 0xa463f2b6ccd0717d in memory
fld f14, 0(x2) # load 0xa463f2b6ccd0717d from memory into f14
fsqrt.d f14, f14 # perform operation
fsqrt.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xb801e849bd16618c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x534b8ec567f0de7d # load x3 with value 0x534b8ec567f0de7d
sd x3, 0(x2) # store 0x534b8ec567f0de7d in memory
fld f15, 0(x2) # load 0x534b8ec567f0de7d from memory into f15
fsqrt.d f15, f15 # perform operation
fsqrt.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x84d25d9baf3c2cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47f159672c8a496a # load x3 with value 0x47f159672c8a496a
sd x3, 0(x2) # store 0x47f159672c8a496a in memory
fld f16, 0(x2) # load 0x47f159672c8a496a from memory into f16
fsqrt.d f16, f16 # perform operation
fsqrt.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x5bd13a1345a97995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e0d271a34ef788 # load x3 with value 0x67e0d271a34ef788
sd x3, 0(x2) # store 0x67e0d271a34ef788 in memory
fld f17, 0(x2) # load 0x67e0d271a34ef788 from memory into f17
fsqrt.d f17, f17 # perform operation
fsqrt.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x91cce1d0a28a9454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34747169fc9fad45 # load x3 with value 0x34747169fc9fad45
sd x3, 0(x2) # store 0x34747169fc9fad45 in memory
fld f18, 0(x2) # load 0x34747169fc9fad45 from memory into f18
fsqrt.d f18, f18 # perform operation
fsqrt.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x02af21c1b4a0ac26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa13a9ce3ba78b288 # load x3 with value 0xa13a9ce3ba78b288
sd x3, 0(x2) # store 0xa13a9ce3ba78b288 in memory
fld f19, 0(x2) # load 0xa13a9ce3ba78b288 from memory into f19
fsqrt.d f19, f19 # perform operation
fsqrt.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x66875d6407abf871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd48085c74743d5e6 # load x3 with value 0xd48085c74743d5e6
sd x3, 0(x2) # store 0xd48085c74743d5e6 in memory
fld f20, 0(x2) # load 0xd48085c74743d5e6 from memory into f20
fsqrt.d f20, f20 # perform operation
fsqrt.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xeb721ddd658ab232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x729278ea7a380f75 # load x3 with value 0x729278ea7a380f75
sd x3, 0(x2) # store 0x729278ea7a380f75 in memory
fld f21, 0(x2) # load 0x729278ea7a380f75 from memory into f21
fsqrt.d f21, f21 # perform operation
fsqrt.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xd65b0a519727fd84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74afabb68afbe006 # load x3 with value 0x74afabb68afbe006
sd x3, 0(x2) # store 0x74afabb68afbe006 in memory
fld f22, 0(x2) # load 0x74afabb68afbe006 from memory into f22
fsqrt.d f22, f22 # perform operation
fsqrt.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x1cf6741feb9c0df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66a4c34151e2aaf5 # load x3 with value 0x66a4c34151e2aaf5
sd x3, 0(x2) # store 0x66a4c34151e2aaf5 in memory
fld f23, 0(x2) # load 0x66a4c34151e2aaf5 from memory into f23
fsqrt.d f23, f23 # perform operation
fsqrt.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xf33552e4289cf075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2d363eb6f6283c9 # load x3 with value 0xd2d363eb6f6283c9
sd x3, 0(x2) # store 0xd2d363eb6f6283c9 in memory
fld f24, 0(x2) # load 0xd2d363eb6f6283c9 from memory into f24
fsqrt.d f24, f24 # perform operation
fsqrt.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x0a3650528df67fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6c4a58fc0e33f5f # load x3 with value 0xe6c4a58fc0e33f5f
sd x3, 0(x2) # store 0xe6c4a58fc0e33f5f in memory
fld f25, 0(x2) # load 0xe6c4a58fc0e33f5f from memory into f25
fsqrt.d f25, f25 # perform operation
fsqrt.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x56e590dde7f97e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78ec1ec258c29705 # load x3 with value 0x78ec1ec258c29705
sd x3, 0(x2) # store 0x78ec1ec258c29705 in memory
fld f26, 0(x2) # load 0x78ec1ec258c29705 from memory into f26
fsqrt.d f26, f26 # perform operation
fsqrt.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x281224d19d322f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0488681eca474d2 # load x3 with value 0xd0488681eca474d2
sd x3, 0(x2) # store 0xd0488681eca474d2 in memory
fld f27, 0(x2) # load 0xd0488681eca474d2 from memory into f27
fsqrt.d f27, f27 # perform operation
fsqrt.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xd3a82299055232a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87142d6dfc2882db # load x3 with value 0x87142d6dfc2882db
sd x3, 0(x2) # store 0x87142d6dfc2882db in memory
fld f28, 0(x2) # load 0x87142d6dfc2882db from memory into f28
fsqrt.d f28, f28 # perform operation
fsqrt.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xf9e42174c514b7ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdae4783b6fc53564 # load x3 with value 0xdae4783b6fc53564
sd x3, 0(x2) # store 0xdae4783b6fc53564 in memory
fld f29, 0(x2) # load 0xdae4783b6fc53564 from memory into f29
fsqrt.d f29, f29 # perform operation
fsqrt.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x97b4ddb5bbb5a75a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd27f165a47054a83 # load x3 with value 0xd27f165a47054a83
sd x3, 0(x2) # store 0xd27f165a47054a83 in memory
fld f30, 0(x2) # load 0xd27f165a47054a83 from memory into f30
fsqrt.d f30, f30 # perform operation
fsqrt.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xecd67c6d2b2970ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa88ffea6bc034b1a # load x3 with value 0xa88ffea6bc034b1a
sd x3, 0(x2) # store 0xa88ffea6bc034b1a in memory
fld f31, 0(x2) # load 0xa88ffea6bc034b1a from memory into f31
fsqrt.d f31, f31 # perform operation
fsqrt.d f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0x7d036e116c9075f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fsqrt.d f27, f15 # perform operation
fsqrt.d f27, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x17, 0x4f364a97a6d49346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fsqrt.d f17, f22 # perform operation
fsqrt.d f17, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x18, 0xbf4305deb75ca891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f16, 0(x2) # load 0x3ff0000000000000 from memory into f16
fsqrt.d f18, f16 # perform operation
fsqrt.d f18, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x26, 0x2bad57255d76955a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fsqrt.d f26, f14 # perform operation
fsqrt.d f26, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x13, 0xaca2fd188505521d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f26, 0(x2) # load 0x3ff8000000000000 from memory into f26
fsqrt.d f13, f26 # perform operation
fsqrt.d f13, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x8, 0x96e9c1ae6c496a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fsqrt.d f8, f3 # perform operation
fsqrt.d f8, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x23, 0xaa8d35c8fda72df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f29, 0(x2) # load 0x4000000000000000 from memory into f29
fsqrt.d f23, f29 # perform operation
fsqrt.d f23, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x19, 0xf66ed0c86f3a8bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fsqrt.d f19, f23 # perform operation
fsqrt.d f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x12, 0xa0f8072373f23bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fsqrt.d f12, f5 # perform operation
fsqrt.d f12, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x6, 0x3fc77a02af32c8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
fsqrt.d f6, f11 # perform operation
fsqrt.d f6, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x15, 0x4ee1e6c95db1313e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fsqrt.d f15, f31 # perform operation
fsqrt.d f15, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x8, 0x6a38212ef4118ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
fsqrt.d f8, f2 # perform operation
fsqrt.d f8, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x5, 0xf0c2b35ef69ceb3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
fsqrt.d f5, f31 # perform operation
fsqrt.d f5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x3, 0xf4236287aad1d111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
fsqrt.d f3, f25 # perform operation
fsqrt.d f3, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x29, 0x2c03d9d832cca9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fsqrt.d f29, f28 # perform operation
fsqrt.d f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x15, 0xe21380bbae3b5bac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f21, 0(x2) # load 0x8008000000000000 from memory into f21
fsqrt.d f15, f21 # perform operation
fsqrt.d f15, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x16, 0x265856e246fbb9a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f26, 0(x2) # load 0x0000000000000001 from memory into f26
fsqrt.d f16, f26 # perform operation
fsqrt.d f16, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x23, 0x7667b0f2b1600162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fsqrt.d f23, f5 # perform operation
fsqrt.d f23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x1, 0x26d3252db37ced37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fsqrt.d f1, f14 # perform operation
fsqrt.d f1, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x10, 0xeddbfb04fb56b154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fsqrt.d f10, f12 # perform operation
fsqrt.d f10, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x8, 0x6c26345465a6b45d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fsqrt.d f8, f22 # perform operation
fsqrt.d f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x17, 0x256dec53cde6342b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fsqrt.d f17, f19 # perform operation
fsqrt.d f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x10, 0x789fe790670bef2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fsqrt.d f10, f18 # perform operation
fsqrt.d f10, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x11, 0x3193c9daed245ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fsqrt.d f11, f27 # perform operation
fsqrt.d f11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x12, 0xeb04e7c5232ac53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fsqrt.d f12, f26 # perform operation
fsqrt.d f12, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x20, 0x8bf13f42386701c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fsqrt.d f20, f13 # perform operation
fsqrt.d f20, f13 # perform operation

# Testcase cp_frm
li x8, 0xf4bf25c072b90ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dcc28caa0d9ac04 # load x3 with value 0x7dcc28caa0d9ac04
sd x3, 0(x2) # store 0x7dcc28caa0d9ac04 in memory
fld f6, 0(x2) # load 0x7dcc28caa0d9ac04 from memory into f6
fsqrt.d f8, f6 # perform operation
fsqrt.d f8, f6, dyn # perform operation
fsqrt.d f8, f6, rdn # perform operation
fsqrt.d f8, f6, rmm # perform operation
fsqrt.d f8, f6, rne # perform operation
fsqrt.d f8, f6, rtz # perform operation
fsqrt.d f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.d f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.d f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.d f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.d f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.d f8, f6 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xb2585cf45802941c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf6b49dc1eea5f5c # load x3 with value 0xbf6b49dc1eea5f5c
sd x3, 0(x2) # store 0xbf6b49dc1eea5f5c in memory
fld f17, 0(x2) # load 0xbf6b49dc1eea5f5c from memory into f17
fsqrt.d f0, f17 # perform operation
fsqrt.d f0, f17 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x6d08b4bb224a931f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dd4e88d65146bc7 # load x3 with value 0x7dd4e88d65146bc7
sd x3, 0(x2) # store 0x7dd4e88d65146bc7 in memory
fld f9, 0(x2) # load 0x7dd4e88d65146bc7 from memory into f9
fsqrt.d f1, f9 # perform operation
fsqrt.d f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x066f456cd8c68c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31759fd9c06bd1a2 # load x3 with value 0x31759fd9c06bd1a2
sd x3, 0(x2) # store 0x31759fd9c06bd1a2 in memory
fld f17, 0(x2) # load 0x31759fd9c06bd1a2 from memory into f17
fsqrt.d f2, f17 # perform operation
fsqrt.d f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xded45a76dd5d44e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x393731ce009e2327 # load x3 with value 0x393731ce009e2327
sd x3, 0(x2) # store 0x393731ce009e2327 in memory
fld f31, 0(x2) # load 0x393731ce009e2327 from memory into f31
fsqrt.d f3, f31 # perform operation
fsqrt.d f3, f31 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2049ae5f047ef664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9f02092c6a43721 # load x3 with value 0xd9f02092c6a43721
sd x3, 0(x2) # store 0xd9f02092c6a43721 in memory
fld f14, 0(x2) # load 0xd9f02092c6a43721 from memory into f14
fsqrt.d f4, f14 # perform operation
fsqrt.d f4, f14 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x06ddd7f7e16bf358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc09cea3f688d0c94 # load x3 with value 0xc09cea3f688d0c94
sd x3, 0(x2) # store 0xc09cea3f688d0c94 in memory
fld f11, 0(x2) # load 0xc09cea3f688d0c94 from memory into f11
fsqrt.d f5, f11 # perform operation
fsqrt.d f5, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xd0b6acf10da3f79b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38152d732ed90bed # load x3 with value 0x38152d732ed90bed
sd x3, 0(x2) # store 0x38152d732ed90bed in memory
fld f20, 0(x2) # load 0x38152d732ed90bed from memory into f20
fsqrt.d f6, f20 # perform operation
fsqrt.d f6, f20 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x8a7b532781e0d67a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2276f3b2a6422a6 # load x3 with value 0xa2276f3b2a6422a6
sd x3, 0(x2) # store 0xa2276f3b2a6422a6 in memory
fld f22, 0(x2) # load 0xa2276f3b2a6422a6 from memory into f22
fsqrt.d f7, f22 # perform operation
fsqrt.d f7, f22 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xf8b19bc43c0218b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x438bab7bed95d158 # load x3 with value 0x438bab7bed95d158
sd x3, 0(x2) # store 0x438bab7bed95d158 in memory
fld f13, 0(x2) # load 0x438bab7bed95d158 from memory into f13
fsqrt.d f8, f13 # perform operation
fsqrt.d f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x0a691af6fe6a19a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6eaf2ef1ce4db771 # load x3 with value 0x6eaf2ef1ce4db771
sd x3, 0(x2) # store 0x6eaf2ef1ce4db771 in memory
fld f29, 0(x2) # load 0x6eaf2ef1ce4db771 from memory into f29
fsqrt.d f9, f29 # perform operation
fsqrt.d f9, f29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x24da641989c6313a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03831e854c4f42d9 # load x3 with value 0x03831e854c4f42d9
sd x3, 0(x2) # store 0x03831e854c4f42d9 in memory
fld f2, 0(x2) # load 0x03831e854c4f42d9 from memory into f2
fsqrt.d f10, f2 # perform operation
fsqrt.d f10, f2 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xcfff9bba0f6dddba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfeb05caa801552c3 # load x3 with value 0xfeb05caa801552c3
sd x3, 0(x2) # store 0xfeb05caa801552c3 in memory
fld f21, 0(x2) # load 0xfeb05caa801552c3 from memory into f21
fsqrt.d f11, f21 # perform operation
fsqrt.d f11, f21 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd6aeff2dcc55ca15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c57d80efda5205d # load x3 with value 0x8c57d80efda5205d
sd x3, 0(x2) # store 0x8c57d80efda5205d in memory
fld f16, 0(x2) # load 0x8c57d80efda5205d from memory into f16
fsqrt.d f12, f16 # perform operation
fsqrt.d f12, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x369040fb0753361f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x833e1e4ef4d0d17b # load x3 with value 0x833e1e4ef4d0d17b
sd x3, 0(x2) # store 0x833e1e4ef4d0d17b in memory
fld f7, 0(x2) # load 0x833e1e4ef4d0d17b from memory into f7
fsqrt.d f13, f7 # perform operation
fsqrt.d f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x70107629df5f8f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76a897f63031967b # load x3 with value 0x76a897f63031967b
sd x3, 0(x2) # store 0x76a897f63031967b in memory
fld f12, 0(x2) # load 0x76a897f63031967b from memory into f12
fsqrt.d f14, f12 # perform operation
fsqrt.d f14, f12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x3dbe760070e195ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ede11429274b0e4 # load x3 with value 0x2ede11429274b0e4
sd x3, 0(x2) # store 0x2ede11429274b0e4 in memory
fld f1, 0(x2) # load 0x2ede11429274b0e4 from memory into f1
fsqrt.d f15, f1 # perform operation
fsqrt.d f15, f1 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xd6424627d93353d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca2ba147587a3065 # load x3 with value 0xca2ba147587a3065
sd x3, 0(x2) # store 0xca2ba147587a3065 in memory
fld f9, 0(x2) # load 0xca2ba147587a3065 from memory into f9
fsqrt.d f16, f9 # perform operation
fsqrt.d f16, f9 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xb5bf04c0e0d62bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91e2735de59ba8f8 # load x3 with value 0x91e2735de59ba8f8
sd x3, 0(x2) # store 0x91e2735de59ba8f8 in memory
fld f1, 0(x2) # load 0x91e2735de59ba8f8 from memory into f1
fsqrt.d f17, f1 # perform operation
fsqrt.d f17, f1 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9cd40bc0a8cbdc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80adba9a0f29ecc1 # load x3 with value 0x80adba9a0f29ecc1
sd x3, 0(x2) # store 0x80adba9a0f29ecc1 in memory
fld f21, 0(x2) # load 0x80adba9a0f29ecc1 from memory into f21
fsqrt.d f18, f21 # perform operation
fsqrt.d f18, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x57f3649dd33e3584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3554a1b98aec9f4 # load x3 with value 0xb3554a1b98aec9f4
sd x3, 0(x2) # store 0xb3554a1b98aec9f4 in memory
fld f3, 0(x2) # load 0xb3554a1b98aec9f4 from memory into f3
fsqrt.d f19, f3 # perform operation
fsqrt.d f19, f3 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xa8d7ba0aca3ff8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x684a56f88e6a16a9 # load x3 with value 0x684a56f88e6a16a9
sd x3, 0(x2) # store 0x684a56f88e6a16a9 in memory
fld f2, 0(x2) # load 0x684a56f88e6a16a9 from memory into f2
fsqrt.d f20, f2 # perform operation
fsqrt.d f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf89d7dfb5cab1ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x053907712e5b5f3d # load x3 with value 0x053907712e5b5f3d
sd x3, 0(x2) # store 0x053907712e5b5f3d in memory
fld f7, 0(x2) # load 0x053907712e5b5f3d from memory into f7
fsqrt.d f21, f7 # perform operation
fsqrt.d f21, f7 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xc08315d81ed09bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c83cf26c04fda29 # load x3 with value 0x7c83cf26c04fda29
sd x3, 0(x2) # store 0x7c83cf26c04fda29 in memory
fld f24, 0(x2) # load 0x7c83cf26c04fda29 from memory into f24
fsqrt.d f22, f24 # perform operation
fsqrt.d f22, f24 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7890fc571666646b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc166783b283297e1 # load x3 with value 0xc166783b283297e1
sd x3, 0(x2) # store 0xc166783b283297e1 in memory
fld f9, 0(x2) # load 0xc166783b283297e1 from memory into f9
fsqrt.d f23, f9 # perform operation
fsqrt.d f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa5a85d09ddb3b5c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9187cd5eaa3b152 # load x3 with value 0xb9187cd5eaa3b152
sd x3, 0(x2) # store 0xb9187cd5eaa3b152 in memory
fld f3, 0(x2) # load 0xb9187cd5eaa3b152 from memory into f3
fsqrt.d f24, f3 # perform operation
fsqrt.d f24, f3 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x812a6569387b0264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c560ec8af59f304 # load x3 with value 0x6c560ec8af59f304
sd x3, 0(x2) # store 0x6c560ec8af59f304 in memory
fld f26, 0(x2) # load 0x6c560ec8af59f304 from memory into f26
fsqrt.d f25, f26 # perform operation
fsqrt.d f25, f26 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x2d1c2b45212d69d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe45fe46b54e99591 # load x3 with value 0xe45fe46b54e99591
sd x3, 0(x2) # store 0xe45fe46b54e99591 in memory
fld f19, 0(x2) # load 0xe45fe46b54e99591 from memory into f19
fsqrt.d f26, f19 # perform operation
fsqrt.d f26, f19 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x194f1df381f2f3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x816c106de84a3a24 # load x3 with value 0x816c106de84a3a24
sd x3, 0(x2) # store 0x816c106de84a3a24 in memory
fld f1, 0(x2) # load 0x816c106de84a3a24 from memory into f1
fsqrt.d f27, f1 # perform operation
fsqrt.d f27, f1 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x9e699419648281cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe5b3f150afdb5b4 # load x3 with value 0xbe5b3f150afdb5b4
sd x3, 0(x2) # store 0xbe5b3f150afdb5b4 in memory
fld f21, 0(x2) # load 0xbe5b3f150afdb5b4 from memory into f21
fsqrt.d f28, f21 # perform operation
fsqrt.d f28, f21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xabe731e1e8c23753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d35f01ad0b8d314 # load x3 with value 0x9d35f01ad0b8d314
sd x3, 0(x2) # store 0x9d35f01ad0b8d314 in memory
fld f1, 0(x2) # load 0x9d35f01ad0b8d314 from memory into f1
fsqrt.d f29, f1 # perform operation
fsqrt.d f29, f1 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf3137f40e9c14e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ec6bbca78e6d7d0 # load x3 with value 0x3ec6bbca78e6d7d0
sd x3, 0(x2) # store 0x3ec6bbca78e6d7d0 in memory
fld f6, 0(x2) # load 0x3ec6bbca78e6d7d0 from memory into f6
fsqrt.d f30, f6 # perform operation
fsqrt.d f30, f6 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7eaf3832f91a44f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19fd7739908478bb # load x3 with value 0x19fd7739908478bb
sd x3, 0(x2) # store 0x19fd7739908478bb in memory
fld f25, 0(x2) # load 0x19fd7739908478bb from memory into f25
fsqrt.d f31, f25 # perform operation
fsqrt.d f31, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x4ab5cc940dc039cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea1d089918d4bf5f # load x3 with value 0xea1d089918d4bf5f
sd x3, 0(x2) # store 0xea1d089918d4bf5f in memory
fld f0, 0(x2) # load 0xea1d089918d4bf5f from memory into f0
fsqrt.d f3, f0 # perform operation
fsqrt.d f3, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0xb4af3ecc8da1a60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6f9e2be95068e25 # load x3 with value 0xf6f9e2be95068e25
sd x3, 0(x2) # store 0xf6f9e2be95068e25 in memory
fld f1, 0(x2) # load 0xf6f9e2be95068e25 from memory into f1
fsqrt.d f2, f1 # perform operation
fsqrt.d f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0x6a08353560653fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53ee691524d39cc3 # load x3 with value 0x53ee691524d39cc3
sd x3, 0(x2) # store 0x53ee691524d39cc3 in memory
fld f2, 0(x2) # load 0x53ee691524d39cc3 from memory into f2
fsqrt.d f23, f2 # perform operation
fsqrt.d f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0x549e82eb9871ac25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30489118bdb565cb # load x3 with value 0x30489118bdb565cb
sd x3, 0(x2) # store 0x30489118bdb565cb in memory
fld f3, 0(x2) # load 0x30489118bdb565cb from memory into f3
fsqrt.d f22, f3 # perform operation
fsqrt.d f22, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x14, 0x24d4e65773d98475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3790d7878446115 # load x3 with value 0xb3790d7878446115
sd x3, 0(x2) # store 0xb3790d7878446115 in memory
fld f4, 0(x2) # load 0xb3790d7878446115 from memory into f4
fsqrt.d f14, f4 # perform operation
fsqrt.d f14, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x24, 0x2f966df7ee9fc91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29383c3580d948bd # load x3 with value 0x29383c3580d948bd
sd x3, 0(x2) # store 0x29383c3580d948bd in memory
fld f5, 0(x2) # load 0x29383c3580d948bd from memory into f5
fsqrt.d f24, f5 # perform operation
fsqrt.d f24, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x13, 0x460836071929b4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa40578999b58e01 # load x3 with value 0xfa40578999b58e01
sd x3, 0(x2) # store 0xfa40578999b58e01 in memory
fld f6, 0(x2) # load 0xfa40578999b58e01 from memory into f6
fsqrt.d f13, f6 # perform operation
fsqrt.d f13, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x27, 0xb6fe95db9b41a58e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40f813ee98c786cf # load x3 with value 0x40f813ee98c786cf
sd x3, 0(x2) # store 0x40f813ee98c786cf in memory
fld f7, 0(x2) # load 0x40f813ee98c786cf from memory into f7
fsqrt.d f27, f7 # perform operation
fsqrt.d f27, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x7, 0xe2414bc7e0ba8748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50774fb14ec8adac # load x3 with value 0x50774fb14ec8adac
sd x3, 0(x2) # store 0x50774fb14ec8adac in memory
fld f8, 0(x2) # load 0x50774fb14ec8adac from memory into f8
fsqrt.d f7, f8 # perform operation
fsqrt.d f7, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0xe5526c1b325377eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2ae9b6a3d1a730f # load x3 with value 0xb2ae9b6a3d1a730f
sd x3, 0(x2) # store 0xb2ae9b6a3d1a730f in memory
fld f9, 0(x2) # load 0xb2ae9b6a3d1a730f from memory into f9
fsqrt.d f24, f9 # perform operation
fsqrt.d f24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x8, 0x5c98b3a890550843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49c7ddcee428c6fb # load x3 with value 0x49c7ddcee428c6fb
sd x3, 0(x2) # store 0x49c7ddcee428c6fb in memory
fld f10, 0(x2) # load 0x49c7ddcee428c6fb from memory into f10
fsqrt.d f8, f10 # perform operation
fsqrt.d f8, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x2, 0x5fd505e554e79ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36756856dcfa88fc # load x3 with value 0x36756856dcfa88fc
sd x3, 0(x2) # store 0x36756856dcfa88fc in memory
fld f11, 0(x2) # load 0x36756856dcfa88fc from memory into f11
fsqrt.d f2, f11 # perform operation
fsqrt.d f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x14, 0x7b3832c86db18de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x887a9a9949bd2712 # load x3 with value 0x887a9a9949bd2712
sd x3, 0(x2) # store 0x887a9a9949bd2712 in memory
fld f12, 0(x2) # load 0x887a9a9949bd2712 from memory into f12
fsqrt.d f14, f12 # perform operation
fsqrt.d f14, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x24, 0x29376f7764f9f96a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x834f147afad76e8e # load x3 with value 0x834f147afad76e8e
sd x3, 0(x2) # store 0x834f147afad76e8e in memory
fld f13, 0(x2) # load 0x834f147afad76e8e from memory into f13
fsqrt.d f24, f13 # perform operation
fsqrt.d f24, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0xc4c5c363c836cd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8df86417d1fea23b # load x3 with value 0x8df86417d1fea23b
sd x3, 0(x2) # store 0x8df86417d1fea23b in memory
fld f14, 0(x2) # load 0x8df86417d1fea23b from memory into f14
fsqrt.d f18, f14 # perform operation
fsqrt.d f18, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x096d3f919ecd1609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9301cfd7d9a13222 # load x3 with value 0x9301cfd7d9a13222
sd x3, 0(x2) # store 0x9301cfd7d9a13222 in memory
fld f15, 0(x2) # load 0x9301cfd7d9a13222 from memory into f15
fsqrt.d f12, f15 # perform operation
fsqrt.d f12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x21, 0xad2d782288689ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56295204cb7dbf67 # load x3 with value 0x56295204cb7dbf67
sd x3, 0(x2) # store 0x56295204cb7dbf67 in memory
fld f16, 0(x2) # load 0x56295204cb7dbf67 from memory into f16
fsqrt.d f21, f16 # perform operation
fsqrt.d f21, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x26, 0xadd0cb6fad62175e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x781a0b5ff0494fe2 # load x3 with value 0x781a0b5ff0494fe2
sd x3, 0(x2) # store 0x781a0b5ff0494fe2 in memory
fld f17, 0(x2) # load 0x781a0b5ff0494fe2 from memory into f17
fsqrt.d f26, f17 # perform operation
fsqrt.d f26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x3, 0xe4c2133db1942a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf52333b9c51c5010 # load x3 with value 0xf52333b9c51c5010
sd x3, 0(x2) # store 0xf52333b9c51c5010 in memory
fld f18, 0(x2) # load 0xf52333b9c51c5010 from memory into f18
fsqrt.d f3, f18 # perform operation
fsqrt.d f3, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x25, 0xa13e14a49e070236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31ba541c4c75d7b8 # load x3 with value 0x31ba541c4c75d7b8
sd x3, 0(x2) # store 0x31ba541c4c75d7b8 in memory
fld f19, 0(x2) # load 0x31ba541c4c75d7b8 from memory into f19
fsqrt.d f25, f19 # perform operation
fsqrt.d f25, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x19, 0x0d35bedaae17a7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3010a56aafbf8c0c # load x3 with value 0x3010a56aafbf8c0c
sd x3, 0(x2) # store 0x3010a56aafbf8c0c in memory
fld f20, 0(x2) # load 0x3010a56aafbf8c0c from memory into f20
fsqrt.d f19, f20 # perform operation
fsqrt.d f19, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x15, 0x64b82a682b7d9c14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62110c1caf972ab9 # load x3 with value 0x62110c1caf972ab9
sd x3, 0(x2) # store 0x62110c1caf972ab9 in memory
fld f21, 0(x2) # load 0x62110c1caf972ab9 from memory into f21
fsqrt.d f15, f21 # perform operation
fsqrt.d f15, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x25, 0xa15a41d372ba799f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1c3aebf07b4c38e # load x3 with value 0xd1c3aebf07b4c38e
sd x3, 0(x2) # store 0xd1c3aebf07b4c38e in memory
fld f22, 0(x2) # load 0xd1c3aebf07b4c38e from memory into f22
fsqrt.d f25, f22 # perform operation
fsqrt.d f25, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0x7b7b62f246586566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17840735db77f15c # load x3 with value 0x17840735db77f15c
sd x3, 0(x2) # store 0x17840735db77f15c in memory
fld f23, 0(x2) # load 0x17840735db77f15c from memory into f23
fsqrt.d f20, f23 # perform operation
fsqrt.d f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x28, 0x4bdb888f8cfdf916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7d1dca07b6151a6 # load x3 with value 0xa7d1dca07b6151a6
sd x3, 0(x2) # store 0xa7d1dca07b6151a6 in memory
fld f24, 0(x2) # load 0xa7d1dca07b6151a6 from memory into f24
fsqrt.d f28, f24 # perform operation
fsqrt.d f28, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x9, 0xcf546cad310d43be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfcef2ce9695f363c # load x3 with value 0xfcef2ce9695f363c
sd x3, 0(x2) # store 0xfcef2ce9695f363c in memory
fld f25, 0(x2) # load 0xfcef2ce9695f363c from memory into f25
fsqrt.d f9, f25 # perform operation
fsqrt.d f9, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x8, 0xd9618c27ff2215a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdde0ba577ec65a0a # load x3 with value 0xdde0ba577ec65a0a
sd x3, 0(x2) # store 0xdde0ba577ec65a0a in memory
fld f26, 0(x2) # load 0xdde0ba577ec65a0a from memory into f26
fsqrt.d f8, f26 # perform operation
fsqrt.d f8, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x13, 0x8ebbb00539ef61e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ff4c6f8a29e0cb9 # load x3 with value 0x2ff4c6f8a29e0cb9
sd x3, 0(x2) # store 0x2ff4c6f8a29e0cb9 in memory
fld f27, 0(x2) # load 0x2ff4c6f8a29e0cb9 from memory into f27
fsqrt.d f13, f27 # perform operation
fsqrt.d f13, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x6, 0x1c127e597eeb60a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf47fa4b4b1ec73a5 # load x3 with value 0xf47fa4b4b1ec73a5
sd x3, 0(x2) # store 0xf47fa4b4b1ec73a5 in memory
fld f28, 0(x2) # load 0xf47fa4b4b1ec73a5 from memory into f28
fsqrt.d f6, f28 # perform operation
fsqrt.d f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x28, 0x4f60126efc9b3cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe12b6bb781ed5099 # load x3 with value 0xe12b6bb781ed5099
sd x3, 0(x2) # store 0xe12b6bb781ed5099 in memory
fld f29, 0(x2) # load 0xe12b6bb781ed5099 from memory into f29
fsqrt.d f28, f29 # perform operation
fsqrt.d f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x12, 0x12c9d1cc114e9db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95bca7b1d4064035 # load x3 with value 0x95bca7b1d4064035
sd x3, 0(x2) # store 0x95bca7b1d4064035 in memory
fld f30, 0(x2) # load 0x95bca7b1d4064035 from memory into f30
fsqrt.d f12, f30 # perform operation
fsqrt.d f12, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x17, 0xbbff8893336e75b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae2a7fc285013d91 # load x3 with value 0xae2a7fc285013d91
sd x3, 0(x2) # store 0xae2a7fc285013d91 in memory
fld f31, 0(x2) # load 0xae2a7fc285013d91 from memory into f31
fsqrt.d f17, f31 # perform operation
fsqrt.d f17, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
