///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaZfh//WALLY-COV-fli.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.135206
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

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xb7ff4b09 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xf40d12ff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x8bbb5c7b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1b3b68c0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x7375f13e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x19ab9744 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xf5125cbf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x0a764d2d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x769fa0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x6e903e98 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0a50d65e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x9855a990 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc1ee4d90 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x0fc694ad # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x1ff3706a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x1eac1aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb88b6081 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x62f06396 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc787969e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xd9c525fb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x062bd696 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xc386a4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x2331191c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x84d67f09 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xd085399b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xdeb1f9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x686656f3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xfdd3d606 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x996a6720 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe69653cf # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb8562011 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1923cf8d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f0)
li x16, 0x8cbc7371 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x66fc4571 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f2)
li x22, 0x5da5bd91 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f3)
li x18, 0x16ec448d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f4)
li x27, 0x898163c5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f5)
li x24, 0x550cb973 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f6)
li x22, 0xddb8c54b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f7)
li x15, 0x2a72b3db # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0x06e4b50a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f9)
li x11, 0xef6bf51c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f10)
li x19, 0x814e9570 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f11)
li x10, 0x84e61dfb # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f12)
li x17, 0x25fdd03a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f13)
li x25, 0x1eb45a39 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0xa87f0519 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f15)
li x22, 0x5f6c04b3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f16)
li x16, 0x324425b4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f17)
li x5, 0xf5eeccfa # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0x6a44243f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f19)
li x12, 0xea027f8f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f20)
li x7, 0xe2f8f625 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x93798263 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0xe2e5aab3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f23)
li x19, 0x32122986 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0x4371f9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f25)
li x31, 0xad4c7526 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0xa0fc34c4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f27)
li x25, 0x8e8aa260 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f28)
li x10, 0xf13d7d97 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0x2defaa60 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0xcdae9ace # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f31)
li x15, 0xda926bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
