///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsgnjx.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.842505
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


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x25, 0x1f7c287ce1e63cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0xf5f2c2af1b556089 # load x3 with value 0xf5f2c2af1b556089
sw x3, 0(x2) # store 0xf5f2c2af1b556089 in memory
flw f7, 0(x2) # load 0xf5f2c2af1b556089 from memory into f7
fsgnjx.s f25, f6, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x18, 0xb7198764925996e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x828a3124c453d763 # load x3 with value 0x828a3124c453d763
sw x3, 0(x2) # store 0x828a3124c453d763 in memory
flw f20, 0(x2) # load 0x828a3124c453d763 from memory into f20
fsgnjx.s f18, f31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x21, 0x850f9a0bf843e605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x537fe424736fccc7 # load x3 with value 0x537fe424736fccc7
sw x3, 0(x2) # store 0x537fe424736fccc7 in memory
flw f28, 0(x2) # load 0x537fe424736fccc7 from memory into f28
fsgnjx.s f21, f5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x26, 0x552c29edfb228514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0xe275bc3428f3112e # load x3 with value 0xe275bc3428f3112e
sw x3, 0(x2) # store 0xe275bc3428f3112e in memory
flw f2, 0(x2) # load 0xe275bc3428f3112e from memory into f2
fsgnjx.s f26, f27, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x27, 0x8908b5a44d3bcb9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x6e2c176896a6f407 # load x3 with value 0x6e2c176896a6f407
sw x3, 0(x2) # store 0x6e2c176896a6f407 in memory
flw f16, 0(x2) # load 0x6e2c176896a6f407 from memory into f16
fsgnjx.s f27, f6, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x21, 0x7a6c213547fb47ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0x9f5761ae31384bdf # load x3 with value 0x9f5761ae31384bdf
sw x3, 0(x2) # store 0x9f5761ae31384bdf in memory
flw f17, 0(x2) # load 0x9f5761ae31384bdf from memory into f17
fsgnjx.s f21, f1, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x19, 0x2fef9e1266583242 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0xbaff295b898e2f64 # load x3 with value 0xbaff295b898e2f64
sw x3, 0(x2) # store 0xbaff295b898e2f64 in memory
flw f28, 0(x2) # load 0xbaff295b898e2f64 from memory into f28
fsgnjx.s f19, f26, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x28, 0x00f4478a7364c52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0x9283f62615831d77 # load x3 with value 0x9283f62615831d77
sw x3, 0(x2) # store 0x9283f62615831d77 in memory
flw f12, 0(x2) # load 0x9283f62615831d77 from memory into f12
fsgnjx.s f28, f6, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x17, 0x58b772491c0b4c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x2cefba180fb37891 # load x3 with value 0x2cefba180fb37891
sw x3, 0(x2) # store 0x2cefba180fb37891 in memory
flw f24, 0(x2) # load 0x2cefba180fb37891 from memory into f24
fsgnjx.s f17, f3, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x7, 0x005b05346d5e751f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x6ec6864b20e8d1e2 # load x3 with value 0x6ec6864b20e8d1e2
sw x3, 0(x2) # store 0x6ec6864b20e8d1e2 in memory
flw f18, 0(x2) # load 0x6ec6864b20e8d1e2 from memory into f18
fsgnjx.s f7, f28, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x14, 0x939f1cd7da7b7600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0xd476d98b51e15fcc # load x3 with value 0xd476d98b51e15fcc
sw x3, 0(x2) # store 0xd476d98b51e15fcc in memory
flw f7, 0(x2) # load 0xd476d98b51e15fcc from memory into f7
fsgnjx.s f14, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x20, 0x65d37da6b3c64296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x91a5fdcab6749b32 # load x3 with value 0x91a5fdcab6749b32
sw x3, 0(x2) # store 0x91a5fdcab6749b32 in memory
flw f18, 0(x2) # load 0x91a5fdcab6749b32 from memory into f18
fsgnjx.s f20, f31, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x29, 0x24cb6534b926a1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x18a9d28306155541 # load x3 with value 0x18a9d28306155541
sw x3, 0(x2) # store 0x18a9d28306155541 in memory
flw f16, 0(x2) # load 0x18a9d28306155541 from memory into f16
fsgnjx.s f29, f15, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x17, 0x21be28228dc0b346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x21801e89fced0b79 # load x3 with value 0x21801e89fced0b79
sw x3, 0(x2) # store 0x21801e89fced0b79 in memory
flw f16, 0(x2) # load 0x21801e89fced0b79 from memory into f16
fsgnjx.s f17, f2, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x28, 0xa119e2c421caec10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x5730e0bd8330ac78 # load x3 with value 0x5730e0bd8330ac78
sw x3, 0(x2) # store 0x5730e0bd8330ac78 in memory
flw f10, 0(x2) # load 0x5730e0bd8330ac78 from memory into f10
fsgnjx.s f28, f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x14, 0xd5862013ba26b931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0xa22870e31e08cd3b # load x3 with value 0xa22870e31e08cd3b
sw x3, 0(x2) # store 0xa22870e31e08cd3b in memory
flw f17, 0(x2) # load 0xa22870e31e08cd3b from memory into f17
fsgnjx.s f14, f1, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x11, 0xef04e352923671fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x75c314f1dabae09 # load x3 with value 0x75c314f1dabae09
sw x3, 0(x2) # store 0x75c314f1dabae09 in memory
flw f21, 0(x2) # load 0x75c314f1dabae09 from memory into f21
fsgnjx.s f11, f7, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0x10fb138baae6960a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0xb28cb9e2b477079a # load x3 with value 0xb28cb9e2b477079a
sw x3, 0(x2) # store 0xb28cb9e2b477079a in memory
flw f3, 0(x2) # load 0xb28cb9e2b477079a from memory into f3
fsgnjx.s f14, f12, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x22, 0xa7ee3f3d835dbbed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0xe9cd77db016bf41f # load x3 with value 0xe9cd77db016bf41f
sw x3, 0(x2) # store 0xe9cd77db016bf41f in memory
flw f3, 0(x2) # load 0xe9cd77db016bf41f from memory into f3
fsgnjx.s f22, f17, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x17, 0xee90fae29450d94f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7254fed45ff0a72c # load x3 with value 0x7254fed45ff0a72c
sw x3, 0(x2) # store 0x7254fed45ff0a72c in memory
flw f3, 0(x2) # load 0x7254fed45ff0a72c from memory into f3
fsgnjx.s f17, f30, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x20, 0x9fa518736da1e582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
li x3, 0x44d8822328e93bcc # load x3 with value 0x44d8822328e93bcc
sw x3, 0(x2) # store 0x44d8822328e93bcc in memory
flw f26, 0(x2) # load 0x44d8822328e93bcc from memory into f26
fsgnjx.s f20, f16, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x2, 0x2546d64a154f9ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x6afa9d4c1af78d48 # load x3 with value 0x6afa9d4c1af78d48
sw x3, 0(x2) # store 0x6afa9d4c1af78d48 in memory
flw f25, 0(x2) # load 0x6afa9d4c1af78d48 from memory into f25
fsgnjx.s f2, f19, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x26, 0x488a045d9c3d14dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x1b9f483ed003c689 # load x3 with value 0x1b9f483ed003c689
sw x3, 0(x2) # store 0x1b9f483ed003c689 in memory
flw f12, 0(x2) # load 0x1b9f483ed003c689 from memory into f12
fsgnjx.s f26, f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x14, 0x5f33fbf40713a084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x7f90771890ffd588 # load x3 with value 0x7f90771890ffd588
sw x3, 0(x2) # store 0x7f90771890ffd588 in memory
flw f4, 0(x2) # load 0x7f90771890ffd588 from memory into f4
fsgnjx.s f14, f6, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x19, 0x442ab84ee737ee13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0xa067c9ca0a970ead # load x3 with value 0xa067c9ca0a970ead
sw x3, 0(x2) # store 0xa067c9ca0a970ead in memory
flw f27, 0(x2) # load 0xa067c9ca0a970ead from memory into f27
fsgnjx.s f19, f11, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x2, 0xd2a71cc83f433074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0xb9f075b566df658 # load x3 with value 0xb9f075b566df658
sw x3, 0(x2) # store 0xb9f075b566df658 in memory
flw f29, 0(x2) # load 0xb9f075b566df658 from memory into f29
fsgnjx.s f2, f3, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x23, 0xdf7f2968b07f8849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71e61f7fd0076fd9 # load x3 with value 0x71e61f7fd0076fd9
sw x3, 0(x2) # store 0x71e61f7fd0076fd9 in memory
flw f21, 0(x2) # load 0x71e61f7fd0076fd9 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsgnjx.s f23, f21, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x20, 0x7664cf248209e809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c12e8af2bc3be95 # load x3 with value 0x2c12e8af2bc3be95
sw x3, 0(x2) # store 0x2c12e8af2bc3be95 in memory
flw f23, 0(x2) # load 0x2c12e8af2bc3be95 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fsgnjx.s f20, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x26, 0x18fab06a64d87580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53c078e775f9de02 # load x3 with value 0x53c078e775f9de02
sw x3, 0(x2) # store 0x53c078e775f9de02 in memory
flw f31, 0(x2) # load 0x53c078e775f9de02 from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fsgnjx.s f26, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x22, 0x8069252c3cf97149 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5aa863c15d689dd # load x3 with value 0xb5aa863c15d689dd
sw x3, 0(x2) # store 0xb5aa863c15d689dd in memory
flw f7, 0(x2) # load 0xb5aa863c15d689dd from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fsgnjx.s f22, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x25, 0xa745c115b9e808fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x487c3452c0e6fe11 # load x3 with value 0x487c3452c0e6fe11
sw x3, 0(x2) # store 0x487c3452c0e6fe11 in memory
flw f11, 0(x2) # load 0x487c3452c0e6fe11 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fsgnjx.s f25, f11, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x27, 0x0319b3675d60814c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3881e8da30630d5e # load x3 with value 0x3881e8da30630d5e
sw x3, 0(x2) # store 0x3881e8da30630d5e in memory
flw f24, 0(x2) # load 0x3881e8da30630d5e from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fsgnjx.s f27, f24, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x14, 0xc6a1a6df8c22e0d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8596bb3fd0c52777 # load x3 with value 0x8596bb3fd0c52777
sw x3, 0(x2) # store 0x8596bb3fd0c52777 in memory
flw f28, 0(x2) # load 0x8596bb3fd0c52777 from memory into f28
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fsgnjx.s f14, f28, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x20, 0x54dca5ef41763d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3470b96f4e04bd94 # load x3 with value 0x3470b96f4e04bd94
sw x3, 0(x2) # store 0x3470b96f4e04bd94 in memory
flw f28, 0(x2) # load 0x3470b96f4e04bd94 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsgnjx.s f20, f28, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x30, 0xc0b44f079a245d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8a5a0b7f952c1b2 # load x3 with value 0xe8a5a0b7f952c1b2
sw x3, 0(x2) # store 0xe8a5a0b7f952c1b2 in memory
flw f10, 0(x2) # load 0xe8a5a0b7f952c1b2 from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fsgnjx.s f30, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x14, 0x51615ce99365d65d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x299235cef913212d # load x3 with value 0x299235cef913212d
sw x3, 0(x2) # store 0x299235cef913212d in memory
flw f13, 0(x2) # load 0x299235cef913212d from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsgnjx.s f14, f13, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x20, 0xdf62960b3ac6b122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1b773fe4e0170bb # load x3 with value 0xf1b773fe4e0170bb
sw x3, 0(x2) # store 0xf1b773fe4e0170bb in memory
flw f5, 0(x2) # load 0xf1b773fe4e0170bb from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fsgnjx.s f20, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x25, 0x87fa75f312f2e002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2f94888439ddff9 # load x3 with value 0xa2f94888439ddff9
sw x3, 0(x2) # store 0xa2f94888439ddff9 in memory
flw f7, 0(x2) # load 0xa2f94888439ddff9 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsgnjx.s f25, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x28, 0x299baafedbda95d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x840099b4b3d47136 # load x3 with value 0x840099b4b3d47136
sw x3, 0(x2) # store 0x840099b4b3d47136 in memory
flw f31, 0(x2) # load 0x840099b4b3d47136 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fsgnjx.s f28, f31, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x25, 0x6ac9bd52ba030028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8049d99aa9bb531 # load x3 with value 0xe8049d99aa9bb531
sw x3, 0(x2) # store 0xe8049d99aa9bb531 in memory
flw f18, 0(x2) # load 0xe8049d99aa9bb531 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fsgnjx.s f25, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x4, 0xb6463fd5af875af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8e3c4816a7954b8 # load x3 with value 0xa8e3c4816a7954b8
sw x3, 0(x2) # store 0xa8e3c4816a7954b8 in memory
flw f1, 0(x2) # load 0xa8e3c4816a7954b8 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fsgnjx.s f4, f1, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x31, 0x0a33a295e41219ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93bcaf41b2234141 # load x3 with value 0x93bcaf41b2234141
sw x3, 0(x2) # store 0x93bcaf41b2234141 in memory
flw f8, 0(x2) # load 0x93bcaf41b2234141 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fsgnjx.s f31, f8, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x19, 0x124ff8758d8a0093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d8554ae43f25581 # load x3 with value 0x5d8554ae43f25581
sw x3, 0(x2) # store 0x5d8554ae43f25581 in memory
flw f27, 0(x2) # load 0x5d8554ae43f25581 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fsgnjx.s f19, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x27, 0x3a1391d873908869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74052faa602cebd1 # load x3 with value 0x74052faa602cebd1
sw x3, 0(x2) # store 0x74052faa602cebd1 in memory
flw f6, 0(x2) # load 0x74052faa602cebd1 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fsgnjx.s f27, f6, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x25, 0xf8e4a3f44b6ac62a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x853fdb4c8493305a # load x3 with value 0x853fdb4c8493305a
sw x3, 0(x2) # store 0x853fdb4c8493305a in memory
flw f19, 0(x2) # load 0x853fdb4c8493305a from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsgnjx.s f25, f19, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x4, 0xdfb1e1c24703343c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f9db68273224afd # load x3 with value 0x2f9db68273224afd
sw x3, 0(x2) # store 0x2f9db68273224afd in memory
flw f13, 0(x2) # load 0x2f9db68273224afd from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fsgnjx.s f4, f13, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x29, 0xdfa10b6bc9aa2ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb03a9620349f560 # load x3 with value 0xeb03a9620349f560
sw x3, 0(x2) # store 0xeb03a9620349f560 in memory
flw f28, 0(x2) # load 0xeb03a9620349f560 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fsgnjx.s f29, f28, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x10, 0x104b1c71b916a885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa76271a0bf4b6ab1 # load x3 with value 0xa76271a0bf4b6ab1
sw x3, 0(x2) # store 0xa76271a0bf4b6ab1 in memory
flw f7, 0(x2) # load 0xa76271a0bf4b6ab1 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fsgnjx.s f10, f7, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x22, 0x6135c64201e80b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bc1e4d66d86091b # load x3 with value 0x8bc1e4d66d86091b
sw x3, 0(x2) # store 0x8bc1e4d66d86091b in memory
flw f2, 0(x2) # load 0x8bc1e4d66d86091b from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fsgnjx.s f22, f2, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x3, 0x25c19db0573479fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5e901ec80e32b0d # load x3 with value 0xf5e901ec80e32b0d
sw x3, 0(x2) # store 0xf5e901ec80e32b0d in memory
flw f14, 0(x2) # load 0xf5e901ec80e32b0d from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fsgnjx.s f3, f14, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x12, 0xa7117732188aa1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf10719c3d78fd225 # load x3 with value 0xf10719c3d78fd225
sw x3, 0(x2) # store 0xf10719c3d78fd225 in memory
flw f23, 0(x2) # load 0xf10719c3d78fd225 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fsgnjx.s f12, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x18, 0x262039141589d824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c6d5a43e8ed1e5b # load x3 with value 0x8c6d5a43e8ed1e5b
sw x3, 0(x2) # store 0x8c6d5a43e8ed1e5b in memory
flw f6, 0(x2) # load 0x8c6d5a43e8ed1e5b from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fsgnjx.s f18, f6, f23 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe2b32ac818d97d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a9b5bd9554e991c # load x3 with value 0x8a9b5bd9554e991c
sw x3, 0(x2) # store 0x8a9b5bd9554e991c in memory
flw f14, 0(x2) # load 0x8a9b5bd9554e991c from memory into f14
li x3, 0x25318a402540c964 # load x3 with value 0x25318a402540c964
sw x3, 0(x2) # store 0x25318a402540c964 in memory
flw f5, 0(x2) # load 0x25318a402540c964 from memory into f5
fsgnjx.s f0, f14, f5 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x501d248f8715a0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa24b947c03f2b5d6 # load x3 with value 0xa24b947c03f2b5d6
sw x3, 0(x2) # store 0xa24b947c03f2b5d6 in memory
flw f1, 0(x2) # load 0xa24b947c03f2b5d6 from memory into f1
li x3, 0x476efabacfc253cb # load x3 with value 0x476efabacfc253cb
sw x3, 0(x2) # store 0x476efabacfc253cb in memory
flw f11, 0(x2) # load 0x476efabacfc253cb from memory into f11
fsgnjx.s f1, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe6724b0b3c748c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x461dd028d09c6e7 # load x3 with value 0x461dd028d09c6e7
sw x3, 0(x2) # store 0x461dd028d09c6e7 in memory
flw f3, 0(x2) # load 0x461dd028d09c6e7 from memory into f3
li x3, 0x87bfbc53ead853d3 # load x3 with value 0x87bfbc53ead853d3
sw x3, 0(x2) # store 0x87bfbc53ead853d3 in memory
flw f9, 0(x2) # load 0x87bfbc53ead853d3 from memory into f9
fsgnjx.s f2, f3, f9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x8dc366261a38825a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2b50bd3efe29c69 # load x3 with value 0xd2b50bd3efe29c69
sw x3, 0(x2) # store 0xd2b50bd3efe29c69 in memory
flw f22, 0(x2) # load 0xd2b50bd3efe29c69 from memory into f22
li x3, 0x6ddb5c7892ab2259 # load x3 with value 0x6ddb5c7892ab2259
sw x3, 0(x2) # store 0x6ddb5c7892ab2259 in memory
flw f19, 0(x2) # load 0x6ddb5c7892ab2259 from memory into f19
fsgnjx.s f3, f22, f19 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4aa27d0be22197c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54f955e9d11af3f3 # load x3 with value 0x54f955e9d11af3f3
sw x3, 0(x2) # store 0x54f955e9d11af3f3 in memory
flw f23, 0(x2) # load 0x54f955e9d11af3f3 from memory into f23
li x3, 0xf8fd8a3e70a6d # load x3 with value 0xf8fd8a3e70a6d
sw x3, 0(x2) # store 0xf8fd8a3e70a6d in memory
flw f1, 0(x2) # load 0xf8fd8a3e70a6d from memory into f1
fsgnjx.s f4, f23, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x44f5678bcf92cc0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba1853b6647545c0 # load x3 with value 0xba1853b6647545c0
sw x3, 0(x2) # store 0xba1853b6647545c0 in memory
flw f15, 0(x2) # load 0xba1853b6647545c0 from memory into f15
li x3, 0x52fcc80b22e459a7 # load x3 with value 0x52fcc80b22e459a7
sw x3, 0(x2) # store 0x52fcc80b22e459a7 in memory
flw f27, 0(x2) # load 0x52fcc80b22e459a7 from memory into f27
fsgnjx.s f5, f15, f27 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xaae4a34de9dfe959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb20db0d7bb2421e # load x3 with value 0xfb20db0d7bb2421e
sw x3, 0(x2) # store 0xfb20db0d7bb2421e in memory
flw f17, 0(x2) # load 0xfb20db0d7bb2421e from memory into f17
li x3, 0x2be5550e17638833 # load x3 with value 0x2be5550e17638833
sw x3, 0(x2) # store 0x2be5550e17638833 in memory
flw f10, 0(x2) # load 0x2be5550e17638833 from memory into f10
fsgnjx.s f6, f17, f10 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1e3307439c6ac0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb43666e88526039b # load x3 with value 0xb43666e88526039b
sw x3, 0(x2) # store 0xb43666e88526039b in memory
flw f21, 0(x2) # load 0xb43666e88526039b from memory into f21
li x3, 0x6fae319b5d16bc30 # load x3 with value 0x6fae319b5d16bc30
sw x3, 0(x2) # store 0x6fae319b5d16bc30 in memory
flw f13, 0(x2) # load 0x6fae319b5d16bc30 from memory into f13
fsgnjx.s f7, f21, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xebfe95f0c850531f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28bddaedf32882f9 # load x3 with value 0x28bddaedf32882f9
sw x3, 0(x2) # store 0x28bddaedf32882f9 in memory
flw f15, 0(x2) # load 0x28bddaedf32882f9 from memory into f15
li x3, 0xf089f21c06e96ea4 # load x3 with value 0xf089f21c06e96ea4
sw x3, 0(x2) # store 0xf089f21c06e96ea4 in memory
flw f4, 0(x2) # load 0xf089f21c06e96ea4 from memory into f4
fsgnjx.s f8, f15, f4 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf6630fcc86c1372b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc09ef61fb5617a52 # load x3 with value 0xc09ef61fb5617a52
sw x3, 0(x2) # store 0xc09ef61fb5617a52 in memory
flw f17, 0(x2) # load 0xc09ef61fb5617a52 from memory into f17
li x3, 0x6e0ab3209226627d # load x3 with value 0x6e0ab3209226627d
sw x3, 0(x2) # store 0x6e0ab3209226627d in memory
flw f30, 0(x2) # load 0x6e0ab3209226627d from memory into f30
fsgnjx.s f9, f17, f30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0d0467a3bfe82c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cb70ddb72be2ea9 # load x3 with value 0x5cb70ddb72be2ea9
sw x3, 0(x2) # store 0x5cb70ddb72be2ea9 in memory
flw f4, 0(x2) # load 0x5cb70ddb72be2ea9 from memory into f4
li x3, 0x3cba7ef8c1af0e85 # load x3 with value 0x3cba7ef8c1af0e85
sw x3, 0(x2) # store 0x3cba7ef8c1af0e85 in memory
flw f15, 0(x2) # load 0x3cba7ef8c1af0e85 from memory into f15
fsgnjx.s f10, f4, f15 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x75cbf27546ba6740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cd2b74029c0c519 # load x3 with value 0x1cd2b74029c0c519
sw x3, 0(x2) # store 0x1cd2b74029c0c519 in memory
flw f1, 0(x2) # load 0x1cd2b74029c0c519 from memory into f1
li x3, 0x4cec9ecad8876e91 # load x3 with value 0x4cec9ecad8876e91
sw x3, 0(x2) # store 0x4cec9ecad8876e91 in memory
flw f7, 0(x2) # load 0x4cec9ecad8876e91 from memory into f7
fsgnjx.s f11, f1, f7 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc1796b30eaeb40ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x430af41c93341247 # load x3 with value 0x430af41c93341247
sw x3, 0(x2) # store 0x430af41c93341247 in memory
flw f20, 0(x2) # load 0x430af41c93341247 from memory into f20
li x3, 0xacbe5e5b48bb712d # load x3 with value 0xacbe5e5b48bb712d
sw x3, 0(x2) # store 0xacbe5e5b48bb712d in memory
flw f3, 0(x2) # load 0xacbe5e5b48bb712d from memory into f3
fsgnjx.s f12, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x09a52844a45938b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x500c64c4c589d662 # load x3 with value 0x500c64c4c589d662
sw x3, 0(x2) # store 0x500c64c4c589d662 in memory
flw f21, 0(x2) # load 0x500c64c4c589d662 from memory into f21
li x3, 0x848e31e82984a3c6 # load x3 with value 0x848e31e82984a3c6
sw x3, 0(x2) # store 0x848e31e82984a3c6 in memory
flw f9, 0(x2) # load 0x848e31e82984a3c6 from memory into f9
fsgnjx.s f13, f21, f9 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x9fe8d2d8d777d0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73f09fcfcb4d41d # load x3 with value 0x73f09fcfcb4d41d
sw x3, 0(x2) # store 0x73f09fcfcb4d41d in memory
flw f20, 0(x2) # load 0x73f09fcfcb4d41d from memory into f20
li x3, 0x3cdfbf033a63574f # load x3 with value 0x3cdfbf033a63574f
sw x3, 0(x2) # store 0x3cdfbf033a63574f in memory
flw f5, 0(x2) # load 0x3cdfbf033a63574f from memory into f5
fsgnjx.s f14, f20, f5 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x95b5ff43208f9abf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50867900fb3651b # load x3 with value 0x50867900fb3651b
sw x3, 0(x2) # store 0x50867900fb3651b in memory
flw f5, 0(x2) # load 0x50867900fb3651b from memory into f5
li x3, 0xeaf291c1205824ac # load x3 with value 0xeaf291c1205824ac
sw x3, 0(x2) # store 0xeaf291c1205824ac in memory
flw f11, 0(x2) # load 0xeaf291c1205824ac from memory into f11
fsgnjx.s f15, f5, f11 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x6ec6dfcba88f3a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda89189f33b8eb71 # load x3 with value 0xda89189f33b8eb71
sw x3, 0(x2) # store 0xda89189f33b8eb71 in memory
flw f8, 0(x2) # load 0xda89189f33b8eb71 from memory into f8
li x3, 0xfb82962b7e98594c # load x3 with value 0xfb82962b7e98594c
sw x3, 0(x2) # store 0xfb82962b7e98594c in memory
flw f16, 0(x2) # load 0xfb82962b7e98594c from memory into f16
fsgnjx.s f16, f8, f16 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x59d6739b8a3a6b46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6406eccb42d5ac5 # load x3 with value 0xe6406eccb42d5ac5
sw x3, 0(x2) # store 0xe6406eccb42d5ac5 in memory
flw f24, 0(x2) # load 0xe6406eccb42d5ac5 from memory into f24
li x3, 0xc0ca7ba0ed562c88 # load x3 with value 0xc0ca7ba0ed562c88
sw x3, 0(x2) # store 0xc0ca7ba0ed562c88 in memory
flw f18, 0(x2) # load 0xc0ca7ba0ed562c88 from memory into f18
fsgnjx.s f17, f24, f18 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x1101f129a3812602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x314aef67786389a8 # load x3 with value 0x314aef67786389a8
sw x3, 0(x2) # store 0x314aef67786389a8 in memory
flw f12, 0(x2) # load 0x314aef67786389a8 from memory into f12
li x3, 0x7b4d1c09fdf1839e # load x3 with value 0x7b4d1c09fdf1839e
sw x3, 0(x2) # store 0x7b4d1c09fdf1839e in memory
flw f19, 0(x2) # load 0x7b4d1c09fdf1839e from memory into f19
fsgnjx.s f18, f12, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xb1f2cf5ecff23005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2eecad03a896d6e0 # load x3 with value 0x2eecad03a896d6e0
sw x3, 0(x2) # store 0x2eecad03a896d6e0 in memory
flw f12, 0(x2) # load 0x2eecad03a896d6e0 from memory into f12
li x3, 0x1d99b6626041bd86 # load x3 with value 0x1d99b6626041bd86
sw x3, 0(x2) # store 0x1d99b6626041bd86 in memory
flw f15, 0(x2) # load 0x1d99b6626041bd86 from memory into f15
fsgnjx.s f19, f12, f15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xc8e35b6387cd79c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb66d0f07186baad6 # load x3 with value 0xb66d0f07186baad6
sw x3, 0(x2) # store 0xb66d0f07186baad6 in memory
flw f7, 0(x2) # load 0xb66d0f07186baad6 from memory into f7
li x3, 0x39903098bd594fbf # load x3 with value 0x39903098bd594fbf
sw x3, 0(x2) # store 0x39903098bd594fbf in memory
flw f31, 0(x2) # load 0x39903098bd594fbf from memory into f31
fsgnjx.s f20, f7, f31 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9c4650fa85cea69b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6217e3aecf656d72 # load x3 with value 0x6217e3aecf656d72
sw x3, 0(x2) # store 0x6217e3aecf656d72 in memory
flw f28, 0(x2) # load 0x6217e3aecf656d72 from memory into f28
li x3, 0xa0c52591e0cbd64b # load x3 with value 0xa0c52591e0cbd64b
sw x3, 0(x2) # store 0xa0c52591e0cbd64b in memory
flw f29, 0(x2) # load 0xa0c52591e0cbd64b from memory into f29
fsgnjx.s f21, f28, f29 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x45a848895b4ffc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffd7c6c3508ac96a # load x3 with value 0xffd7c6c3508ac96a
sw x3, 0(x2) # store 0xffd7c6c3508ac96a in memory
flw f3, 0(x2) # load 0xffd7c6c3508ac96a from memory into f3
li x3, 0x26b031be305c12e8 # load x3 with value 0x26b031be305c12e8
sw x3, 0(x2) # store 0x26b031be305c12e8 in memory
flw f20, 0(x2) # load 0x26b031be305c12e8 from memory into f20
fsgnjx.s f22, f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5b59e8b54a94f037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x256cb1b55c7cc148 # load x3 with value 0x256cb1b55c7cc148
sw x3, 0(x2) # store 0x256cb1b55c7cc148 in memory
flw f25, 0(x2) # load 0x256cb1b55c7cc148 from memory into f25
li x3, 0xbf7a305e1b38a54b # load x3 with value 0xbf7a305e1b38a54b
sw x3, 0(x2) # store 0xbf7a305e1b38a54b in memory
flw f16, 0(x2) # load 0xbf7a305e1b38a54b from memory into f16
fsgnjx.s f23, f25, f16 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4896b1be787c2f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6e20f1042d2f486 # load x3 with value 0xd6e20f1042d2f486
sw x3, 0(x2) # store 0xd6e20f1042d2f486 in memory
flw f30, 0(x2) # load 0xd6e20f1042d2f486 from memory into f30
li x3, 0x81379d26c9b862c9 # load x3 with value 0x81379d26c9b862c9
sw x3, 0(x2) # store 0x81379d26c9b862c9 in memory
flw f19, 0(x2) # load 0x81379d26c9b862c9 from memory into f19
fsgnjx.s f24, f30, f19 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x1893f42c6a462cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadedf3e814c1f24e # load x3 with value 0xadedf3e814c1f24e
sw x3, 0(x2) # store 0xadedf3e814c1f24e in memory
flw f11, 0(x2) # load 0xadedf3e814c1f24e from memory into f11
li x3, 0xcd1d0592b993c1a2 # load x3 with value 0xcd1d0592b993c1a2
sw x3, 0(x2) # store 0xcd1d0592b993c1a2 in memory
flw f4, 0(x2) # load 0xcd1d0592b993c1a2 from memory into f4
fsgnjx.s f25, f11, f4 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x3b38bd637b514d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe05e652dfbe7184b # load x3 with value 0xe05e652dfbe7184b
sw x3, 0(x2) # store 0xe05e652dfbe7184b in memory
flw f17, 0(x2) # load 0xe05e652dfbe7184b from memory into f17
li x3, 0x7c4925302dcf5207 # load x3 with value 0x7c4925302dcf5207
sw x3, 0(x2) # store 0x7c4925302dcf5207 in memory
flw f29, 0(x2) # load 0x7c4925302dcf5207 from memory into f29
fsgnjx.s f26, f17, f29 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd98cc1eeed2be026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7037b8638a3cf2b # load x3 with value 0xe7037b8638a3cf2b
sw x3, 0(x2) # store 0xe7037b8638a3cf2b in memory
flw f21, 0(x2) # load 0xe7037b8638a3cf2b from memory into f21
li x3, 0xc9eed3693e9dbd0c # load x3 with value 0xc9eed3693e9dbd0c
sw x3, 0(x2) # store 0xc9eed3693e9dbd0c in memory
flw f5, 0(x2) # load 0xc9eed3693e9dbd0c from memory into f5
fsgnjx.s f27, f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xe846f883613032cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51fd09640fd740d4 # load x3 with value 0x51fd09640fd740d4
sw x3, 0(x2) # store 0x51fd09640fd740d4 in memory
flw f26, 0(x2) # load 0x51fd09640fd740d4 from memory into f26
li x3, 0xec1e352fd399e56 # load x3 with value 0xec1e352fd399e56
sw x3, 0(x2) # store 0xec1e352fd399e56 in memory
flw f19, 0(x2) # load 0xec1e352fd399e56 from memory into f19
fsgnjx.s f28, f26, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x10fb4a00e07a5b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca9cc187593ca5c8 # load x3 with value 0xca9cc187593ca5c8
sw x3, 0(x2) # store 0xca9cc187593ca5c8 in memory
flw f28, 0(x2) # load 0xca9cc187593ca5c8 from memory into f28
li x3, 0x8320045b5a7ac65c # load x3 with value 0x8320045b5a7ac65c
sw x3, 0(x2) # store 0x8320045b5a7ac65c in memory
flw f4, 0(x2) # load 0x8320045b5a7ac65c from memory into f4
fsgnjx.s f29, f28, f4 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x49ba32ba74a1fda7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2792d6b32d805294 # load x3 with value 0x2792d6b32d805294
sw x3, 0(x2) # store 0x2792d6b32d805294 in memory
flw f23, 0(x2) # load 0x2792d6b32d805294 from memory into f23
li x3, 0xc8e43e879004e8ee # load x3 with value 0xc8e43e879004e8ee
sw x3, 0(x2) # store 0xc8e43e879004e8ee in memory
flw f19, 0(x2) # load 0xc8e43e879004e8ee from memory into f19
fsgnjx.s f30, f23, f19 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xb6f08ec230fcb9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe094715da51bfe1e # load x3 with value 0xe094715da51bfe1e
sw x3, 0(x2) # store 0xe094715da51bfe1e in memory
flw f20, 0(x2) # load 0xe094715da51bfe1e from memory into f20
li x3, 0x347fa632eb430639 # load x3 with value 0x347fa632eb430639
sw x3, 0(x2) # store 0x347fa632eb430639 in memory
flw f24, 0(x2) # load 0x347fa632eb430639 from memory into f24
fsgnjx.s f31, f20, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0x7369f1c00b6d58e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8838ab150e69ae92 # load x3 with value 0x8838ab150e69ae92
sw x3, 0(x2) # store 0x8838ab150e69ae92 in memory
flw f0, 0(x2) # load 0x8838ab150e69ae92 from memory into f0
li x3, 0x775e25a143940e11 # load x3 with value 0x775e25a143940e11
sw x3, 0(x2) # store 0x775e25a143940e11 in memory
flw f18, 0(x2) # load 0x775e25a143940e11 from memory into f18
fsgnjx.s f29, f0, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x30, 0xdbfd081481191383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x746ce6c7c11ae71d # load x3 with value 0x746ce6c7c11ae71d
sw x3, 0(x2) # store 0x746ce6c7c11ae71d in memory
flw f1, 0(x2) # load 0x746ce6c7c11ae71d from memory into f1
li x3, 0x77ffba886037e07c # load x3 with value 0x77ffba886037e07c
sw x3, 0(x2) # store 0x77ffba886037e07c in memory
flw f28, 0(x2) # load 0x77ffba886037e07c from memory into f28
fsgnjx.s f30, f1, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x16, 0x9f11b07ddfe6e02c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdecba59856410dd3 # load x3 with value 0xdecba59856410dd3
sw x3, 0(x2) # store 0xdecba59856410dd3 in memory
flw f2, 0(x2) # load 0xdecba59856410dd3 from memory into f2
li x3, 0xe79e529119cd8276 # load x3 with value 0xe79e529119cd8276
sw x3, 0(x2) # store 0xe79e529119cd8276 in memory
flw f1, 0(x2) # load 0xe79e529119cd8276 from memory into f1
fsgnjx.s f16, f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x3, 0x2de645d766f7b429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bc9f4d5a9bf8c88 # load x3 with value 0x6bc9f4d5a9bf8c88
sw x3, 0(x2) # store 0x6bc9f4d5a9bf8c88 in memory
flw f3, 0(x2) # load 0x6bc9f4d5a9bf8c88 from memory into f3
li x3, 0xb22993a0b4782e53 # load x3 with value 0xb22993a0b4782e53
sw x3, 0(x2) # store 0xb22993a0b4782e53 in memory
flw f30, 0(x2) # load 0xb22993a0b4782e53 from memory into f30
fsgnjx.s f3, f3, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0xc96a2ca95592d6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x966bee85a645ed76 # load x3 with value 0x966bee85a645ed76
sw x3, 0(x2) # store 0x966bee85a645ed76 in memory
flw f4, 0(x2) # load 0x966bee85a645ed76 from memory into f4
li x3, 0xed58da32ec399f # load x3 with value 0xed58da32ec399f
sw x3, 0(x2) # store 0xed58da32ec399f in memory
flw f26, 0(x2) # load 0xed58da32ec399f from memory into f26
fsgnjx.s f19, f4, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0x588b6cb3d204a4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc066e45f4a8565c8 # load x3 with value 0xc066e45f4a8565c8
sw x3, 0(x2) # store 0xc066e45f4a8565c8 in memory
flw f5, 0(x2) # load 0xc066e45f4a8565c8 from memory into f5
li x3, 0x18b27f1c175e1f39 # load x3 with value 0x18b27f1c175e1f39
sw x3, 0(x2) # store 0x18b27f1c175e1f39 in memory
flw f20, 0(x2) # load 0x18b27f1c175e1f39 from memory into f20
fsgnjx.s f8, f5, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x95c0892c4c4a8578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1481d64c6b83d816 # load x3 with value 0x1481d64c6b83d816
sw x3, 0(x2) # store 0x1481d64c6b83d816 in memory
flw f6, 0(x2) # load 0x1481d64c6b83d816 from memory into f6
li x3, 0xcca02d153bfbc873 # load x3 with value 0xcca02d153bfbc873
sw x3, 0(x2) # store 0xcca02d153bfbc873 in memory
flw f29, 0(x2) # load 0xcca02d153bfbc873 from memory into f29
fsgnjx.s f12, f6, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x2e4520e896df733f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b1e684be85371 # load x3 with value 0x5b1e684be85371
sw x3, 0(x2) # store 0x5b1e684be85371 in memory
flw f7, 0(x2) # load 0x5b1e684be85371 from memory into f7
li x3, 0x81e1a62d1902dad8 # load x3 with value 0x81e1a62d1902dad8
sw x3, 0(x2) # store 0x81e1a62d1902dad8 in memory
flw f31, 0(x2) # load 0x81e1a62d1902dad8 from memory into f31
fsgnjx.s f22, f7, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x10, 0xf8c7e6c43007d3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8307eedc3cab3858 # load x3 with value 0x8307eedc3cab3858
sw x3, 0(x2) # store 0x8307eedc3cab3858 in memory
flw f8, 0(x2) # load 0x8307eedc3cab3858 from memory into f8
li x3, 0xd0919e8f20a1ad11 # load x3 with value 0xd0919e8f20a1ad11
sw x3, 0(x2) # store 0xd0919e8f20a1ad11 in memory
flw f24, 0(x2) # load 0xd0919e8f20a1ad11 from memory into f24
fsgnjx.s f10, f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x13, 0x4944d02a485b73c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c5587a16d01c255 # load x3 with value 0x3c5587a16d01c255
sw x3, 0(x2) # store 0x3c5587a16d01c255 in memory
flw f9, 0(x2) # load 0x3c5587a16d01c255 from memory into f9
li x3, 0x10bf8626c3c831c # load x3 with value 0x10bf8626c3c831c
sw x3, 0(x2) # store 0x10bf8626c3c831c in memory
flw f27, 0(x2) # load 0x10bf8626c3c831c from memory into f27
fsgnjx.s f13, f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0x23bb249a2dccd475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x121d749388b55968 # load x3 with value 0x121d749388b55968
sw x3, 0(x2) # store 0x121d749388b55968 in memory
flw f10, 0(x2) # load 0x121d749388b55968 from memory into f10
li x3, 0x5f33daf22826dfbc # load x3 with value 0x5f33daf22826dfbc
sw x3, 0(x2) # store 0x5f33daf22826dfbc in memory
flw f18, 0(x2) # load 0x5f33daf22826dfbc from memory into f18
fsgnjx.s f31, f10, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0xa4741fc7525a5219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25c8e47b829699f3 # load x3 with value 0x25c8e47b829699f3
sw x3, 0(x2) # store 0x25c8e47b829699f3 in memory
flw f11, 0(x2) # load 0x25c8e47b829699f3 from memory into f11
li x3, 0xa1af5d87c207ebc4 # load x3 with value 0xa1af5d87c207ebc4
sw x3, 0(x2) # store 0xa1af5d87c207ebc4 in memory
flw f3, 0(x2) # load 0xa1af5d87c207ebc4 from memory into f3
fsgnjx.s f14, f11, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x3, 0x406a9b6e8e404a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1b5cb7e10ddc68a # load x3 with value 0xb1b5cb7e10ddc68a
sw x3, 0(x2) # store 0xb1b5cb7e10ddc68a in memory
flw f12, 0(x2) # load 0xb1b5cb7e10ddc68a from memory into f12
li x3, 0xea627d3e45e0eedb # load x3 with value 0xea627d3e45e0eedb
sw x3, 0(x2) # store 0xea627d3e45e0eedb in memory
flw f31, 0(x2) # load 0xea627d3e45e0eedb from memory into f31
fsgnjx.s f3, f12, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0x536a039bf3a0f035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb66eac40a70d49d # load x3 with value 0xbb66eac40a70d49d
sw x3, 0(x2) # store 0xbb66eac40a70d49d in memory
flw f13, 0(x2) # load 0xbb66eac40a70d49d from memory into f13
li x3, 0x19f5762594f7dc62 # load x3 with value 0x19f5762594f7dc62
sw x3, 0(x2) # store 0x19f5762594f7dc62 in memory
flw f16, 0(x2) # load 0x19f5762594f7dc62 from memory into f16
fsgnjx.s f23, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0xdfd8c38e0036fcb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44089191d9edecf5 # load x3 with value 0x44089191d9edecf5
sw x3, 0(x2) # store 0x44089191d9edecf5 in memory
flw f14, 0(x2) # load 0x44089191d9edecf5 from memory into f14
li x3, 0x9a0666251678c2c7 # load x3 with value 0x9a0666251678c2c7
sw x3, 0(x2) # store 0x9a0666251678c2c7 in memory
flw f17, 0(x2) # load 0x9a0666251678c2c7 from memory into f17
fsgnjx.s f25, f14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0x6bada4bee3ac3fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd36b1ff39fc5c47 # load x3 with value 0xd36b1ff39fc5c47
sw x3, 0(x2) # store 0xd36b1ff39fc5c47 in memory
flw f15, 0(x2) # load 0xd36b1ff39fc5c47 from memory into f15
li x3, 0x5f8af8ea2eebec7f # load x3 with value 0x5f8af8ea2eebec7f
sw x3, 0(x2) # store 0x5f8af8ea2eebec7f in memory
flw f1, 0(x2) # load 0x5f8af8ea2eebec7f from memory into f1
fsgnjx.s f29, f15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x11, 0xb2428513081fa257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe680ea9c7537a80 # load x3 with value 0xfe680ea9c7537a80
sw x3, 0(x2) # store 0xfe680ea9c7537a80 in memory
flw f16, 0(x2) # load 0xfe680ea9c7537a80 from memory into f16
li x3, 0x95c88498f51464cb # load x3 with value 0x95c88498f51464cb
sw x3, 0(x2) # store 0x95c88498f51464cb in memory
flw f28, 0(x2) # load 0x95c88498f51464cb from memory into f28
fsgnjx.s f11, f16, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x25, 0x509fa45f9d59de4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecca05af198e6467 # load x3 with value 0xecca05af198e6467
sw x3, 0(x2) # store 0xecca05af198e6467 in memory
flw f17, 0(x2) # load 0xecca05af198e6467 from memory into f17
li x3, 0xf690948a9423cc15 # load x3 with value 0xf690948a9423cc15
sw x3, 0(x2) # store 0xf690948a9423cc15 in memory
flw f21, 0(x2) # load 0xf690948a9423cc15 from memory into f21
fsgnjx.s f25, f17, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x9, 0xdb0278e58bc5c533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x227bb909189e6257 # load x3 with value 0x227bb909189e6257
sw x3, 0(x2) # store 0x227bb909189e6257 in memory
flw f18, 0(x2) # load 0x227bb909189e6257 from memory into f18
li x3, 0x22a4cf6cf398b15f # load x3 with value 0x22a4cf6cf398b15f
sw x3, 0(x2) # store 0x22a4cf6cf398b15f in memory
flw f29, 0(x2) # load 0x22a4cf6cf398b15f from memory into f29
fsgnjx.s f9, f18, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x21, 0x28fb05aad04f2049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x478d0b30800c9b14 # load x3 with value 0x478d0b30800c9b14
sw x3, 0(x2) # store 0x478d0b30800c9b14 in memory
flw f19, 0(x2) # load 0x478d0b30800c9b14 from memory into f19
li x3, 0x62a912c74ee655d8 # load x3 with value 0x62a912c74ee655d8
sw x3, 0(x2) # store 0x62a912c74ee655d8 in memory
flw f30, 0(x2) # load 0x62a912c74ee655d8 from memory into f30
fsgnjx.s f21, f19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x20, 0xf7f7ba79a080710c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf769e7ecefd53f37 # load x3 with value 0xf769e7ecefd53f37
sw x3, 0(x2) # store 0xf769e7ecefd53f37 in memory
flw f20, 0(x2) # load 0xf769e7ecefd53f37 from memory into f20
li x3, 0x76e525f544c91712 # load x3 with value 0x76e525f544c91712
sw x3, 0(x2) # store 0x76e525f544c91712 in memory
flw f16, 0(x2) # load 0x76e525f544c91712 from memory into f16
fsgnjx.s f20, f20, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x22, 0x064c26e31dca112d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb10783f94a64e4f # load x3 with value 0xcb10783f94a64e4f
sw x3, 0(x2) # store 0xcb10783f94a64e4f in memory
flw f21, 0(x2) # load 0xcb10783f94a64e4f from memory into f21
li x3, 0x95f58f065c6c7dd3 # load x3 with value 0x95f58f065c6c7dd3
sw x3, 0(x2) # store 0x95f58f065c6c7dd3 in memory
flw f28, 0(x2) # load 0x95f58f065c6c7dd3 from memory into f28
fsgnjx.s f22, f21, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x3, 0xa25c42bc707ea8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x637dd4835e8c9ffd # load x3 with value 0x637dd4835e8c9ffd
sw x3, 0(x2) # store 0x637dd4835e8c9ffd in memory
flw f22, 0(x2) # load 0x637dd4835e8c9ffd from memory into f22
li x3, 0x624243f36c13a605 # load x3 with value 0x624243f36c13a605
sw x3, 0(x2) # store 0x624243f36c13a605 in memory
flw f2, 0(x2) # load 0x624243f36c13a605 from memory into f2
fsgnjx.s f3, f22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x21, 0x79ccbdb29601fc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x402464b1c1ae2eb2 # load x3 with value 0x402464b1c1ae2eb2
sw x3, 0(x2) # store 0x402464b1c1ae2eb2 in memory
flw f23, 0(x2) # load 0x402464b1c1ae2eb2 from memory into f23
li x3, 0x815932368b294184 # load x3 with value 0x815932368b294184
sw x3, 0(x2) # store 0x815932368b294184 in memory
flw f22, 0(x2) # load 0x815932368b294184 from memory into f22
fsgnjx.s f21, f23, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x16, 0x484ffae74ee0822a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ee2258621150e78 # load x3 with value 0x7ee2258621150e78
sw x3, 0(x2) # store 0x7ee2258621150e78 in memory
flw f24, 0(x2) # load 0x7ee2258621150e78 from memory into f24
li x3, 0xa46ca5052c50f73b # load x3 with value 0xa46ca5052c50f73b
sw x3, 0(x2) # store 0xa46ca5052c50f73b in memory
flw f29, 0(x2) # load 0xa46ca5052c50f73b from memory into f29
fsgnjx.s f16, f24, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x16, 0x349cf983508d232d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x319f60e706825d8d # load x3 with value 0x319f60e706825d8d
sw x3, 0(x2) # store 0x319f60e706825d8d in memory
flw f25, 0(x2) # load 0x319f60e706825d8d from memory into f25
li x3, 0xbf3704e02a7ad37b # load x3 with value 0xbf3704e02a7ad37b
sw x3, 0(x2) # store 0xbf3704e02a7ad37b in memory
flw f4, 0(x2) # load 0xbf3704e02a7ad37b from memory into f4
fsgnjx.s f16, f25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x21, 0xa25ba1b5184e61e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x684065cb32f7ce88 # load x3 with value 0x684065cb32f7ce88
sw x3, 0(x2) # store 0x684065cb32f7ce88 in memory
flw f26, 0(x2) # load 0x684065cb32f7ce88 from memory into f26
li x3, 0xe622fa224171a196 # load x3 with value 0xe622fa224171a196
sw x3, 0(x2) # store 0xe622fa224171a196 in memory
flw f4, 0(x2) # load 0xe622fa224171a196 from memory into f4
fsgnjx.s f21, f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x24, 0x28d62b824a793d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x256805f59ffaa3c8 # load x3 with value 0x256805f59ffaa3c8
sw x3, 0(x2) # store 0x256805f59ffaa3c8 in memory
flw f27, 0(x2) # load 0x256805f59ffaa3c8 from memory into f27
li x3, 0x6b0ed966067c5cc # load x3 with value 0x6b0ed966067c5cc
sw x3, 0(x2) # store 0x6b0ed966067c5cc in memory
flw f29, 0(x2) # load 0x6b0ed966067c5cc from memory into f29
fsgnjx.s f24, f27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x18, 0x70a3a3cb703f5dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf03a77460768751 # load x3 with value 0xf03a77460768751
sw x3, 0(x2) # store 0xf03a77460768751 in memory
flw f28, 0(x2) # load 0xf03a77460768751 from memory into f28
li x3, 0x3aba94b3e582b430 # load x3 with value 0x3aba94b3e582b430
sw x3, 0(x2) # store 0x3aba94b3e582b430 in memory
flw f25, 0(x2) # load 0x3aba94b3e582b430 from memory into f25
fsgnjx.s f18, f28, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0xeca0c3733dfb25d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4daddc0a1b132a9 # load x3 with value 0xe4daddc0a1b132a9
sw x3, 0(x2) # store 0xe4daddc0a1b132a9 in memory
flw f29, 0(x2) # load 0xe4daddc0a1b132a9 from memory into f29
li x3, 0xbed06318d1c44888 # load x3 with value 0xbed06318d1c44888
sw x3, 0(x2) # store 0xbed06318d1c44888 in memory
flw f7, 0(x2) # load 0xbed06318d1c44888 from memory into f7
fsgnjx.s f26, f29, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x4b250c5f98e09620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77f926cd3615a73 # load x3 with value 0x77f926cd3615a73
sw x3, 0(x2) # store 0x77f926cd3615a73 in memory
flw f30, 0(x2) # load 0x77f926cd3615a73 from memory into f30
li x3, 0xef3aa167f52e50f4 # load x3 with value 0xef3aa167f52e50f4
sw x3, 0(x2) # store 0xef3aa167f52e50f4 in memory
flw f8, 0(x2) # load 0xef3aa167f52e50f4 from memory into f8
fsgnjx.s f24, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x27, 0x42b8e8fd8ae28bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd67c42814b5bd38e # load x3 with value 0xd67c42814b5bd38e
sw x3, 0(x2) # store 0xd67c42814b5bd38e in memory
flw f31, 0(x2) # load 0xd67c42814b5bd38e from memory into f31
li x3, 0x5f28e4c78cfc71b9 # load x3 with value 0x5f28e4c78cfc71b9
sw x3, 0(x2) # store 0x5f28e4c78cfc71b9 in memory
flw f30, 0(x2) # load 0x5f28e4c78cfc71b9 from memory into f30
fsgnjx.s f27, f31, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x9, 0x8414df9a47afa58b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea4721899a7c9bf5 # load x3 with value 0xea4721899a7c9bf5
sw x3, 0(x2) # store 0xea4721899a7c9bf5 in memory
flw f12, 0(x2) # load 0xea4721899a7c9bf5 from memory into f12
li x3, 0xfa4deb2eb33089 # load x3 with value 0xfa4deb2eb33089
sw x3, 0(x2) # store 0xfa4deb2eb33089 in memory
flw f0, 0(x2) # load 0xfa4deb2eb33089 from memory into f0
fsgnjx.s f9, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x31, 0x9bb240dafd0e01af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2e5b4868d083bb9 # load x3 with value 0xf2e5b4868d083bb9
sw x3, 0(x2) # store 0xf2e5b4868d083bb9 in memory
flw f25, 0(x2) # load 0xf2e5b4868d083bb9 from memory into f25
li x3, 0x8f724caf7696f75d # load x3 with value 0x8f724caf7696f75d
sw x3, 0(x2) # store 0x8f724caf7696f75d in memory
flw f1, 0(x2) # load 0x8f724caf7696f75d from memory into f1
fsgnjx.s f31, f25, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x15, 0xfe363ffb208a9278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe049a785a45f8cf3 # load x3 with value 0xe049a785a45f8cf3
sw x3, 0(x2) # store 0xe049a785a45f8cf3 in memory
flw f17, 0(x2) # load 0xe049a785a45f8cf3 from memory into f17
li x3, 0x2405d597068520bc # load x3 with value 0x2405d597068520bc
sw x3, 0(x2) # store 0x2405d597068520bc in memory
flw f2, 0(x2) # load 0x2405d597068520bc from memory into f2
fsgnjx.s f15, f17, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x22, 0xeaac3792acce6c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf009114473ca8aa1 # load x3 with value 0xf009114473ca8aa1
sw x3, 0(x2) # store 0xf009114473ca8aa1 in memory
flw f22, 0(x2) # load 0xf009114473ca8aa1 from memory into f22
li x3, 0x4af576c61ba55d3a # load x3 with value 0x4af576c61ba55d3a
sw x3, 0(x2) # store 0x4af576c61ba55d3a in memory
flw f3, 0(x2) # load 0x4af576c61ba55d3a from memory into f3
fsgnjx.s f22, f22, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0x41e2bef87e1d831d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6eea32c529b0b7 # load x3 with value 0xd6eea32c529b0b7
sw x3, 0(x2) # store 0xd6eea32c529b0b7 in memory
flw f3, 0(x2) # load 0xd6eea32c529b0b7 from memory into f3
li x3, 0x45a5182b6af09145 # load x3 with value 0x45a5182b6af09145
sw x3, 0(x2) # store 0x45a5182b6af09145 in memory
flw f4, 0(x2) # load 0x45a5182b6af09145 from memory into f4
fsgnjx.s f20, f3, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x2, 0x89eb655a4bbedbd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55012020f4fd32b2 # load x3 with value 0x55012020f4fd32b2
sw x3, 0(x2) # store 0x55012020f4fd32b2 in memory
flw f24, 0(x2) # load 0x55012020f4fd32b2 from memory into f24
li x3, 0x723ece7bb0e7e60a # load x3 with value 0x723ece7bb0e7e60a
sw x3, 0(x2) # store 0x723ece7bb0e7e60a in memory
flw f5, 0(x2) # load 0x723ece7bb0e7e60a from memory into f5
fsgnjx.s f2, f24, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x26, 0x96d7d1ac39135c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1610cb03b21cdd2 # load x3 with value 0x1610cb03b21cdd2
sw x3, 0(x2) # store 0x1610cb03b21cdd2 in memory
flw f31, 0(x2) # load 0x1610cb03b21cdd2 from memory into f31
li x3, 0x3ac75816c0981e2b # load x3 with value 0x3ac75816c0981e2b
sw x3, 0(x2) # store 0x3ac75816c0981e2b in memory
flw f6, 0(x2) # load 0x3ac75816c0981e2b from memory into f6
fsgnjx.s f26, f31, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x2, 0xbafdbe03adeb9427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x135fa18e10ecb743 # load x3 with value 0x135fa18e10ecb743
sw x3, 0(x2) # store 0x135fa18e10ecb743 in memory
flw f25, 0(x2) # load 0x135fa18e10ecb743 from memory into f25
li x3, 0xe1e440bc283fa7ff # load x3 with value 0xe1e440bc283fa7ff
sw x3, 0(x2) # store 0xe1e440bc283fa7ff in memory
flw f7, 0(x2) # load 0xe1e440bc283fa7ff from memory into f7
fsgnjx.s f2, f25, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x28, 0xfecb6bf2d8c3e7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ccd62f82733aee1 # load x3 with value 0x3ccd62f82733aee1
sw x3, 0(x2) # store 0x3ccd62f82733aee1 in memory
flw f5, 0(x2) # load 0x3ccd62f82733aee1 from memory into f5
li x3, 0xac85823f22380d62 # load x3 with value 0xac85823f22380d62
sw x3, 0(x2) # store 0xac85823f22380d62 in memory
flw f8, 0(x2) # load 0xac85823f22380d62 from memory into f8
fsgnjx.s f28, f5, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x19, 0x3b7b4305c5b6b073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4f1e8f61e195333 # load x3 with value 0xe4f1e8f61e195333
sw x3, 0(x2) # store 0xe4f1e8f61e195333 in memory
flw f11, 0(x2) # load 0xe4f1e8f61e195333 from memory into f11
li x3, 0x6d2f3404807d406b # load x3 with value 0x6d2f3404807d406b
sw x3, 0(x2) # store 0x6d2f3404807d406b in memory
flw f9, 0(x2) # load 0x6d2f3404807d406b from memory into f9
fsgnjx.s f19, f11, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x21, 0xfbd2b005dbc38f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9a77453d72aaaa5 # load x3 with value 0xf9a77453d72aaaa5
sw x3, 0(x2) # store 0xf9a77453d72aaaa5 in memory
flw f15, 0(x2) # load 0xf9a77453d72aaaa5 from memory into f15
li x3, 0x8f3749ceafe1c28e # load x3 with value 0x8f3749ceafe1c28e
sw x3, 0(x2) # store 0x8f3749ceafe1c28e in memory
flw f10, 0(x2) # load 0x8f3749ceafe1c28e from memory into f10
fsgnjx.s f21, f15, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x28, 0x7a26933a92d30392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45ab9ef357894032 # load x3 with value 0x45ab9ef357894032
sw x3, 0(x2) # store 0x45ab9ef357894032 in memory
flw f19, 0(x2) # load 0x45ab9ef357894032 from memory into f19
li x3, 0x8dc11e618d098abf # load x3 with value 0x8dc11e618d098abf
sw x3, 0(x2) # store 0x8dc11e618d098abf in memory
flw f11, 0(x2) # load 0x8dc11e618d098abf from memory into f11
fsgnjx.s f28, f19, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x9, 0x9c1bb8655c069727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90e44f785c02b375 # load x3 with value 0x90e44f785c02b375
sw x3, 0(x2) # store 0x90e44f785c02b375 in memory
flw f27, 0(x2) # load 0x90e44f785c02b375 from memory into f27
li x3, 0x72ee0fbfa0e121b8 # load x3 with value 0x72ee0fbfa0e121b8
sw x3, 0(x2) # store 0x72ee0fbfa0e121b8 in memory
flw f12, 0(x2) # load 0x72ee0fbfa0e121b8 from memory into f12
fsgnjx.s f9, f27, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x2, 0x15b7144ef4132852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93416cdbb11dc1eb # load x3 with value 0x93416cdbb11dc1eb
sw x3, 0(x2) # store 0x93416cdbb11dc1eb in memory
flw f10, 0(x2) # load 0x93416cdbb11dc1eb from memory into f10
li x3, 0x66ed3d33837e13ed # load x3 with value 0x66ed3d33837e13ed
sw x3, 0(x2) # store 0x66ed3d33837e13ed in memory
flw f13, 0(x2) # load 0x66ed3d33837e13ed from memory into f13
fsgnjx.s f2, f10, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x3, 0x4d0ab83e57d3b1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33ba4628e7dbae9c # load x3 with value 0x33ba4628e7dbae9c
sw x3, 0(x2) # store 0x33ba4628e7dbae9c in memory
flw f25, 0(x2) # load 0x33ba4628e7dbae9c from memory into f25
li x3, 0x3fd44477f805b09c # load x3 with value 0x3fd44477f805b09c
sw x3, 0(x2) # store 0x3fd44477f805b09c in memory
flw f14, 0(x2) # load 0x3fd44477f805b09c from memory into f14
fsgnjx.s f3, f25, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x18, 0x0e8aa9921b49e41a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x370ae3b9b5f62c8d # load x3 with value 0x370ae3b9b5f62c8d
sw x3, 0(x2) # store 0x370ae3b9b5f62c8d in memory
flw f8, 0(x2) # load 0x370ae3b9b5f62c8d from memory into f8
li x3, 0xfbc14f0a67318325 # load x3 with value 0xfbc14f0a67318325
sw x3, 0(x2) # store 0xfbc14f0a67318325 in memory
flw f15, 0(x2) # load 0xfbc14f0a67318325 from memory into f15
fsgnjx.s f18, f8, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x8, 0x73dab087f7b13a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20c303fe0a412c97 # load x3 with value 0x20c303fe0a412c97
sw x3, 0(x2) # store 0x20c303fe0a412c97 in memory
flw f9, 0(x2) # load 0x20c303fe0a412c97 from memory into f9
li x3, 0x78fecb4003e6179f # load x3 with value 0x78fecb4003e6179f
sw x3, 0(x2) # store 0x78fecb4003e6179f in memory
flw f16, 0(x2) # load 0x78fecb4003e6179f from memory into f16
fsgnjx.s f8, f9, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x11, 0x7a45d44acddf978a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f0859adc45ad21a # load x3 with value 0x5f0859adc45ad21a
sw x3, 0(x2) # store 0x5f0859adc45ad21a in memory
flw f8, 0(x2) # load 0x5f0859adc45ad21a from memory into f8
li x3, 0xbb970cd9302523e4 # load x3 with value 0xbb970cd9302523e4
sw x3, 0(x2) # store 0xbb970cd9302523e4 in memory
flw f17, 0(x2) # load 0xbb970cd9302523e4 from memory into f17
fsgnjx.s f11, f8, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x2, 0x50cbb86c6ce5ecb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cf3d76db0a7bdb7 # load x3 with value 0x4cf3d76db0a7bdb7
sw x3, 0(x2) # store 0x4cf3d76db0a7bdb7 in memory
flw f11, 0(x2) # load 0x4cf3d76db0a7bdb7 from memory into f11
li x3, 0xeef5de4c543b6b8d # load x3 with value 0xeef5de4c543b6b8d
sw x3, 0(x2) # store 0xeef5de4c543b6b8d in memory
flw f18, 0(x2) # load 0xeef5de4c543b6b8d from memory into f18
fsgnjx.s f2, f11, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x30, 0xc7fc8961ffaee307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a4fbc11ea52b8fa # load x3 with value 0x2a4fbc11ea52b8fa
sw x3, 0(x2) # store 0x2a4fbc11ea52b8fa in memory
flw f5, 0(x2) # load 0x2a4fbc11ea52b8fa from memory into f5
li x3, 0xcd285dbbb3df6680 # load x3 with value 0xcd285dbbb3df6680
sw x3, 0(x2) # store 0xcd285dbbb3df6680 in memory
flw f19, 0(x2) # load 0xcd285dbbb3df6680 from memory into f19
fsgnjx.s f30, f5, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x11, 0x78b1b53d5c800812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cb7daa44bbb3781 # load x3 with value 0x6cb7daa44bbb3781
sw x3, 0(x2) # store 0x6cb7daa44bbb3781 in memory
flw f24, 0(x2) # load 0x6cb7daa44bbb3781 from memory into f24
li x3, 0x7bcf2c2c20ec2494 # load x3 with value 0x7bcf2c2c20ec2494
sw x3, 0(x2) # store 0x7bcf2c2c20ec2494 in memory
flw f20, 0(x2) # load 0x7bcf2c2c20ec2494 from memory into f20
fsgnjx.s f11, f24, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x16, 0xcd75977616f68bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0b46cfbfb200155 # load x3 with value 0xb0b46cfbfb200155
sw x3, 0(x2) # store 0xb0b46cfbfb200155 in memory
flw f19, 0(x2) # load 0xb0b46cfbfb200155 from memory into f19
li x3, 0x74dbd2fbbe3456f3 # load x3 with value 0x74dbd2fbbe3456f3
sw x3, 0(x2) # store 0x74dbd2fbbe3456f3 in memory
flw f21, 0(x2) # load 0x74dbd2fbbe3456f3 from memory into f21
fsgnjx.s f16, f19, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x5, 0x6c83cc7618b640b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b1132ae776bc789 # load x3 with value 0x9b1132ae776bc789
sw x3, 0(x2) # store 0x9b1132ae776bc789 in memory
flw f25, 0(x2) # load 0x9b1132ae776bc789 from memory into f25
li x3, 0xae8d1452574e6664 # load x3 with value 0xae8d1452574e6664
sw x3, 0(x2) # store 0xae8d1452574e6664 in memory
flw f22, 0(x2) # load 0xae8d1452574e6664 from memory into f22
fsgnjx.s f5, f25, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x11, 0x93dad5e58b1831bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2d460931357509a # load x3 with value 0xc2d460931357509a
sw x3, 0(x2) # store 0xc2d460931357509a in memory
flw f3, 0(x2) # load 0xc2d460931357509a from memory into f3
li x3, 0xf0c9815e8a70e71c # load x3 with value 0xf0c9815e8a70e71c
sw x3, 0(x2) # store 0xf0c9815e8a70e71c in memory
flw f23, 0(x2) # load 0xf0c9815e8a70e71c from memory into f23
fsgnjx.s f11, f3, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x2, 0x575c2cecc7a9326e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3475c06dc41a80f6 # load x3 with value 0x3475c06dc41a80f6
sw x3, 0(x2) # store 0x3475c06dc41a80f6 in memory
flw f3, 0(x2) # load 0x3475c06dc41a80f6 from memory into f3
li x3, 0xc862f01a3fd2dcd3 # load x3 with value 0xc862f01a3fd2dcd3
sw x3, 0(x2) # store 0xc862f01a3fd2dcd3 in memory
flw f24, 0(x2) # load 0xc862f01a3fd2dcd3 from memory into f24
fsgnjx.s f2, f3, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x11, 0xa71b9a7fa9a73012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66686d12d5f6641f # load x3 with value 0x66686d12d5f6641f
sw x3, 0(x2) # store 0x66686d12d5f6641f in memory
flw f5, 0(x2) # load 0x66686d12d5f6641f from memory into f5
li x3, 0xf2727e9ab47f2e54 # load x3 with value 0xf2727e9ab47f2e54
sw x3, 0(x2) # store 0xf2727e9ab47f2e54 in memory
flw f25, 0(x2) # load 0xf2727e9ab47f2e54 from memory into f25
fsgnjx.s f11, f5, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x24, 0xb2c04ba7b95f0937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cdca28978a362ff # load x3 with value 0x4cdca28978a362ff
sw x3, 0(x2) # store 0x4cdca28978a362ff in memory
flw f9, 0(x2) # load 0x4cdca28978a362ff from memory into f9
li x3, 0x2d1a24f257e4d96e # load x3 with value 0x2d1a24f257e4d96e
sw x3, 0(x2) # store 0x2d1a24f257e4d96e in memory
flw f26, 0(x2) # load 0x2d1a24f257e4d96e from memory into f26
fsgnjx.s f24, f9, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x18, 0x2c78a927594853f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7904b0d1075ea6d3 # load x3 with value 0x7904b0d1075ea6d3
sw x3, 0(x2) # store 0x7904b0d1075ea6d3 in memory
flw f29, 0(x2) # load 0x7904b0d1075ea6d3 from memory into f29
li x3, 0x595a8c7efe89e905 # load x3 with value 0x595a8c7efe89e905
sw x3, 0(x2) # store 0x595a8c7efe89e905 in memory
flw f27, 0(x2) # load 0x595a8c7efe89e905 from memory into f27
fsgnjx.s f18, f29, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0x52ddfc3c53766291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde3c06ee3985be8e # load x3 with value 0xde3c06ee3985be8e
sw x3, 0(x2) # store 0xde3c06ee3985be8e in memory
flw f29, 0(x2) # load 0xde3c06ee3985be8e from memory into f29
li x3, 0x3a410fa31058b88d # load x3 with value 0x3a410fa31058b88d
sw x3, 0(x2) # store 0x3a410fa31058b88d in memory
flw f28, 0(x2) # load 0x3a410fa31058b88d from memory into f28
fsgnjx.s f6, f29, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x31, 0x3f24f52e0739ee70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40cf2f8ad3aeb6c4 # load x3 with value 0x40cf2f8ad3aeb6c4
sw x3, 0(x2) # store 0x40cf2f8ad3aeb6c4 in memory
flw f21, 0(x2) # load 0x40cf2f8ad3aeb6c4 from memory into f21
li x3, 0xbd32359c0789b89e # load x3 with value 0xbd32359c0789b89e
sw x3, 0(x2) # store 0xbd32359c0789b89e in memory
flw f29, 0(x2) # load 0xbd32359c0789b89e from memory into f29
fsgnjx.s f31, f21, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x22, 0x9fbd101089c0f3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x124a831692efa9c9 # load x3 with value 0x124a831692efa9c9
sw x3, 0(x2) # store 0x124a831692efa9c9 in memory
flw f23, 0(x2) # load 0x124a831692efa9c9 from memory into f23
li x3, 0x2af4de798e370274 # load x3 with value 0x2af4de798e370274
sw x3, 0(x2) # store 0x2af4de798e370274 in memory
flw f30, 0(x2) # load 0x2af4de798e370274 from memory into f30
fsgnjx.s f22, f23, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x25, 0xb3dcd723c1f688b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x619000654ad54e00 # load x3 with value 0x619000654ad54e00
sw x3, 0(x2) # store 0x619000654ad54e00 in memory
flw f6, 0(x2) # load 0x619000654ad54e00 from memory into f6
li x3, 0xc0ebf029ad9a3e03 # load x3 with value 0xc0ebf029ad9a3e03
sw x3, 0(x2) # store 0xc0ebf029ad9a3e03 in memory
flw f31, 0(x2) # load 0xc0ebf029ad9a3e03 from memory into f31
fsgnjx.s f25, f6, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
