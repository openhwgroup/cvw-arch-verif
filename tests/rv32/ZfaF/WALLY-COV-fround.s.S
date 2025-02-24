///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaF//WALLY-COV-fround.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.072845
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard war test

# Testcase cmp_gpr_hazard war test

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x4c51fb03 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xc2587a87 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x5f374a63 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x71aaa985 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xddc3a491 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x3333eb49 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x3cfbcaf5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x190ec177 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x243a74fc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x3d19646e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x5ee012fc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x04d7b9ff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x4761d243 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x255ab930 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xa2610ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xbf191c8e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xd25258c1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xb5d99be0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xe41ebd35 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x1cd32479 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xdda1ad3a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x0f700df2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xd84d38ac # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x71f4bebe # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x036d41f6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x56531db1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x7bdfb34e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xffc73828 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x4b96a76c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x797c3b92 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x24455171 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xc0591d2d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xf133d380 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xcfbf9d59 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x562afbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x2d984646 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x2ff0b944 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x2c2db1d2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xa98a2008 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xca0ddc97 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x66e66a99 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x039a0485 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xb8ddd4df # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xc75522cd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x1a800253 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xf7bceff7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xd076bd74 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x9ab4652a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x9100a3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x44ffa079 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x0254524e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x9ec4fad6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xb4b636df # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x586e5907 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xac23f90e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x313683af # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x2724d506 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x8ef2f7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x69386c95 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xc1d55b27 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x55bf2393 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x7e50e937 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x24387fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xb8a8c926 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x29, 0x066d53bc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x5, 0x52559e4c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x24, 0x79ca8c4b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x23, 0xacea700b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x11, 0x8ee88ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x2, 0x20ec3bcb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x25, 0x89480c31 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x5, 0xf8221fbe # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x25, 0x13a70fae # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x28, 0xab2e171c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x18, 0xa55d96e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x1, 0xfc3928ac # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x25, 0x578b29c2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x9, 0x55e2db61 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x13, 0x0bac5192 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x26, 0x8f0b0fdd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x23, 0xe771b431 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x26, 0x58f6e1db # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x6, 0xc0ad8fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x20, 0x92c5ef92 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x22, 0x431e8ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x3, 0x7159a700 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x26, 0x7979e235 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x2, 0xabe8feb2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x7, 0x648d8076 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x26, 0x9435baac # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_frm
li x9, 0x96f090f0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x090bd5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x05d70630 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x28723250 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x87a5333e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x564023e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x56df03c1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xafd1597b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x95f89700 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xdb31d95b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xda2c121c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x50577bae # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x9a70c7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x5c8e4f61 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xef974aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xcc0275fc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xff8a5a48 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1a9c3f12 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xd70330e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x3e3eda21 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x1e273f5f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcbfd1a1f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x293aa9cf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x09666b9a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x277b3e1a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x16780ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xba062eba # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0af327c6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xdfb89c49 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb20a676d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xaba52e35 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb01abb18 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x5d444f7a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f0)
li x7, 0x8728bbe0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f1)
li x17, 0x531d4579 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0x725169b4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f3)
li x28, 0x0c99507b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0xcc73ad16 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f5)
li x9, 0x74d32059 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0x272ed023 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f7)
li x1, 0x0d30d00d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f8)
li x28, 0xe8cb5445 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f9)
li x15, 0x0c2f0b3c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f10)
li x20, 0xa83783e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f11)
li x22, 0xf5b6e95f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f12)
li x18, 0x7795e30c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0xf32e8f0e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f14)
li x30, 0xf519f511 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0x1f8bfa4f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f16)
li x10, 0x9ebba2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f17)
li x9, 0xa6037435 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f18)
li x10, 0x8c4ce608 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f19)
li x26, 0x5be21a42 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f20)
li x3, 0xb48430dc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0x5c23a75d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0xf226e4af # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f23)
li x4, 0x91433934 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f24)
li x18, 0x1b7c91ff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0xb4499dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f26)
li x27, 0x2c1fbd4b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f27)
li x24, 0xfd8ca18d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f28)
li x25, 0x39fecf7c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0xb41251f4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f30)
li x28, 0x48ef6489 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0x1ab02886 # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
