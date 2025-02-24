///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-feq.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.557639
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0xbc68034e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2384c8ec # load x3 with value 0x2384c8ec
sw x3, 0(x2) # store 0x2384c8ec in memory
flh f24, 0(x2) # load 0x2384c8ec from memory into f24
li x3, 0x78676539 # load x3 with value 0x78676539
sw x3, 0(x2) # store 0x78676539 in memory
flh f30, 0(x2) # load 0x78676539 from memory into f30
feq.h x0, f24, f30 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x78af83ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e8ee1f7 # load x3 with value 0x3e8ee1f7
sw x3, 0(x2) # store 0x3e8ee1f7 in memory
flh f5, 0(x2) # load 0x3e8ee1f7 from memory into f5
li x3, 0xd0af5997 # load x3 with value 0xd0af5997
sw x3, 0(x2) # store 0xd0af5997 in memory
flh f30, 0(x2) # load 0xd0af5997 from memory into f30
feq.h x1, f5, f30 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x6e605e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16c80d8e # load x3 with value 0x16c80d8e
sw x3, 0(x2) # store 0x16c80d8e in memory
flh f16, 0(x2) # load 0x16c80d8e from memory into f16
li x3, 0x87000bee # load x3 with value 0x87000bee
sw x3, 0(x2) # store 0x87000bee in memory
flh f7, 0(x2) # load 0x87000bee from memory into f7
feq.h x2, f16, f7 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8d7d4fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d4dd45 # load x3 with value 0x68d4dd45
sw x3, 0(x2) # store 0x68d4dd45 in memory
flh f15, 0(x2) # load 0x68d4dd45 from memory into f15
li x3, 0x50b5f265 # load x3 with value 0x50b5f265
sw x3, 0(x2) # store 0x50b5f265 in memory
flh f18, 0(x2) # load 0x50b5f265 from memory into f18
feq.h x3, f15, f18 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x3f0cc1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdebaadd9 # load x3 with value 0xdebaadd9
sw x3, 0(x2) # store 0xdebaadd9 in memory
flh f12, 0(x2) # load 0xdebaadd9 from memory into f12
li x3, 0x85c5cc24 # load x3 with value 0x85c5cc24
sw x3, 0(x2) # store 0x85c5cc24 in memory
flh f7, 0(x2) # load 0x85c5cc24 from memory into f7
feq.h x4, f12, f7 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xc53dcbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26401d24 # load x3 with value 0x26401d24
sw x3, 0(x2) # store 0x26401d24 in memory
flh f28, 0(x2) # load 0x26401d24 from memory into f28
li x3, 0x852c7d20 # load x3 with value 0x852c7d20
sw x3, 0(x2) # store 0x852c7d20 in memory
flh f24, 0(x2) # load 0x852c7d20 from memory into f24
feq.h x5, f28, f24 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x3101f3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe253e93 # load x3 with value 0xbe253e93
sw x3, 0(x2) # store 0xbe253e93 in memory
flh f28, 0(x2) # load 0xbe253e93 from memory into f28
li x3, 0x56bb0f5f # load x3 with value 0x56bb0f5f
sw x3, 0(x2) # store 0x56bb0f5f in memory
flh f14, 0(x2) # load 0x56bb0f5f from memory into f14
feq.h x6, f28, f14 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe50f8f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb8933ec # load x3 with value 0xdb8933ec
sw x3, 0(x2) # store 0xdb8933ec in memory
flh f8, 0(x2) # load 0xdb8933ec from memory into f8
li x3, 0x015f074f # load x3 with value 0x015f074f
sw x3, 0(x2) # store 0x015f074f in memory
flh f31, 0(x2) # load 0x015f074f from memory into f31
feq.h x7, f8, f31 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9e0c2f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x056b5adb # load x3 with value 0x056b5adb
sw x3, 0(x2) # store 0x056b5adb in memory
flh f19, 0(x2) # load 0x056b5adb from memory into f19
li x3, 0x5a8536cd # load x3 with value 0x5a8536cd
sw x3, 0(x2) # store 0x5a8536cd in memory
flh f11, 0(x2) # load 0x5a8536cd from memory into f11
feq.h x8, f19, f11 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd4a2c8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f7da6c5 # load x3 with value 0x9f7da6c5
sw x3, 0(x2) # store 0x9f7da6c5 in memory
flh f3, 0(x2) # load 0x9f7da6c5 from memory into f3
li x3, 0xfbd84560 # load x3 with value 0xfbd84560
sw x3, 0(x2) # store 0xfbd84560 in memory
flh f14, 0(x2) # load 0xfbd84560 from memory into f14
feq.h x9, f3, f14 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xde987522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4da8f89 # load x3 with value 0xe4da8f89
sw x3, 0(x2) # store 0xe4da8f89 in memory
flh f30, 0(x2) # load 0xe4da8f89 from memory into f30
li x3, 0x60bd605d # load x3 with value 0x60bd605d
sw x3, 0(x2) # store 0x60bd605d in memory
flh f5, 0(x2) # load 0x60bd605d from memory into f5
feq.h x10, f30, f5 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb64d94ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x208f41d7 # load x3 with value 0x208f41d7
sw x3, 0(x2) # store 0x208f41d7 in memory
flh f6, 0(x2) # load 0x208f41d7 from memory into f6
li x3, 0x74716d46 # load x3 with value 0x74716d46
sw x3, 0(x2) # store 0x74716d46 in memory
flh f27, 0(x2) # load 0x74716d46 from memory into f27
feq.h x11, f6, f27 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb7e61295 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5962cf # load x3 with value 0x7b5962cf
sw x3, 0(x2) # store 0x7b5962cf in memory
flh f27, 0(x2) # load 0x7b5962cf from memory into f27
li x3, 0x4e74eb5e # load x3 with value 0x4e74eb5e
sw x3, 0(x2) # store 0x4e74eb5e in memory
flh f8, 0(x2) # load 0x4e74eb5e from memory into f8
feq.h x12, f27, f8 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x762ed2c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42c3606c # load x3 with value 0x42c3606c
sw x3, 0(x2) # store 0x42c3606c in memory
flh f23, 0(x2) # load 0x42c3606c from memory into f23
li x3, 0x609dfe9d # load x3 with value 0x609dfe9d
sw x3, 0(x2) # store 0x609dfe9d in memory
flh f25, 0(x2) # load 0x609dfe9d from memory into f25
feq.h x13, f23, f25 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x41d72bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4aa77b5 # load x3 with value 0xf4aa77b5
sw x3, 0(x2) # store 0xf4aa77b5 in memory
flh f4, 0(x2) # load 0xf4aa77b5 from memory into f4
li x3, 0xa9f3bb20 # load x3 with value 0xa9f3bb20
sw x3, 0(x2) # store 0xa9f3bb20 in memory
flh f16, 0(x2) # load 0xa9f3bb20 from memory into f16
feq.h x14, f4, f16 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x979ff84f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2622f707 # load x3 with value 0x2622f707
sw x3, 0(x2) # store 0x2622f707 in memory
flh f6, 0(x2) # load 0x2622f707 from memory into f6
li x3, 0x6067ed87 # load x3 with value 0x6067ed87
sw x3, 0(x2) # store 0x6067ed87 in memory
flh f12, 0(x2) # load 0x6067ed87 from memory into f12
feq.h x15, f6, f12 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xbf098ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe73db69c # load x3 with value 0xe73db69c
sw x3, 0(x2) # store 0xe73db69c in memory
flh f10, 0(x2) # load 0xe73db69c from memory into f10
li x3, 0xa4fa3955 # load x3 with value 0xa4fa3955
sw x3, 0(x2) # store 0xa4fa3955 in memory
flh f26, 0(x2) # load 0xa4fa3955 from memory into f26
feq.h x16, f10, f26 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x33ffa49e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda58c221 # load x3 with value 0xda58c221
sw x3, 0(x2) # store 0xda58c221 in memory
flh f9, 0(x2) # load 0xda58c221 from memory into f9
li x3, 0x633fc3a5 # load x3 with value 0x633fc3a5
sw x3, 0(x2) # store 0x633fc3a5 in memory
flh f15, 0(x2) # load 0x633fc3a5 from memory into f15
feq.h x17, f9, f15 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1195f9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb304e2a5 # load x3 with value 0xb304e2a5
sw x3, 0(x2) # store 0xb304e2a5 in memory
flh f24, 0(x2) # load 0xb304e2a5 from memory into f24
li x3, 0x7b4014c2 # load x3 with value 0x7b4014c2
sw x3, 0(x2) # store 0x7b4014c2 in memory
flh f13, 0(x2) # load 0x7b4014c2 from memory into f13
feq.h x18, f24, f13 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x717ab087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85b5995c # load x3 with value 0x85b5995c
sw x3, 0(x2) # store 0x85b5995c in memory
flh f18, 0(x2) # load 0x85b5995c from memory into f18
li x3, 0x27b3aebc # load x3 with value 0x27b3aebc
sw x3, 0(x2) # store 0x27b3aebc in memory
flh f26, 0(x2) # load 0x27b3aebc from memory into f26
feq.h x19, f18, f26 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xaf7b4a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe33a89fb # load x3 with value 0xe33a89fb
sw x3, 0(x2) # store 0xe33a89fb in memory
flh f27, 0(x2) # load 0xe33a89fb from memory into f27
li x3, 0x659df981 # load x3 with value 0x659df981
sw x3, 0(x2) # store 0x659df981 in memory
flh f10, 0(x2) # load 0x659df981 from memory into f10
feq.h x20, f27, f10 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa2c9c302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5bc3bfe # load x3 with value 0xc5bc3bfe
sw x3, 0(x2) # store 0xc5bc3bfe in memory
flh f30, 0(x2) # load 0xc5bc3bfe from memory into f30
li x3, 0x4e5fee0d # load x3 with value 0x4e5fee0d
sw x3, 0(x2) # store 0x4e5fee0d in memory
flh f24, 0(x2) # load 0x4e5fee0d from memory into f24
feq.h x21, f30, f24 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7ca02b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c3e5b4b # load x3 with value 0x9c3e5b4b
sw x3, 0(x2) # store 0x9c3e5b4b in memory
flh f8, 0(x2) # load 0x9c3e5b4b from memory into f8
li x3, 0x65d86871 # load x3 with value 0x65d86871
sw x3, 0(x2) # store 0x65d86871 in memory
flh f5, 0(x2) # load 0x65d86871 from memory into f5
feq.h x22, f8, f5 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd762840e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f8d118a # load x3 with value 0x7f8d118a
sw x3, 0(x2) # store 0x7f8d118a in memory
flh f27, 0(x2) # load 0x7f8d118a from memory into f27
li x3, 0x76c8787b # load x3 with value 0x76c8787b
sw x3, 0(x2) # store 0x76c8787b in memory
flh f3, 0(x2) # load 0x76c8787b from memory into f3
feq.h x23, f27, f3 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xbfdb6c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dbb3008 # load x3 with value 0x4dbb3008
sw x3, 0(x2) # store 0x4dbb3008 in memory
flh f7, 0(x2) # load 0x4dbb3008 from memory into f7
li x3, 0x4bb0697f # load x3 with value 0x4bb0697f
sw x3, 0(x2) # store 0x4bb0697f in memory
flh f12, 0(x2) # load 0x4bb0697f from memory into f12
feq.h x24, f7, f12 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb58b939e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a489fab # load x3 with value 0x3a489fab
sw x3, 0(x2) # store 0x3a489fab in memory
flh f3, 0(x2) # load 0x3a489fab from memory into f3
li x3, 0xfa28b49a # load x3 with value 0xfa28b49a
sw x3, 0(x2) # store 0xfa28b49a in memory
flh f27, 0(x2) # load 0xfa28b49a from memory into f27
feq.h x25, f3, f27 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3078fe90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bd4c131 # load x3 with value 0x6bd4c131
sw x3, 0(x2) # store 0x6bd4c131 in memory
flh f16, 0(x2) # load 0x6bd4c131 from memory into f16
li x3, 0x4911b118 # load x3 with value 0x4911b118
sw x3, 0(x2) # store 0x4911b118 in memory
flh f21, 0(x2) # load 0x4911b118 from memory into f21
feq.h x26, f16, f21 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x57a1f37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa59e01db # load x3 with value 0xa59e01db
sw x3, 0(x2) # store 0xa59e01db in memory
flh f4, 0(x2) # load 0xa59e01db from memory into f4
li x3, 0xd97290e1 # load x3 with value 0xd97290e1
sw x3, 0(x2) # store 0xd97290e1 in memory
flh f29, 0(x2) # load 0xd97290e1 from memory into f29
feq.h x27, f4, f29 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x38be2a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f2e297e # load x3 with value 0x4f2e297e
sw x3, 0(x2) # store 0x4f2e297e in memory
flh f28, 0(x2) # load 0x4f2e297e from memory into f28
li x3, 0xdaa13d6e # load x3 with value 0xdaa13d6e
sw x3, 0(x2) # store 0xdaa13d6e in memory
flh f24, 0(x2) # load 0xdaa13d6e from memory into f24
feq.h x28, f28, f24 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x360371d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf6aee32 # load x3 with value 0xcf6aee32
sw x3, 0(x2) # store 0xcf6aee32 in memory
flh f19, 0(x2) # load 0xcf6aee32 from memory into f19
li x3, 0xf51fc74b # load x3 with value 0xf51fc74b
sw x3, 0(x2) # store 0xf51fc74b in memory
flh f11, 0(x2) # load 0xf51fc74b from memory into f11
feq.h x29, f19, f11 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x17433b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcf97a61 # load x3 with value 0xdcf97a61
sw x3, 0(x2) # store 0xdcf97a61 in memory
flh f18, 0(x2) # load 0xdcf97a61 from memory into f18
li x3, 0xe4713f1c # load x3 with value 0xe4713f1c
sw x3, 0(x2) # store 0xe4713f1c in memory
flh f17, 0(x2) # load 0xe4713f1c from memory into f17
feq.h x30, f18, f17 # perform fcomp-type op

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1023432c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd61e76df # load x3 with value 0xd61e76df
sw x3, 0(x2) # store 0xd61e76df in memory
flh f6, 0(x2) # load 0xd61e76df from memory into f6
li x3, 0x83edee14 # load x3 with value 0x83edee14
sw x3, 0(x2) # store 0x83edee14 in memory
flh f27, 0(x2) # load 0x83edee14 from memory into f27
feq.h x31, f6, f27 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x20, 0x821a0a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0xd5c17c8e # load x3 with value 0xd5c17c8e
sw x3, 0(x2) # store 0xd5c17c8e in memory
flh f13, 0(x2) # load 0xd5c17c8e from memory into f13
feq.h x20, f4, f13 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x18, 0xb0436a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x1f8b9f44 # load x3 with value 0x1f8b9f44
sw x3, 0(x2) # store 0x1f8b9f44 in memory
flh f10, 0(x2) # load 0x1f8b9f44 from memory into f10
feq.h x18, f12, f10 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x26, 0x9186f81e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0xfa4cf419 # load x3 with value 0xfa4cf419
sw x3, 0(x2) # store 0xfa4cf419 in memory
flh f29, 0(x2) # load 0xfa4cf419 from memory into f29
feq.h x26, f25, f29 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x6, 0x3cf03a29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0xbf0e1737 # load x3 with value 0xbf0e1737
sw x3, 0(x2) # store 0xbf0e1737 in memory
flh f30, 0(x2) # load 0xbf0e1737 from memory into f30
feq.h x6, f25, f30 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x26, 0x2dc26abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x48308a69 # load x3 with value 0x48308a69
sw x3, 0(x2) # store 0x48308a69 in memory
flh f21, 0(x2) # load 0x48308a69 from memory into f21
feq.h x26, f13, f21 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x3, 0x82c39281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x73a7577d # load x3 with value 0x73a7577d
sw x3, 0(x2) # store 0x73a7577d in memory
flh f4, 0(x2) # load 0x73a7577d from memory into f4
feq.h x3, f8, f4 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x18, 0xb16eebb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0xe5fd2781 # load x3 with value 0xe5fd2781
sw x3, 0(x2) # store 0xe5fd2781 in memory
flh f16, 0(x2) # load 0xe5fd2781 from memory into f16
feq.h x18, f27, f16 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x23, 0x3e367582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0xf4420b80 # load x3 with value 0xf4420b80
sw x3, 0(x2) # store 0xf4420b80 in memory
flh f1, 0(x2) # load 0xf4420b80 from memory into f1
feq.h x23, f16, f1 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x22, 0xaa29e957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x28b1f5cd # load x3 with value 0x28b1f5cd
sw x3, 0(x2) # store 0x28b1f5cd in memory
flh f8, 0(x2) # load 0x28b1f5cd from memory into f8
feq.h x22, f7, f8 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x15, 0xdff22173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0xfbf46681 # load x3 with value 0xfbf46681
sw x3, 0(x2) # store 0xfbf46681 in memory
flh f30, 0(x2) # load 0xfbf46681 from memory into f30
feq.h x15, f9, f30 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x17, 0x04a38d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0xeec67602 # load x3 with value 0xeec67602
sw x3, 0(x2) # store 0xeec67602 in memory
flh f11, 0(x2) # load 0xeec67602 from memory into f11
feq.h x17, f13, f11 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x29, 0xaa44ecdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x174e633a # load x3 with value 0x174e633a
sw x3, 0(x2) # store 0x174e633a in memory
flh f15, 0(x2) # load 0x174e633a from memory into f15
feq.h x29, f2, f15 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x6, 0xf7030721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x7697157d # load x3 with value 0x7697157d
sw x3, 0(x2) # store 0x7697157d in memory
flh f3, 0(x2) # load 0x7697157d from memory into f3
feq.h x6, f10, f3 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x8, 0x220adf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0xbdbae5bb # load x3 with value 0xbdbae5bb
sw x3, 0(x2) # store 0xbdbae5bb in memory
flh f28, 0(x2) # load 0xbdbae5bb from memory into f28
feq.h x8, f29, f28 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x6, 0xbd7ac8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0xf1bba42e # load x3 with value 0xf1bba42e
sw x3, 0(x2) # store 0xf1bba42e in memory
flh f17, 0(x2) # load 0xf1bba42e from memory into f17
feq.h x6, f29, f17 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x27, 0x480b363d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x65802ba9 # load x3 with value 0x65802ba9
sw x3, 0(x2) # store 0x65802ba9 in memory
flh f3, 0(x2) # load 0x65802ba9 from memory into f3
feq.h x27, f13, f3 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x6, 0x1c81dc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x34aa84ad # load x3 with value 0x34aa84ad
sw x3, 0(x2) # store 0x34aa84ad in memory
flh f9, 0(x2) # load 0x34aa84ad from memory into f9
feq.h x6, f24, f9 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x2, 0x5976bd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x96e0214a # load x3 with value 0x96e0214a
sw x3, 0(x2) # store 0x96e0214a in memory
flh f5, 0(x2) # load 0x96e0214a from memory into f5
feq.h x2, f26, f5 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x19, 0xdfd691df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x43cfbe73 # load x3 with value 0x43cfbe73
sw x3, 0(x2) # store 0x43cfbe73 in memory
flh f14, 0(x2) # load 0x43cfbe73 from memory into f14
feq.h x19, f11, f14 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x24, 0x1990a202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0xde9d2158 # load x3 with value 0xde9d2158
sw x3, 0(x2) # store 0xde9d2158 in memory
flh f29, 0(x2) # load 0xde9d2158 from memory into f29
feq.h x24, f2, f29 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x31, 0xaf14f49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x9657b5a9 # load x3 with value 0x9657b5a9
sw x3, 0(x2) # store 0x9657b5a9 in memory
flh f12, 0(x2) # load 0x9657b5a9 from memory into f12
feq.h x31, f26, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x3, 0xcf246c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x7cb81901 # load x3 with value 0x7cb81901
sw x3, 0(x2) # store 0x7cb81901 in memory
flh f5, 0(x2) # load 0x7cb81901 from memory into f5
feq.h x3, f23, f5 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x6, 0x012f05d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x0496b9b4 # load x3 with value 0x0496b9b4
sw x3, 0(x2) # store 0x0496b9b4 in memory
flh f12, 0(x2) # load 0x0496b9b4 from memory into f12
feq.h x6, f1, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x24, 0x470c5c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x3c4212f5 # load x3 with value 0x3c4212f5
sw x3, 0(x2) # store 0x3c4212f5 in memory
flh f12, 0(x2) # load 0x3c4212f5 from memory into f12
feq.h x24, f17, f12 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x16, 0xc430f955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x252b8dfb # load x3 with value 0x252b8dfb
sw x3, 0(x2) # store 0x252b8dfb in memory
flh f30, 0(x2) # load 0x252b8dfb from memory into f30
feq.h x16, f6, f30 # perform fcomp-type op

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x18, 0xc66745ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x4d6c8988 # load x3 with value 0x4d6c8988
sw x3, 0(x2) # store 0x4d6c8988 in memory
flh f12, 0(x2) # load 0x4d6c8988 from memory into f12
feq.h x18, f6, f12 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x15, 0x0248bc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76b0f75c # load x3 with value 0x76b0f75c
sw x3, 0(x2) # store 0x76b0f75c in memory
flh f12, 0(x2) # load 0x76b0f75c from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
feq.h x15, f12, f30 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x14, 0x3a9455c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b8015e8 # load x3 with value 0x9b8015e8
sw x3, 0(x2) # store 0x9b8015e8 in memory
flh f30, 0(x2) # load 0x9b8015e8 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
feq.h x14, f30, f29 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x11, 0xc33772d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe603b97e # load x3 with value 0xe603b97e
sw x3, 0(x2) # store 0xe603b97e in memory
flh f16, 0(x2) # load 0xe603b97e from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
feq.h x11, f16, f27 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x14, 0x5333e335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e3db763 # load x3 with value 0x3e3db763
sw x3, 0(x2) # store 0x3e3db763 in memory
flh f22, 0(x2) # load 0x3e3db763 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
feq.h x14, f22, f11 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x14, 0xf81128c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1476cfb # load x3 with value 0xb1476cfb
sw x3, 0(x2) # store 0xb1476cfb in memory
flh f31, 0(x2) # load 0xb1476cfb from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
feq.h x14, f31, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x16, 0xb3197547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10eef6ed # load x3 with value 0x10eef6ed
sw x3, 0(x2) # store 0x10eef6ed in memory
flh f30, 0(x2) # load 0x10eef6ed from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
feq.h x16, f30, f7 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x23, 0x07af4bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ce403c3 # load x3 with value 0x4ce403c3
sw x3, 0(x2) # store 0x4ce403c3 in memory
flh f11, 0(x2) # load 0x4ce403c3 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
feq.h x23, f11, f8 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x21, 0x1b556241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeea2acb8 # load x3 with value 0xeea2acb8
sw x3, 0(x2) # store 0xeea2acb8 in memory
flh f20, 0(x2) # load 0xeea2acb8 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
feq.h x21, f20, f4 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x12, 0x7ff1ddc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6af253d # load x3 with value 0xc6af253d
sw x3, 0(x2) # store 0xc6af253d in memory
flh f4, 0(x2) # load 0xc6af253d from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
feq.h x12, f4, f31 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x16, 0x2b8f1d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06b1e986 # load x3 with value 0x06b1e986
sw x3, 0(x2) # store 0x06b1e986 in memory
flh f26, 0(x2) # load 0x06b1e986 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
feq.h x16, f26, f23 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x5, 0x0808d3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1d74dce # load x3 with value 0xe1d74dce
sw x3, 0(x2) # store 0xe1d74dce in memory
flh f4, 0(x2) # load 0xe1d74dce from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
feq.h x5, f4, f20 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x12, 0xab8932f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33d336de # load x3 with value 0x33d336de
sw x3, 0(x2) # store 0x33d336de in memory
flh f9, 0(x2) # load 0x33d336de from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
feq.h x12, f9, f20 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x15, 0xdc66d8ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d842863 # load x3 with value 0x7d842863
sw x3, 0(x2) # store 0x7d842863 in memory
flh f20, 0(x2) # load 0x7d842863 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
feq.h x15, f20, f11 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x14, 0xd3d3b37b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84a5f90d # load x3 with value 0x84a5f90d
sw x3, 0(x2) # store 0x84a5f90d in memory
flh f1, 0(x2) # load 0x84a5f90d from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
feq.h x14, f1, f7 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x11, 0xfee49f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9d32b51 # load x3 with value 0xa9d32b51
sw x3, 0(x2) # store 0xa9d32b51 in memory
flh f25, 0(x2) # load 0xa9d32b51 from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
feq.h x11, f25, f6 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x4, 0x5d0998b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14050145 # load x3 with value 0x14050145
sw x3, 0(x2) # store 0x14050145 in memory
flh f16, 0(x2) # load 0x14050145 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
feq.h x4, f16, f30 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x9, 0x870aa072 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e8386d8 # load x3 with value 0x7e8386d8
sw x3, 0(x2) # store 0x7e8386d8 in memory
flh f19, 0(x2) # load 0x7e8386d8 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
feq.h x9, f19, f2 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x18, 0x03066817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94cb25bd # load x3 with value 0x94cb25bd
sw x3, 0(x2) # store 0x94cb25bd in memory
flh f20, 0(x2) # load 0x94cb25bd from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
feq.h x18, f20, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x2, 0x77a68a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x500c0664 # load x3 with value 0x500c0664
sw x3, 0(x2) # store 0x500c0664 in memory
flh f23, 0(x2) # load 0x500c0664 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
feq.h x2, f23, f5 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x17, 0x34f75e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0949059b # load x3 with value 0x0949059b
sw x3, 0(x2) # store 0x0949059b in memory
flh f14, 0(x2) # load 0x0949059b from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
feq.h x17, f14, f30 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x26, 0x1f3bb0ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29d89481 # load x3 with value 0x29d89481
sw x3, 0(x2) # store 0x29d89481 in memory
flh f10, 0(x2) # load 0x29d89481 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
feq.h x26, f10, f5 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x13, 0x3eced390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d9e0881 # load x3 with value 0x2d9e0881
sw x3, 0(x2) # store 0x2d9e0881 in memory
flh f22, 0(x2) # load 0x2d9e0881 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
feq.h x13, f22, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x5, 0x70045cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd35046c5 # load x3 with value 0xd35046c5
sw x3, 0(x2) # store 0xd35046c5 in memory
flh f14, 0(x2) # load 0xd35046c5 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
feq.h x5, f14, f11 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x23, 0xb9133746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6485c89 # load x3 with value 0xb6485c89
sw x3, 0(x2) # store 0xb6485c89 in memory
flh f13, 0(x2) # load 0xb6485c89 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
feq.h x23, f13, f1 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x28, 0x84093a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbba9a8fd # load x3 with value 0xbba9a8fd
sw x3, 0(x2) # store 0xbba9a8fd in memory
flh f4, 0(x2) # load 0xbba9a8fd from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
feq.h x28, f4, f13 # perform fcomp-type op

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x30, 0xd5a40cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaafa17a5 # load x3 with value 0xaafa17a5
sw x3, 0(x2) # store 0xaafa17a5 in memory
flh f14, 0(x2) # load 0xaafa17a5 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
feq.h x30, f14, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x8, 0x56e69782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
feq.h x8, f19, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x23, 0x919adc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
feq.h x23, f28, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x28, 0xd53ae4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
feq.h x28, f18, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x3, 0x2e3de73a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
feq.h x3, f9, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x14, 0x7bba0534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
feq.h x14, f30, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x10, 0xe219bb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
feq.h x10, f27, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x19, 0x383b0f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
feq.h x19, f25, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x10, 0x4ed3ffc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
feq.h x10, f1, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x2, 0x0c912f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
feq.h x2, f29, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x13, 0x6a2d480f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
feq.h x13, f30, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x19, 0x757092fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
feq.h x19, f16, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x30, 0x5cdbc6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
feq.h x30, f18, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x21, 0xa07e3de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
feq.h x21, f28, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x13, 0x342cf2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
feq.h x13, f26, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x15, 0x259806fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
feq.h x15, f18, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x4, 0x888b99cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
feq.h x4, f22, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x8, 0x521cc6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
feq.h x8, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x11, 0x6f139266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
feq.h x11, f22, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x5, 0xb69af50f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
feq.h x5, f24, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x1, 0x39f9354c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
feq.h x1, f24, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x24, 0x03281541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
feq.h x24, f31, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x30, 0x962eaefd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
feq.h x30, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x11, 0xdab3ff15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
feq.h x11, f3, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x26, 0xe2f88382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
feq.h x26, f23, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x2, 0x6e97cbba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
feq.h x2, f6, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x31, 0xd1bacb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
feq.h x31, f15, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x29, 0x3c3a4d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
feq.h x29, f13, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x31, 0xe04d6fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
feq.h x31, f2, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x15, 0x42a491ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
feq.h x15, f16, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x6, 0xba3e5400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
feq.h x6, f28, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x10, 0x55d935a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
feq.h x10, f8, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x13, 0xcc58208f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
feq.h x13, f22, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x8, 0x039f80c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
feq.h x8, f23, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x4, 0xd9187362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
feq.h x4, f18, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x6, 0xad7ca06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
feq.h x6, f11, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x29, 0x5593da49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
feq.h x29, f9, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x20, 0x13c3fa26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
feq.h x20, f4, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x24, 0x408c9325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
feq.h x24, f12, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x20, 0x447b80c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
feq.h x20, f10, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x6, 0x9f8d7625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
feq.h x6, f23, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x9, 0x8ca53cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
feq.h x9, f21, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x25, 0x67a6be85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
feq.h x25, f17, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x22, 0x46e9f2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
feq.h x22, f4, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x27, 0xd6c453f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
feq.h x27, f3, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x26, 0x62579fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
feq.h x26, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x26, 0xa7e7c376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
feq.h x26, f20, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x20, 0x7e4fd0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
feq.h x20, f2, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x15, 0x5bc5e99b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
feq.h x15, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x31, 0x1be9fb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
feq.h x31, f5, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x27, 0x9e41d8d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
feq.h x27, f7, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x4, 0x6b6fcbb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
feq.h x4, f16, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x4, 0x03b4915f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
feq.h x4, f26, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x31, 0xaf4df920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
feq.h x31, f8, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x17, 0x1d43da5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
feq.h x17, f16, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x10, 0xadc07df5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
feq.h x10, f7, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x8, 0xe5e76e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
feq.h x8, f10, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x4, 0xd87a299f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
feq.h x4, f13, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x29, 0x59bab779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
feq.h x29, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x6, 0xf00c38ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
feq.h x6, f31, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x16, 0x5d2b92ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
feq.h x16, f27, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x7, 0x966f2f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
feq.h x7, f12, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x3, 0x833cae5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
feq.h x3, f10, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x12, 0x166e4beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
feq.h x12, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x22, 0x9037af2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
feq.h x22, f5, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x5, 0xfb4debca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
feq.h x5, f27, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x24, 0xa7d1ab5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
feq.h x24, f13, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x18, 0x6bf5b5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
feq.h x18, f14, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x11, 0x1dd5eb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
feq.h x11, f23, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x6, 0xd6d8a2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
feq.h x6, f1, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x14, 0x3fc26389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
feq.h x14, f27, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x8, 0x3f8a7506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
feq.h x8, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x24, 0xb51dc688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
feq.h x24, f20, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x1, 0x0fcbd552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
feq.h x1, f17, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x11, 0x1ea50742 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
feq.h x11, f8, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x21, 0xc07dfe7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
feq.h x21, f17, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x24, 0x4087f418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
feq.h x24, f30, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x5, 0x579474e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
feq.h x5, f25, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x23, 0xf1d4a221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
feq.h x23, f22, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x14, 0x0944690b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
feq.h x14, f22, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x1, 0x4aee318e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
feq.h x1, f11, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x9, 0x5cfd8ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
feq.h x9, f6, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x9, 0xad9e87b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
feq.h x9, f22, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x3, 0x34c56b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
feq.h x3, f13, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x5, 0x53e7772c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
feq.h x5, f16, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x9, 0xace081cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
feq.h x9, f2, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x18, 0x76a4a01a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
feq.h x18, f19, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x18, 0x12ede07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
feq.h x18, f8, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x20, 0xf6a3ad0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
feq.h x20, f29, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x31, 0x834e3ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
feq.h x31, f25, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x28, 0x75ea45eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
feq.h x28, f5, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x2, 0x67af7352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
feq.h x2, f5, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x19, 0x5d82e87f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
feq.h x19, f16, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x1, 0x441a15d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
feq.h x1, f19, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x29, 0x4c872e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
feq.h x29, f5, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x18, 0x3c00a305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
feq.h x18, f20, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x4, 0xfd6a25e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
feq.h x4, f21, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x19, 0xc5b03fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
feq.h x19, f5, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x7, 0x6f323c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
feq.h x7, f25, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x2, 0x197d9572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
feq.h x2, f17, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x15, 0x12bd7db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
feq.h x15, f30, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x30, 0x0d7b054c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
feq.h x30, f8, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x13, 0xb5b1df14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
feq.h x13, f9, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x11, 0x87f4e2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
feq.h x11, f28, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x28, 0xaf6bdc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
feq.h x28, f11, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x9, 0xc44cf8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
feq.h x9, f13, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x24, 0xea662c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
feq.h x24, f9, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x20, 0x9fc79f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
feq.h x20, f5, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x25, 0x4c71d830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
feq.h x25, f17, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x7, 0x2c4544d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
feq.h x7, f19, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x30, 0xa5e67ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
feq.h x30, f12, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x17, 0x1029a8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
feq.h x17, f5, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x3, 0x369896a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
feq.h x3, f22, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x7, 0xfb36a4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
feq.h x7, f15, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x2, 0x48ae0f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
feq.h x2, f13, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x1, 0x3f9f533c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
feq.h x1, f14, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x5, 0x7b43675b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
feq.h x5, f8, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x7, 0x73ac5d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
feq.h x7, f5, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x21, 0x1eee4d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
feq.h x21, f11, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x31, 0xa13acb6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
feq.h x31, f25, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x16, 0xc69bbcff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
feq.h x16, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x5, 0xace46a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
feq.h x5, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x21, 0xd852cdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
feq.h x21, f22, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x9, 0x981bbb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
feq.h x9, f21, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x15, 0x2cbbef83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
feq.h x15, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x11, 0xf80eb59b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
feq.h x11, f25, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x10, 0x8923c340 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
feq.h x10, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x8, 0xe9d2f3fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
feq.h x8, f3, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x1, 0xba974396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
feq.h x1, f29, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x27, 0x4ae44d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
feq.h x27, f13, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x9, 0x860a608a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
feq.h x9, f14, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x6, 0x75c43000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
feq.h x6, f27, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x7, 0xeba578f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
feq.h x7, f28, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x3, 0xdc89b9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
feq.h x3, f19, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x7, 0x4524285f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
feq.h x7, f22, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x3, 0x4dcecaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
feq.h x3, f25, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x28, 0x941899c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
feq.h x28, f18, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x25, 0xf042e08b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
feq.h x25, f22, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x26, 0x79ea76d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
feq.h x26, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x28, 0x66714f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
feq.h x28, f20, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x29, 0xeaace3a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
feq.h x29, f1, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x14, 0xd6b2a8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
feq.h x14, f22, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x22, 0xdf0428b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
feq.h x22, f27, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x12, 0xef740dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
feq.h x12, f22, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x18, 0x992efa9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
feq.h x18, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x17, 0x56f4a933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
feq.h x17, f30, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x10, 0xaab32f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
feq.h x10, f14, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x9, 0xe24bfa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
feq.h x9, f12, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x4, 0x1913e58f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
feq.h x4, f30, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x9, 0x07fbe968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
feq.h x9, f13, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x19, 0x176867a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
feq.h x19, f5, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x9, 0xcf0018d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
feq.h x9, f27, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x26, 0x2916d4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
feq.h x26, f17, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x20, 0x2afb8c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
feq.h x20, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x1, 0x94265bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
feq.h x1, f27, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x28, 0x438201a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
feq.h x28, f17, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x31, 0x4d7451b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
feq.h x31, f29, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x5, 0xe9a1e2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
feq.h x5, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x23, 0x46f89d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
feq.h x23, f29, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x30, 0x7a36c896 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
feq.h x30, f12, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x31, 0x9c432146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
feq.h x31, f15, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x8, 0x99243327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
feq.h x8, f3, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x28, 0xbf52b652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
feq.h x28, f15, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x7, 0xc3f7f3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
feq.h x7, f30, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x23, 0x826f6859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
feq.h x23, f1, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x4, 0xd5e6214f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
feq.h x4, f9, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x10, 0x05ffdf35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
feq.h x10, f17, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x9, 0xe296c7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
feq.h x9, f5, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x19, 0x5b418f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
feq.h x19, f21, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x18, 0x8f93d528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
feq.h x18, f25, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x20, 0x3e860ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
feq.h x20, f24, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x23, 0x69389cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
feq.h x23, f11, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x16, 0xe6d77e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
feq.h x16, f4, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x3, 0x3373d024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
feq.h x3, f2, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x21, 0x6a6987b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
feq.h x21, f29, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x9, 0x33198946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
feq.h x9, f6, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x1, 0xf2cb5801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
feq.h x1, f28, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x26, 0x673b2006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
feq.h x26, f30, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x23, 0xdb3cc55f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
feq.h x23, f17, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x2, 0x48eb386e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
feq.h x2, f28, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x12, 0xedd5bafd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
feq.h x12, f26, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x16, 0x4ec96bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
feq.h x16, f9, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x28, 0xe7d9cc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
feq.h x28, f8, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x17, 0x3d226010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
feq.h x17, f10, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x15, 0x45ab566a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
feq.h x15, f19, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x31, 0x84c4e969 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
feq.h x31, f29, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x19, 0x7faafe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
feq.h x19, f15, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x9, 0xb77893ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
feq.h x9, f7, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x24, 0x08d2a339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
feq.h x24, f21, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x9, 0x5552df28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
feq.h x9, f29, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x29, 0x3bff22e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
feq.h x29, f25, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x23, 0x3584010f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
feq.h x23, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x19, 0xca81aecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
feq.h x19, f17, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x3, 0x2b038b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
feq.h x3, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x7, 0xda121300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
feq.h x7, f15, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x12, 0x7e1f6da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
feq.h x12, f6, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x1, 0xb6949fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
feq.h x1, f16, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x4, 0xda299376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
feq.h x4, f6, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x1, 0x43bf4b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
feq.h x1, f31, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x11, 0x55df4270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
feq.h x11, f13, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x18, 0xa8c100f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
feq.h x18, f7, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x10, 0xa250837e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
feq.h x10, f12, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x22, 0x6e25a6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
feq.h x22, f11, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x14, 0xa18b327d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
feq.h x14, f10, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x2, 0x35d3bde6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
feq.h x2, f9, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x23, 0xdc1bd18c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
feq.h x23, f19, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x20, 0xab7fa702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
feq.h x20, f21, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x19, 0x8b21e12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
feq.h x19, f16, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x22, 0x949dd289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
feq.h x22, f12, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x19, 0x01d7b330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
feq.h x19, f14, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x12, 0x00083f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
feq.h x12, f14, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x31, 0x3ce42de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
feq.h x31, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x1, 0xe9d793e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
feq.h x1, f8, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x23, 0x4327a547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
feq.h x23, f22, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x5, 0x22cf5fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
feq.h x5, f3, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x22, 0x5d2f2df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
feq.h x22, f20, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x6, 0x1ecc5102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
feq.h x6, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x21, 0x9d7eeb82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
feq.h x21, f27, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x12, 0x3b1f7475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
feq.h x12, f20, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x14, 0x3e46dda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
feq.h x14, f10, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x7, 0xa37e82bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
feq.h x7, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x9, 0xec6b41d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
feq.h x9, f22, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x8, 0x25fc9b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
feq.h x8, f15, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x7, 0xe8ec3334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
feq.h x7, f27, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x15, 0x820415f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
feq.h x15, f12, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x3, 0x1e5a0355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
feq.h x3, f4, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x10, 0xf69ec765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
feq.h x10, f12, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x13, 0x338837e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
feq.h x13, f18, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x3, 0x6177b54b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
feq.h x3, f20, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x21, 0x87ad84f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
feq.h x21, f6, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x25, 0xbb385cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
feq.h x25, f1, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x6, 0x37bed04f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
feq.h x6, f26, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x26, 0x9c9468dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
feq.h x26, f25, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x26, 0x5522c57c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
feq.h x26, f31, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x5, 0x5b47651d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
feq.h x5, f9, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x13, 0x33bc7f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
feq.h x13, f14, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x4, 0x97f03f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
feq.h x4, f22, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x31, 0xe9252b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
feq.h x31, f23, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x17, 0x3b87b4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
feq.h x17, f18, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x17, 0x2c6a3d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
feq.h x17, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x8, 0x6ad9449c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
feq.h x8, f6, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x26, 0x9ac03e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
feq.h x26, f5, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x7, 0x0f12dc40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
feq.h x7, f29, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x1, 0x633f5d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
feq.h x1, f8, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x28, 0x67b6714d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
feq.h x28, f10, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x15, 0x504bccc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
feq.h x15, f29, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x28, 0xeec6ab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
feq.h x28, f10, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x9, 0x4f1fa082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
feq.h x9, f10, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x21, 0x570fc05c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
feq.h x21, f1, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x18, 0x566bea4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
feq.h x18, f20, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x28, 0x1de91b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
feq.h x28, f7, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x27, 0xabc355c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
feq.h x27, f18, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x27, 0x45811343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
feq.h x27, f6, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x26, 0x36936dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
feq.h x26, f13, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x6, 0x9187d8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
feq.h x6, f23, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x8, 0x56de816b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
feq.h x8, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x25, 0x3e75272c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
feq.h x25, f19, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x24, 0x1421cccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
feq.h x24, f25, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x2, 0x2dc9a9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
feq.h x2, f21, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x23, 0xd1dc3bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
feq.h x23, f11, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x24, 0xc446ed70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
feq.h x24, f16, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x23, 0x74e6c3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
feq.h x23, f26, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x2, 0xdfc82c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
feq.h x2, f13, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x2, 0x6b33f20c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
feq.h x2, f29, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x3, 0x6180f647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
feq.h x3, f12, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x10, 0xe360b8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
feq.h x10, f1, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x20, 0x2f07672e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
feq.h x20, f4, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x14, 0xce6841cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
feq.h x14, f27, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x26, 0x995891ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
feq.h x26, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x9, 0xfef5932d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
feq.h x9, f6, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x6, 0xc4c8b602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
feq.h x6, f13, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x11, 0x207523b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
feq.h x11, f22, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x12, 0x9a0d1298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
feq.h x12, f24, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x30, 0xe2fb5251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
feq.h x30, f12, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x14, 0xee6db7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
feq.h x14, f7, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x27, 0x59ed2924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
feq.h x27, f6, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x13, 0x0cbc0ee0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
feq.h x13, f23, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x15, 0xd9640528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
feq.h x15, f19, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x11, 0x8ab7866d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
feq.h x11, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x16, 0x431ccefb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
feq.h x16, f31, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x24, 0xd6a5021b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
feq.h x24, f7, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x9, 0x4ef02c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
feq.h x9, f15, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x16, 0x47dee012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
feq.h x16, f18, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x2, 0x19db4c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
feq.h x2, f6, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x30, 0xa15e2e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
feq.h x30, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x8, 0xdc1d28cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
feq.h x8, f28, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x31, 0x9c80be06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
feq.h x31, f22, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x16, 0x90ed5d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
feq.h x16, f7, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x4, 0x999d769d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
feq.h x4, f30, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x23, 0x41c1235a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
feq.h x23, f9, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x31, 0xa7127ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
feq.h x31, f27, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x12, 0xa432b118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
feq.h x12, f8, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x2, 0x06e97c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
feq.h x2, f12, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x14, 0x333aaf3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
feq.h x14, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x2, 0x1b22762b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
feq.h x2, f24, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x3, 0x26404109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
feq.h x3, f31, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x23, 0xda2370dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
feq.h x23, f20, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x4, 0x225cedd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
feq.h x4, f26, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x27, 0xe316899d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
feq.h x27, f15, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x8, 0x9b42a053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
feq.h x8, f23, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x2, 0xeb75142f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
feq.h x2, f12, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x18, 0xcac33868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
feq.h x18, f14, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x20, 0x2644d858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
feq.h x20, f16, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x5, 0x034bf706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
feq.h x5, f27, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x7, 0x5850c3de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
feq.h x7, f22, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x25, 0x7665b1f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
feq.h x25, f16, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x24, 0x0d88ecd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
feq.h x24, f19, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x26, 0x29ad8084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
feq.h x26, f10, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x12, 0x138fcc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
feq.h x12, f20, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x14, 0xfe0bc277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
feq.h x14, f31, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x12, 0xee94874a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
feq.h x12, f29, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x1, 0x98832d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
feq.h x1, f8, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x11, 0x4cedaa4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
feq.h x11, f25, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x14, 0xf760119a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
feq.h x14, f17, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x7, 0x95fb03fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
feq.h x7, f22, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x15, 0x45dba035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
feq.h x15, f27, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x7, 0x12d7e746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
feq.h x7, f11, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x10, 0x3f9d6be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
feq.h x10, f5, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x9, 0x4027d38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
feq.h x9, f7, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x1, 0xcc0ff5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
feq.h x1, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x17, 0x408053de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
feq.h x17, f13, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x30, 0x4856a7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
feq.h x30, f11, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x18, 0x39cfdf7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
feq.h x18, f20, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x31, 0x45586e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
feq.h x31, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x28, 0xc2f2d5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
feq.h x28, f8, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x25, 0xf71f82bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
feq.h x25, f24, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x15, 0x5280a8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
feq.h x15, f7, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x13, 0x2c51213b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
feq.h x13, f29, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x2, 0x2f753d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
feq.h x2, f26, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x20, 0x19a6781a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
feq.h x20, f30, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x11, 0x90e2f37d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
feq.h x11, f24, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x10, 0xd6b3c7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
feq.h x10, f18, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x24, 0x5012c04a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
feq.h x24, f17, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x20, 0x2065c393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
feq.h x20, f5, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x21, 0xb99bdceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
feq.h x21, f11, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x31, 0x4e2e9c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
feq.h x31, f3, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x22, 0xc88f0777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
feq.h x22, f27, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x8, 0xfde95b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
feq.h x8, f16, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x24, 0x993dbf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
feq.h x24, f7, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x23, 0xf8d693e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
feq.h x23, f31, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x14, 0x76240563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
feq.h x14, f13, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x28, 0x2a33815e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
feq.h x28, f20, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x10, 0x76e10a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
feq.h x10, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x16, 0xe59a2e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
feq.h x16, f6, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x1, 0x50475fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
feq.h x1, f13, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x29, 0x20803cae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
feq.h x29, f30, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x1, 0xfc0b75df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
feq.h x1, f9, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x16, 0x10c9faaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
feq.h x16, f4, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x16, 0x270f7aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
feq.h x16, f29, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x31, 0x159c8327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
feq.h x31, f12, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x23, 0xc9ced465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
feq.h x23, f2, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x22, 0xb9b0d074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
feq.h x22, f24, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x8, 0x6b72b343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
feq.h x8, f31, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x7, 0x69f3d8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
feq.h x7, f17, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x7, 0x2bd052be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
feq.h x7, f1, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x18, 0x4267f44b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
feq.h x18, f8, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x16, 0xcadd675a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
feq.h x16, f30, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x26, 0x794edfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
feq.h x26, f12, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x19, 0x85a6650c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
feq.h x19, f24, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x3, 0x9853b918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
feq.h x3, f7, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x11, 0x841fccb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
feq.h x11, f1, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x24, 0x7cae5344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
feq.h x24, f11, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x24, 0x3a14207a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
feq.h x24, f19, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x9, 0xf856fa33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
feq.h x9, f8, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x4, 0x96f69b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
feq.h x4, f7, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x16, 0x44d65045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
feq.h x16, f23, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x29, 0xd6dc7cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
feq.h x29, f7, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x22, 0xcafc9702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
feq.h x22, f19, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x8, 0x97b2ad10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
feq.h x8, f6, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x16, 0xed69f0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
feq.h x16, f7, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x22, 0xdaf19b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
feq.h x22, f4, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x29, 0xe1364177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
feq.h x29, f16, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x28, 0x006e1b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
feq.h x28, f14, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x27, 0xef55235f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
feq.h x27, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x16, 0xe40e08dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
feq.h x16, f28, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x22, 0xab3d844a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
feq.h x22, f5, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x2, 0xce9fde9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
feq.h x2, f21, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x7, 0xe6e7f87f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
feq.h x7, f25, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x14, 0x0e0c0495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
feq.h x14, f2, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x27, 0x58b22060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
feq.h x27, f8, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x4, 0x8ac98aae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
feq.h x4, f7, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x23, 0xb05f808b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
feq.h x23, f12, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x5, 0xb677a5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
feq.h x5, f12, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x20, 0xa0a30e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
feq.h x20, f31, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x26, 0x9021c22c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
feq.h x26, f22, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x11, 0x96274bbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
feq.h x11, f30, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x24, 0xdb6bbfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
feq.h x24, f29, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x26, 0xa9589259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
feq.h x26, f5, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x13, 0xc5980413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
feq.h x13, f3, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x27, 0x6eec99ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
feq.h x27, f8, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x10, 0x1a1db732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
feq.h x10, f20, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x14, 0x7678939f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
feq.h x14, f7, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x27, 0xa9c7a931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
feq.h x27, f10, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x2, 0xfcc50a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
feq.h x2, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x29, 0xea1c4de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
feq.h x29, f22, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x26, 0x45895bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
feq.h x26, f21, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x28, 0xad76bf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
feq.h x28, f18, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x19, 0xa56a8feb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
feq.h x19, f24, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x18, 0xaf7f9f6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
feq.h x18, f17, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x4, 0x8f6b298e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
feq.h x4, f7, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x13, 0xe0908f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
feq.h x13, f3, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x28, 0x12c16068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
feq.h x28, f13, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x23, 0x655046de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
feq.h x23, f15, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x25, 0x14339bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
feq.h x25, f8, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x18, 0xda0780ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
feq.h x18, f19, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x19, 0xeb702fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
feq.h x19, f26, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x16, 0x7e55e654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
feq.h x16, f18, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x26, 0x60e4e0e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
feq.h x26, f16, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x9, 0x44a65179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
feq.h x9, f30, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x4, 0xbc6cc6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
feq.h x4, f8, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x2, 0x2f562ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
feq.h x2, f29, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x15, 0x2c53760c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
feq.h x15, f9, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x22, 0xde5b1706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
feq.h x22, f5, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x22, 0xb2924aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
feq.h x22, f10, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x2, 0xe4a49a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
feq.h x2, f24, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x8, 0x3b4bee98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
feq.h x8, f20, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x14, 0x5d5b213c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
feq.h x14, f30, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x20, 0xc920c672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
feq.h x20, f14, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x30, 0x233720d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
feq.h x30, f2, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x3, 0xf48d8457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
feq.h x3, f21, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x13, 0x9d3b3fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
feq.h x13, f26, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x27, 0x83cbc1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
feq.h x27, f12, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x27, 0xa3b5fa0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
feq.h x27, f7, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x18, 0x524322dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
feq.h x18, f27, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x11, 0x5f26ee4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
feq.h x11, f25, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x30, 0x9fee654f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
feq.h x30, f17, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x9, 0x1403204e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
feq.h x9, f5, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x8, 0x86febc3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
feq.h x8, f21, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x18, 0x0e34db7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
feq.h x18, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x8, 0x0fec6c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
feq.h x8, f24, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x7, 0x30bafa85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
feq.h x7, f31, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x3, 0x18fb9a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
feq.h x3, f27, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x17, 0x2140edb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
feq.h x17, f28, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x25, 0xd99d867f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
feq.h x25, f2, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x1, 0x61d704b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
feq.h x1, f15, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x14, 0x99c9b7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
feq.h x14, f17, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x31, 0x9fc5bbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
feq.h x31, f3, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x23, 0x0ab184b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
feq.h x23, f26, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x31, 0x093973de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
feq.h x31, f20, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x8, 0x1b610ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
feq.h x8, f13, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x9, 0xd02e2d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
feq.h x9, f1, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x8, 0x63bf75f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
feq.h x8, f5, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x14, 0x26444e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
feq.h x14, f29, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x25, 0xe9b34fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
feq.h x25, f31, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x13, 0x82271031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
feq.h x13, f4, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x26, 0x885e9b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
feq.h x26, f13, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x4, 0x83a6964e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
feq.h x4, f27, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x15, 0x0e26b662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
feq.h x15, f27, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x27, 0xdb7c35ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
feq.h x27, f18, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x21, 0xbc54f9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
feq.h x21, f30, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x8, 0x76de9206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
feq.h x8, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x14, 0xc0f70e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
feq.h x14, f16, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x31, 0x5dbdba5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
feq.h x31, f26, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x18, 0x1c8a90af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
feq.h x18, f12, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x13, 0xa769f1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
feq.h x13, f9, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x26, 0xabdd10a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
feq.h x26, f5, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x10, 0x3534570a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
feq.h x10, f26, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x12, 0xae510795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
feq.h x12, f6, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x26, 0x45d3082b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
feq.h x26, f13, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x22, 0x01c32d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
feq.h x22, f1, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x29, 0xffcd2b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
feq.h x29, f14, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x30, 0xa95e8629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
feq.h x30, f31, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x20, 0x7fe53b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
feq.h x20, f5, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x26, 0x3e5cc048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
feq.h x26, f4, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x15, 0xe5c64f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
feq.h x15, f26, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x13, 0xdd7ec47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
feq.h x13, f29, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x6, 0x039c25c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
feq.h x6, f20, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x15, 0x8dd3d497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
feq.h x15, f17, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x16, 0x9b0e336b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
feq.h x16, f6, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x14, 0x18b7a28c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
feq.h x14, f8, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x18, 0xb1224e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
feq.h x18, f29, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x15, 0x05c640b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
feq.h x15, f12, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x13, 0x03e41ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
feq.h x13, f11, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x19, 0xcd811c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
feq.h x19, f1, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x23, 0x616d391d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
feq.h x23, f31, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x18, 0xb52312f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
feq.h x18, f24, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x26, 0x0627163f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
feq.h x26, f7, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x3, 0x001fd9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
feq.h x3, f10, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x21, 0xf54af325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
feq.h x21, f19, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x10, 0x0ad67266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
feq.h x10, f9, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x18, 0x14a5b760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
feq.h x18, f30, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x10, 0x3ee44935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
feq.h x10, f22, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x13, 0x98335778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
feq.h x13, f6, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x20, 0xcb25c97d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
feq.h x20, f27, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x31, 0xd1f126c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
feq.h x31, f12, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x2, 0x844381ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
feq.h x2, f8, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x3, 0xee7d303d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
feq.h x3, f13, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x25, 0x7c30f48b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
feq.h x25, f6, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x16, 0x02f6120c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
feq.h x16, f6, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x19, 0xe81e1cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
feq.h x19, f4, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x17, 0xc70b09b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
feq.h x17, f20, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x24, 0x74100016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
feq.h x24, f21, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x2, 0x096bbe4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
feq.h x2, f6, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x24, 0x84046f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
feq.h x24, f9, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x4, 0x5cd7b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
feq.h x4, f2, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x2, 0xf2ba4903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
feq.h x2, f17, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x11, 0x1a445fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
feq.h x11, f30, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x8, 0x9617f52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
feq.h x8, f3, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x14, 0x717570d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
feq.h x14, f3, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x21, 0xf7c55fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
feq.h x21, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x12, 0x6675b6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
feq.h x12, f17, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x5, 0xa56fd2d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
feq.h x5, f11, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x12, 0x2118ca38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
feq.h x12, f13, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x29, 0x2c138849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
feq.h x29, f27, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x4, 0x5f4b9196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
feq.h x4, f5, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x27, 0x1038331e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
feq.h x27, f16, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x16, 0xaa55e9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
feq.h x16, f22, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x19, 0x52b7c1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
feq.h x19, f21, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x2, 0xf3d56687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
feq.h x2, f25, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x28, 0x03f2a25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
feq.h x28, f21, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x19, 0x4f6f0101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
feq.h x19, f4, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x8, 0x2a86995b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
feq.h x8, f22, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x25, 0x3c936b53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
feq.h x25, f28, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x14, 0xdc6e84d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
feq.h x14, f3, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x7, 0xd05328a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
feq.h x7, f8, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x11, 0xcf8c6f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
feq.h x11, f28, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x16, 0x028b6f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
feq.h x16, f8, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x22, 0xa1d67dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
feq.h x22, f21, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x26, 0x5b73ec89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
feq.h x26, f20, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x30, 0xacc249d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
feq.h x30, f15, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x26, 0x8c4df3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
feq.h x26, f9, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x18, 0xd045a6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
feq.h x18, f8, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x20, 0xf24715f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
feq.h x20, f7, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x4, 0xa880cbb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
feq.h x4, f2, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x27, 0xd9089cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
feq.h x27, f18, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x16, 0x4314fc8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
feq.h x16, f23, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x29, 0xed9b6d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
feq.h x29, f28, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x11, 0xf901ce0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
feq.h x11, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x9, 0xd1490ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
feq.h x9, f15, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x13, 0xf7ccb87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
feq.h x13, f30, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x13, 0xae964985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
feq.h x13, f31, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x7, 0x41d0ee19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
feq.h x7, f11, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x13, 0x2d04e357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
feq.h x13, f22, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x1, 0x93fbb347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
feq.h x1, f5, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x8, 0xdeb4dd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
feq.h x8, f23, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x5, 0xc214f3ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
feq.h x5, f28, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x23, 0xd8b53c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
feq.h x23, f10, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x6, 0xbf66f13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
feq.h x6, f14, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x21, 0x724d3e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
feq.h x21, f29, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x17, 0xf0ef7139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
feq.h x17, f27, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x22, 0xfc0b9653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
feq.h x22, f14, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x17, 0x6d35294b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
feq.h x17, f6, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x20, 0xd7755ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
feq.h x20, f27, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x14, 0xb544d53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
feq.h x14, f5, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x1, 0xb9af8b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
feq.h x1, f6, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x15, 0xb79f52ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
feq.h x15, f19, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x23, 0xb352b590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
feq.h x23, f6, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x9, 0x1cd497ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
feq.h x9, f8, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x26, 0x9d5f719f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
feq.h x26, f29, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x23, 0x0f452245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
feq.h x23, f29, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x24, 0xceef0a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
feq.h x24, f7, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x14, 0xe0ea493a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
feq.h x14, f8, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x23, 0x76b7e9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
feq.h x23, f29, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x25, 0xfb763ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
feq.h x25, f23, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x15, 0x893ee86e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
feq.h x15, f2, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x19, 0x480e4ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
feq.h x19, f1, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x22, 0x8f7b57d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
feq.h x22, f23, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x27, 0xf09e6a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
feq.h x27, f28, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x17, 0x5c015d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
feq.h x17, f11, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x15, 0xfbe70c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
feq.h x15, f2, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x23, 0x3f04e88e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
feq.h x23, f2, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x18, 0xa11f98a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
feq.h x18, f10, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x16, 0xf9864271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
feq.h x16, f18, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x15, 0x4b513f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
feq.h x15, f26, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x4, 0x2d9b7d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
feq.h x4, f24, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x11, 0xa0b44d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
feq.h x11, f27, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x15, 0x661059f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
feq.h x15, f4, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x6, 0x020745d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
feq.h x6, f12, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x3, 0xbe5aa89d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
feq.h x3, f31, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x26, 0x10d3fabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
feq.h x26, f22, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x23, 0xe2ab0316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
feq.h x23, f18, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x7, 0x0549a1be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
feq.h x7, f26, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x12, 0xc675ec03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
feq.h x12, f16, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x31, 0xdf7dcd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
feq.h x31, f7, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x2, 0x9aaf0dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
feq.h x2, f16, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x16, 0x3c43bd70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
feq.h x16, f12, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x8, 0x856e84cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
feq.h x8, f3, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x3, 0xd9dd55c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
feq.h x3, f6, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x11, 0xd67da4fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
feq.h x11, f23, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x14, 0x13fd772c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
feq.h x14, f15, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x18, 0x9a159b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
feq.h x18, f10, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x3, 0xea5acf2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
feq.h x3, f17, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x12, 0xdf63d08b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
feq.h x12, f9, f8 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x5, 0xd9d7c8df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
feq.h x5, f18, f9 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x5, 0x58666fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
feq.h x5, f2, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x20, 0x8df029d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
feq.h x20, f26, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x20, 0x9de0f848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
feq.h x20, f26, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x10, 0x918cb13f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
feq.h x10, f23, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x11, 0x94a846e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
feq.h x11, f25, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x12, 0xce2510bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
feq.h x12, f16, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x18, 0xecbfa887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
feq.h x18, f15, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x3, 0x521682e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
feq.h x3, f18, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x28, 0x65cc38d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
feq.h x28, f29, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x9, 0xb9cca803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
feq.h x9, f13, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x23, 0xd4644869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
feq.h x23, f25, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x1, 0xb4c9961d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
feq.h x1, f2, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x2, 0xc630b165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
feq.h x2, f26, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x11, 0xf56d44dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
feq.h x11, f28, f22 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x19, 0x4bb8f240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
feq.h x19, f9, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x14, 0x0bc8f3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
feq.h x14, f23, f27 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x2, 0xf26aa537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
feq.h x2, f27, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x25, 0xc1e0a80d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
feq.h x25, f13, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x20, 0x3c1a987f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
feq.h x20, f13, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x28, 0x47e09178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
feq.h x28, f24, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x1, 0xf7578402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
feq.h x1, f3, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x15, 0xefbd100a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
feq.h x15, f26, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x14, 0x2f2b4aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
feq.h x14, f27, f4 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x21, 0x9c907832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
feq.h x21, f11, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x14, 0x125b70a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
feq.h x14, f24, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x10, 0x1a86c84c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
feq.h x10, f5, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x24, 0x1099090d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
feq.h x24, f1, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x24, 0xc6df5db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
feq.h x24, f15, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x19, 0x2a14fd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
feq.h x19, f18, f30 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x25, 0xac883ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
feq.h x25, f3, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x3, 0x39c4d81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
feq.h x3, f17, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x23, 0x568cc681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
feq.h x23, f24, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x23, 0x73d1d1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
feq.h x23, f10, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x30, 0x86d4d5c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
feq.h x30, f1, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x18, 0x9ccc311a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
feq.h x18, f21, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x2, 0x23700959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
feq.h x2, f13, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x4, 0x6b8d7d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
feq.h x4, f28, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x25, 0x28127c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
feq.h x25, f28, f15 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x18, 0x3c7cfc55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
feq.h x18, f5, f16 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x18, 0xa6a8f557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
feq.h x18, f15, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x25, 0x7cc76e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
feq.h x25, f19, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x29, 0xbdad2a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
feq.h x29, f28, f12 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x19, 0x6fa48838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
feq.h x19, f20, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x28, 0x8035de07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
feq.h x28, f26, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x31, 0x2f2de2fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
feq.h x31, f8, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x11, 0xd44c1ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
feq.h x11, f14, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x6, 0xea048508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
feq.h x6, f29, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x1, 0x3dc2f2ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
feq.h x1, f31, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x9, 0x9e42ff65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
feq.h x9, f7, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x23, 0x8f6b18e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
feq.h x23, f21, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x6, 0xbe9e649e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
feq.h x6, f28, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x24, 0x02c47c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
feq.h x24, f27, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x16, 0x9b02c639 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
feq.h x16, f3, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x15, 0xc31f40ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
feq.h x15, f18, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x2, 0xe3425dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
feq.h x2, f28, f23 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x18, 0x8990d19a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
feq.h x18, f1, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x12, 0x0fe503e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
feq.h x12, f3, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x4, 0xf17061f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
feq.h x4, f17, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x18, 0xe7033d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
feq.h x18, f29, f5 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x16, 0x1311f212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
feq.h x16, f30, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x20, 0x35a7509e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
feq.h x20, f25, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x24, 0x11a89da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
feq.h x24, f11, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x10, 0x5054d41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
feq.h x10, f28, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x21, 0xfe9c7562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
feq.h x21, f1, f26 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x25, 0x2f0f8b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
feq.h x25, f29, f31 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x26, 0xeb54d858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
feq.h x26, f9, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x29, 0x2dedee2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
feq.h x29, f7, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x12, 0x287813d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
feq.h x12, f18, f1 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x22, 0x493f0310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
feq.h x22, f20, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x13, 0xccbd69fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
feq.h x13, f19, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x27, 0x302ded6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
feq.h x27, f22, f24 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x16, 0xee81d235 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
feq.h x16, f26, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x21, 0x3241b1a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
feq.h x21, f12, f7 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x27, 0x0f87e194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
feq.h x27, f30, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x20, 0x38723713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
feq.h x20, f12, f11 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x9, 0x6258f4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
feq.h x9, f15, f10 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x30, 0xc7b2cca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
feq.h x30, f7, f19 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x13, 0x7c3396a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
feq.h x13, f1, f18 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x20, 0x767acf91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
feq.h x20, f29, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x28, 0x534934bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
feq.h x28, f1, f14 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x14, 0xe1741932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
feq.h x14, f19, f21 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x28, 0xf09e4048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
feq.h x28, f23, f6 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x1, 0x4479a23b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
feq.h x1, f26, f28 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x30, 0x0171577b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
feq.h x30, f7, f20 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x19, 0x93d4ca31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
feq.h x19, f21, f29 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x28, 0xd98a3ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
feq.h x28, f24, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x14, 0xde1c02f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
feq.h x14, f29, f17 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x8, 0x946b6b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
feq.h x8, f21, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x10, 0x981f6221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
feq.h x10, f22, f25 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x13, 0x1fd4a279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
feq.h x13, f6, f3 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x15, 0x41369ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
feq.h x15, f3, f13 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x11, 0x7fcaed30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
feq.h x11, f14, f2 # perform fcomp-type op

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x14, 0x97dc282a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
feq.h x14, f9, f5 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f0)
li x13, 0xb31d05af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8e0881e # load x3 with value 0xf8e0881e
sw x3, 0(x2) # store 0xf8e0881e in memory
flh f0, 0(x2) # load 0xf8e0881e from memory into f0
li x3, 0x3cb48da7 # load x3 with value 0x3cb48da7
sw x3, 0(x2) # store 0x3cb48da7 in memory
flh f4, 0(x2) # load 0x3cb48da7 from memory into f4
feq.h x13, f0, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f1)
li x9, 0xdc0ccc40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d28c48b # load x3 with value 0x3d28c48b
sw x3, 0(x2) # store 0x3d28c48b in memory
flh f1, 0(x2) # load 0x3d28c48b from memory into f1
li x3, 0x8826b103 # load x3 with value 0x8826b103
sw x3, 0(x2) # store 0x8826b103 in memory
flh f16, 0(x2) # load 0x8826b103 from memory into f16
feq.h x9, f1, f16 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f2)
li x30, 0x8a3f2548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e2b1977 # load x3 with value 0x1e2b1977
sw x3, 0(x2) # store 0x1e2b1977 in memory
flh f2, 0(x2) # load 0x1e2b1977 from memory into f2
li x3, 0xf00f14e4 # load x3 with value 0xf00f14e4
sw x3, 0(x2) # store 0xf00f14e4 in memory
flh f27, 0(x2) # load 0xf00f14e4 from memory into f27
feq.h x30, f2, f27 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f3)
li x16, 0xe6514eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4476f32a # load x3 with value 0x4476f32a
sw x3, 0(x2) # store 0x4476f32a in memory
flh f3, 0(x2) # load 0x4476f32a from memory into f3
li x3, 0xfebbd45a # load x3 with value 0xfebbd45a
sw x3, 0(x2) # store 0xfebbd45a in memory
flh f26, 0(x2) # load 0xfebbd45a from memory into f26
feq.h x16, f3, f26 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f4)
li x3, 0x80e0ef26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31e447d1 # load x3 with value 0x31e447d1
sw x3, 0(x2) # store 0x31e447d1 in memory
flh f4, 0(x2) # load 0x31e447d1 from memory into f4
li x3, 0xfbc35e5e # load x3 with value 0xfbc35e5e
sw x3, 0(x2) # store 0xfbc35e5e in memory
flh f23, 0(x2) # load 0xfbc35e5e from memory into f23
feq.h x3, f4, f23 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0x83cc2a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe68ce32f # load x3 with value 0xe68ce32f
sw x3, 0(x2) # store 0xe68ce32f in memory
flh f5, 0(x2) # load 0xe68ce32f from memory into f5
li x3, 0x750f9a7e # load x3 with value 0x750f9a7e
sw x3, 0(x2) # store 0x750f9a7e in memory
flh f20, 0(x2) # load 0x750f9a7e from memory into f20
feq.h x12, f5, f20 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f6)
li x2, 0xf7f9f311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaac727b6 # load x3 with value 0xaac727b6
sw x3, 0(x2) # store 0xaac727b6 in memory
flh f6, 0(x2) # load 0xaac727b6 from memory into f6
li x3, 0xbac4b679 # load x3 with value 0xbac4b679
sw x3, 0(x2) # store 0xbac4b679 in memory
flh f24, 0(x2) # load 0xbac4b679 from memory into f24
feq.h x2, f6, f24 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f7)
li x20, 0x3e9fed24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5273fb59 # load x3 with value 0x5273fb59
sw x3, 0(x2) # store 0x5273fb59 in memory
flh f7, 0(x2) # load 0x5273fb59 from memory into f7
li x3, 0xb0a1d2f3 # load x3 with value 0xb0a1d2f3
sw x3, 0(x2) # store 0xb0a1d2f3 in memory
flh f10, 0(x2) # load 0xb0a1d2f3 from memory into f10
feq.h x20, f7, f10 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f8)
li x11, 0xa99e0975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3c7062c # load x3 with value 0xe3c7062c
sw x3, 0(x2) # store 0xe3c7062c in memory
flh f8, 0(x2) # load 0xe3c7062c from memory into f8
li x3, 0x004e4924 # load x3 with value 0x004e4924
sw x3, 0(x2) # store 0x004e4924 in memory
flh f29, 0(x2) # load 0x004e4924 from memory into f29
feq.h x11, f8, f29 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f9)
li x21, 0xaafe4874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77230759 # load x3 with value 0x77230759
sw x3, 0(x2) # store 0x77230759 in memory
flh f9, 0(x2) # load 0x77230759 from memory into f9
li x3, 0x76d64ee1 # load x3 with value 0x76d64ee1
sw x3, 0(x2) # store 0x76d64ee1 in memory
flh f3, 0(x2) # load 0x76d64ee1 from memory into f3
feq.h x21, f9, f3 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f10)
li x6, 0x6b4b1ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77ec20b5 # load x3 with value 0x77ec20b5
sw x3, 0(x2) # store 0x77ec20b5 in memory
flh f10, 0(x2) # load 0x77ec20b5 from memory into f10
li x3, 0xd64d0e00 # load x3 with value 0xd64d0e00
sw x3, 0(x2) # store 0xd64d0e00 in memory
flh f30, 0(x2) # load 0xd64d0e00 from memory into f30
feq.h x6, f10, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0x0e711d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecfd1e68 # load x3 with value 0xecfd1e68
sw x3, 0(x2) # store 0xecfd1e68 in memory
flh f11, 0(x2) # load 0xecfd1e68 from memory into f11
li x3, 0x2d16bf27 # load x3 with value 0x2d16bf27
sw x3, 0(x2) # store 0x2d16bf27 in memory
flh f26, 0(x2) # load 0x2d16bf27 from memory into f26
feq.h x20, f11, f26 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0x43989719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fa6292b # load x3 with value 0x3fa6292b
sw x3, 0(x2) # store 0x3fa6292b in memory
flh f12, 0(x2) # load 0x3fa6292b from memory into f12
li x3, 0x84f6fd0e # load x3 with value 0x84f6fd0e
sw x3, 0(x2) # store 0x84f6fd0e in memory
flh f18, 0(x2) # load 0x84f6fd0e from memory into f18
feq.h x11, f12, f18 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f13)
li x16, 0xe559ae8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x133add3f # load x3 with value 0x133add3f
sw x3, 0(x2) # store 0x133add3f in memory
flh f13, 0(x2) # load 0x133add3f from memory into f13
li x3, 0x94ded3d4 # load x3 with value 0x94ded3d4
sw x3, 0(x2) # store 0x94ded3d4 in memory
flh f11, 0(x2) # load 0x94ded3d4 from memory into f11
feq.h x16, f13, f11 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f14)
li x20, 0xddc60c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19f7de34 # load x3 with value 0x19f7de34
sw x3, 0(x2) # store 0x19f7de34 in memory
flh f14, 0(x2) # load 0x19f7de34 from memory into f14
li x3, 0xfca404e5 # load x3 with value 0xfca404e5
sw x3, 0(x2) # store 0xfca404e5 in memory
flh f15, 0(x2) # load 0xfca404e5 from memory into f15
feq.h x20, f14, f15 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x41857172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb6c5a2e # load x3 with value 0xcb6c5a2e
sw x3, 0(x2) # store 0xcb6c5a2e in memory
flh f15, 0(x2) # load 0xcb6c5a2e from memory into f15
li x3, 0xb2711296 # load x3 with value 0xb2711296
sw x3, 0(x2) # store 0xb2711296 in memory
flh f13, 0(x2) # load 0xb2711296 from memory into f13
feq.h x7, f15, f13 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f16)
li x21, 0x790b5371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c357ada # load x3 with value 0x7c357ada
sw x3, 0(x2) # store 0x7c357ada in memory
flh f16, 0(x2) # load 0x7c357ada from memory into f16
li x3, 0xa5ebc986 # load x3 with value 0xa5ebc986
sw x3, 0(x2) # store 0xa5ebc986 in memory
flh f23, 0(x2) # load 0xa5ebc986 from memory into f23
feq.h x21, f16, f23 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f17)
li x9, 0x99b4e57d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f46255a # load x3 with value 0x5f46255a
sw x3, 0(x2) # store 0x5f46255a in memory
flh f17, 0(x2) # load 0x5f46255a from memory into f17
li x3, 0xb2df47cd # load x3 with value 0xb2df47cd
sw x3, 0(x2) # store 0xb2df47cd in memory
flh f4, 0(x2) # load 0xb2df47cd from memory into f4
feq.h x9, f17, f4 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f18)
li x24, 0xb69f99c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f22bcff # load x3 with value 0x3f22bcff
sw x3, 0(x2) # store 0x3f22bcff in memory
flh f18, 0(x2) # load 0x3f22bcff from memory into f18
li x3, 0x7a4c4559 # load x3 with value 0x7a4c4559
sw x3, 0(x2) # store 0x7a4c4559 in memory
flh f20, 0(x2) # load 0x7a4c4559 from memory into f20
feq.h x24, f18, f20 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f19)
li x11, 0xeb601d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7a5c139 # load x3 with value 0xf7a5c139
sw x3, 0(x2) # store 0xf7a5c139 in memory
flh f19, 0(x2) # load 0xf7a5c139 from memory into f19
li x3, 0xc95da819 # load x3 with value 0xc95da819
sw x3, 0(x2) # store 0xc95da819 in memory
flh f16, 0(x2) # load 0xc95da819 from memory into f16
feq.h x11, f19, f16 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f20)
li x14, 0xb798902c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55d35fce # load x3 with value 0x55d35fce
sw x3, 0(x2) # store 0x55d35fce in memory
flh f20, 0(x2) # load 0x55d35fce from memory into f20
li x3, 0x2b18dc17 # load x3 with value 0x2b18dc17
sw x3, 0(x2) # store 0x2b18dc17 in memory
flh f11, 0(x2) # load 0x2b18dc17 from memory into f11
feq.h x14, f20, f11 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f21)
li x31, 0x9052bd2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9e50595 # load x3 with value 0xc9e50595
sw x3, 0(x2) # store 0xc9e50595 in memory
flh f21, 0(x2) # load 0xc9e50595 from memory into f21
li x3, 0xca1abef6 # load x3 with value 0xca1abef6
sw x3, 0(x2) # store 0xca1abef6 in memory
flh f6, 0(x2) # load 0xca1abef6 from memory into f6
feq.h x31, f21, f6 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0xd6ab2806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3653220 # load x3 with value 0xd3653220
sw x3, 0(x2) # store 0xd3653220 in memory
flh f22, 0(x2) # load 0xd3653220 from memory into f22
li x3, 0xaa590727 # load x3 with value 0xaa590727
sw x3, 0(x2) # store 0xaa590727 in memory
flh f9, 0(x2) # load 0xaa590727 from memory into f9
feq.h x4, f22, f9 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0x6fc64fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x978454f2 # load x3 with value 0x978454f2
sw x3, 0(x2) # store 0x978454f2 in memory
flh f23, 0(x2) # load 0x978454f2 from memory into f23
li x3, 0x40c9da3d # load x3 with value 0x40c9da3d
sw x3, 0(x2) # store 0x40c9da3d in memory
flh f15, 0(x2) # load 0x40c9da3d from memory into f15
feq.h x26, f23, f15 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f24)
li x12, 0x58f86ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5c8459 # load x3 with value 0x7b5c8459
sw x3, 0(x2) # store 0x7b5c8459 in memory
flh f24, 0(x2) # load 0x7b5c8459 from memory into f24
li x3, 0x38f8a24b # load x3 with value 0x38f8a24b
sw x3, 0(x2) # store 0x38f8a24b in memory
flh f7, 0(x2) # load 0x38f8a24b from memory into f7
feq.h x12, f24, f7 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f25)
li x20, 0xed9d7cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0892b752 # load x3 with value 0x0892b752
sw x3, 0(x2) # store 0x0892b752 in memory
flh f25, 0(x2) # load 0x0892b752 from memory into f25
li x3, 0xe115d090 # load x3 with value 0xe115d090
sw x3, 0(x2) # store 0xe115d090 in memory
flh f30, 0(x2) # load 0xe115d090 from memory into f30
feq.h x20, f25, f30 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f26)
li x9, 0x092e0e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1352597e # load x3 with value 0x1352597e
sw x3, 0(x2) # store 0x1352597e in memory
flh f26, 0(x2) # load 0x1352597e from memory into f26
li x3, 0x20fe23c6 # load x3 with value 0x20fe23c6
sw x3, 0(x2) # store 0x20fe23c6 in memory
flh f14, 0(x2) # load 0x20fe23c6 from memory into f14
feq.h x9, f26, f14 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f27)
li x31, 0x4c41224b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3c996e2 # load x3 with value 0xa3c996e2
sw x3, 0(x2) # store 0xa3c996e2 in memory
flh f27, 0(x2) # load 0xa3c996e2 from memory into f27
li x3, 0x8eda2392 # load x3 with value 0x8eda2392
sw x3, 0(x2) # store 0x8eda2392 in memory
flh f10, 0(x2) # load 0x8eda2392 from memory into f10
feq.h x31, f27, f10 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f28)
li x1, 0x64cc854c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e0e09e9 # load x3 with value 0x0e0e09e9
sw x3, 0(x2) # store 0x0e0e09e9 in memory
flh f28, 0(x2) # load 0x0e0e09e9 from memory into f28
li x3, 0xf0213e3e # load x3 with value 0xf0213e3e
sw x3, 0(x2) # store 0xf0213e3e in memory
flh f15, 0(x2) # load 0xf0213e3e from memory into f15
feq.h x1, f28, f15 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f29)
li x19, 0xfddbd0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6104b459 # load x3 with value 0x6104b459
sw x3, 0(x2) # store 0x6104b459 in memory
flh f29, 0(x2) # load 0x6104b459 from memory into f29
li x3, 0x3e7d0c92 # load x3 with value 0x3e7d0c92
sw x3, 0(x2) # store 0x3e7d0c92 in memory
flh f17, 0(x2) # load 0x3e7d0c92 from memory into f17
feq.h x19, f29, f17 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0x59be4c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x631610b4 # load x3 with value 0x631610b4
sw x3, 0(x2) # store 0x631610b4 in memory
flh f30, 0(x2) # load 0x631610b4 from memory into f30
li x3, 0x9cb7af1f # load x3 with value 0x9cb7af1f
sw x3, 0(x2) # store 0x9cb7af1f in memory
flh f28, 0(x2) # load 0x9cb7af1f from memory into f28
feq.h x14, f30, f28 # perform fcomp-type op

# Testcase cp_fs1 (Test source fs1 = f31)
li x28, 0x57b2a436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x249f021a # load x3 with value 0x249f021a
sw x3, 0(x2) # store 0x249f021a in memory
flh f31, 0(x2) # load 0x249f021a from memory into f31
li x3, 0x57991b4a # load x3 with value 0x57991b4a
sw x3, 0(x2) # store 0x57991b4a in memory
flh f8, 0(x2) # load 0x57991b4a from memory into f8
feq.h x28, f31, f8 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f0)
li x15, 0xb5530e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3c80699 # load x3 with value 0xa3c80699
sw x3, 0(x2) # store 0xa3c80699 in memory
flh f31, 0(x2) # load 0xa3c80699 from memory into f31
li x3, 0x602ed625 # load x3 with value 0x602ed625
sw x3, 0(x2) # store 0x602ed625 in memory
flh f0, 0(x2) # load 0x602ed625 from memory into f0
feq.h x15, f31, f0 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0xfcc76886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x438a3a8e # load x3 with value 0x438a3a8e
sw x3, 0(x2) # store 0x438a3a8e in memory
flh f20, 0(x2) # load 0x438a3a8e from memory into f20
li x3, 0xd4898d5e # load x3 with value 0xd4898d5e
sw x3, 0(x2) # store 0xd4898d5e in memory
flh f1, 0(x2) # load 0xd4898d5e from memory into f1
feq.h x1, f20, f1 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f2)
li x20, 0xa8076056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62d7e9be # load x3 with value 0x62d7e9be
sw x3, 0(x2) # store 0x62d7e9be in memory
flh f8, 0(x2) # load 0x62d7e9be from memory into f8
li x3, 0x3a2c6e00 # load x3 with value 0x3a2c6e00
sw x3, 0(x2) # store 0x3a2c6e00 in memory
flh f2, 0(x2) # load 0x3a2c6e00 from memory into f2
feq.h x20, f8, f2 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f3)
li x10, 0x0ff81aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x212c411d # load x3 with value 0x212c411d
sw x3, 0(x2) # store 0x212c411d in memory
flh f17, 0(x2) # load 0x212c411d from memory into f17
li x3, 0xb1fce3d3 # load x3 with value 0xb1fce3d3
sw x3, 0(x2) # store 0xb1fce3d3 in memory
flh f3, 0(x2) # load 0xb1fce3d3 from memory into f3
feq.h x10, f17, f3 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f4)
li x30, 0xad3e0719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61dda4ee # load x3 with value 0x61dda4ee
sw x3, 0(x2) # store 0x61dda4ee in memory
flh f26, 0(x2) # load 0x61dda4ee from memory into f26
li x3, 0x8634c73f # load x3 with value 0x8634c73f
sw x3, 0(x2) # store 0x8634c73f in memory
flh f4, 0(x2) # load 0x8634c73f from memory into f4
feq.h x30, f26, f4 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f5)
li x17, 0xd66c7f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdcc3390 # load x3 with value 0xbdcc3390
sw x3, 0(x2) # store 0xbdcc3390 in memory
flh f2, 0(x2) # load 0xbdcc3390 from memory into f2
li x3, 0x18009877 # load x3 with value 0x18009877
sw x3, 0(x2) # store 0x18009877 in memory
flh f5, 0(x2) # load 0x18009877 from memory into f5
feq.h x17, f2, f5 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f6)
li x1, 0xfcf520e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda0e257b # load x3 with value 0xda0e257b
sw x3, 0(x2) # store 0xda0e257b in memory
flh f7, 0(x2) # load 0xda0e257b from memory into f7
li x3, 0x71518bbe # load x3 with value 0x71518bbe
sw x3, 0(x2) # store 0x71518bbe in memory
flh f6, 0(x2) # load 0x71518bbe from memory into f6
feq.h x1, f7, f6 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f7)
li x21, 0x81398eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56490bfb # load x3 with value 0x56490bfb
sw x3, 0(x2) # store 0x56490bfb in memory
flh f2, 0(x2) # load 0x56490bfb from memory into f2
li x3, 0x2ab3e209 # load x3 with value 0x2ab3e209
sw x3, 0(x2) # store 0x2ab3e209 in memory
flh f7, 0(x2) # load 0x2ab3e209 from memory into f7
feq.h x21, f2, f7 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f8)
li x10, 0x7a3f06b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84fa781c # load x3 with value 0x84fa781c
sw x3, 0(x2) # store 0x84fa781c in memory
flh f23, 0(x2) # load 0x84fa781c from memory into f23
li x3, 0xbcf6660e # load x3 with value 0xbcf6660e
sw x3, 0(x2) # store 0xbcf6660e in memory
flh f8, 0(x2) # load 0xbcf6660e from memory into f8
feq.h x10, f23, f8 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f9)
li x6, 0xafe096ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1bc7dbd # load x3 with value 0xc1bc7dbd
sw x3, 0(x2) # store 0xc1bc7dbd in memory
flh f21, 0(x2) # load 0xc1bc7dbd from memory into f21
li x3, 0xd5b2ae9f # load x3 with value 0xd5b2ae9f
sw x3, 0(x2) # store 0xd5b2ae9f in memory
flh f9, 0(x2) # load 0xd5b2ae9f from memory into f9
feq.h x6, f21, f9 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f10)
li x24, 0x5a955b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57eec03e # load x3 with value 0x57eec03e
sw x3, 0(x2) # store 0x57eec03e in memory
flh f19, 0(x2) # load 0x57eec03e from memory into f19
li x3, 0xd86205e7 # load x3 with value 0xd86205e7
sw x3, 0(x2) # store 0xd86205e7 in memory
flh f10, 0(x2) # load 0xd86205e7 from memory into f10
feq.h x24, f19, f10 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0x8f24f4b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07cef7ab # load x3 with value 0x07cef7ab
sw x3, 0(x2) # store 0x07cef7ab in memory
flh f22, 0(x2) # load 0x07cef7ab from memory into f22
li x3, 0x43d17664 # load x3 with value 0x43d17664
sw x3, 0(x2) # store 0x43d17664 in memory
flh f11, 0(x2) # load 0x43d17664 from memory into f11
feq.h x4, f22, f11 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f12)
li x5, 0xc390b56d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf3494cf # load x3 with value 0xbf3494cf
sw x3, 0(x2) # store 0xbf3494cf in memory
flh f8, 0(x2) # load 0xbf3494cf from memory into f8
li x3, 0xb02dd3d3 # load x3 with value 0xb02dd3d3
sw x3, 0(x2) # store 0xb02dd3d3 in memory
flh f12, 0(x2) # load 0xb02dd3d3 from memory into f12
feq.h x5, f8, f12 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f13)
li x28, 0x78a178d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97394f9f # load x3 with value 0x97394f9f
sw x3, 0(x2) # store 0x97394f9f in memory
flh f6, 0(x2) # load 0x97394f9f from memory into f6
li x3, 0xf03ae24e # load x3 with value 0xf03ae24e
sw x3, 0(x2) # store 0xf03ae24e in memory
flh f13, 0(x2) # load 0xf03ae24e from memory into f13
feq.h x28, f6, f13 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f14)
li x16, 0x1071fae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e230c62 # load x3 with value 0x8e230c62
sw x3, 0(x2) # store 0x8e230c62 in memory
flh f31, 0(x2) # load 0x8e230c62 from memory into f31
li x3, 0xad4dab56 # load x3 with value 0xad4dab56
sw x3, 0(x2) # store 0xad4dab56 in memory
flh f14, 0(x2) # load 0xad4dab56 from memory into f14
feq.h x16, f31, f14 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f15)
li x1, 0xe5e27ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa212d21c # load x3 with value 0xa212d21c
sw x3, 0(x2) # store 0xa212d21c in memory
flh f13, 0(x2) # load 0xa212d21c from memory into f13
li x3, 0xe910f54f # load x3 with value 0xe910f54f
sw x3, 0(x2) # store 0xe910f54f in memory
flh f15, 0(x2) # load 0xe910f54f from memory into f15
feq.h x1, f13, f15 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f16)
li x7, 0x7febb92a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa76a3b7a # load x3 with value 0xa76a3b7a
sw x3, 0(x2) # store 0xa76a3b7a in memory
flh f2, 0(x2) # load 0xa76a3b7a from memory into f2
li x3, 0x1f6d049f # load x3 with value 0x1f6d049f
sw x3, 0(x2) # store 0x1f6d049f in memory
flh f16, 0(x2) # load 0x1f6d049f from memory into f16
feq.h x7, f2, f16 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f17)
li x7, 0xfbad9783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9ab94a3 # load x3 with value 0xa9ab94a3
sw x3, 0(x2) # store 0xa9ab94a3 in memory
flh f28, 0(x2) # load 0xa9ab94a3 from memory into f28
li x3, 0x47162555 # load x3 with value 0x47162555
sw x3, 0(x2) # store 0x47162555 in memory
flh f17, 0(x2) # load 0x47162555 from memory into f17
feq.h x7, f28, f17 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f18)
li x23, 0xe551d725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86a8d3d9 # load x3 with value 0x86a8d3d9
sw x3, 0(x2) # store 0x86a8d3d9 in memory
flh f29, 0(x2) # load 0x86a8d3d9 from memory into f29
li x3, 0x8230b3f3 # load x3 with value 0x8230b3f3
sw x3, 0(x2) # store 0x8230b3f3 in memory
flh f18, 0(x2) # load 0x8230b3f3 from memory into f18
feq.h x23, f29, f18 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f19)
li x29, 0x25c303f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ec6b171 # load x3 with value 0x4ec6b171
sw x3, 0(x2) # store 0x4ec6b171 in memory
flh f28, 0(x2) # load 0x4ec6b171 from memory into f28
li x3, 0x78965d69 # load x3 with value 0x78965d69
sw x3, 0(x2) # store 0x78965d69 in memory
flh f19, 0(x2) # load 0x78965d69 from memory into f19
feq.h x29, f28, f19 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f20)
li x4, 0x214d2ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa65d889c # load x3 with value 0xa65d889c
sw x3, 0(x2) # store 0xa65d889c in memory
flh f14, 0(x2) # load 0xa65d889c from memory into f14
li x3, 0x73c92454 # load x3 with value 0x73c92454
sw x3, 0(x2) # store 0x73c92454 in memory
flh f20, 0(x2) # load 0x73c92454 from memory into f20
feq.h x4, f14, f20 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f21)
li x16, 0x27cb8d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27c2250f # load x3 with value 0x27c2250f
sw x3, 0(x2) # store 0x27c2250f in memory
flh f9, 0(x2) # load 0x27c2250f from memory into f9
li x3, 0x6c36ebb8 # load x3 with value 0x6c36ebb8
sw x3, 0(x2) # store 0x6c36ebb8 in memory
flh f21, 0(x2) # load 0x6c36ebb8 from memory into f21
feq.h x16, f9, f21 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f22)
li x8, 0xc9ae4ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbba47a91 # load x3 with value 0xbba47a91
sw x3, 0(x2) # store 0xbba47a91 in memory
flh f24, 0(x2) # load 0xbba47a91 from memory into f24
li x3, 0x828fbcad # load x3 with value 0x828fbcad
sw x3, 0(x2) # store 0x828fbcad in memory
flh f22, 0(x2) # load 0x828fbcad from memory into f22
feq.h x8, f24, f22 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f23)
li x10, 0xb805bf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2866bba1 # load x3 with value 0x2866bba1
sw x3, 0(x2) # store 0x2866bba1 in memory
flh f30, 0(x2) # load 0x2866bba1 from memory into f30
li x3, 0xa16ed1a9 # load x3 with value 0xa16ed1a9
sw x3, 0(x2) # store 0xa16ed1a9 in memory
flh f23, 0(x2) # load 0xa16ed1a9 from memory into f23
feq.h x10, f30, f23 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f24)
li x26, 0x266741e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52039a18 # load x3 with value 0x52039a18
sw x3, 0(x2) # store 0x52039a18 in memory
flh f4, 0(x2) # load 0x52039a18 from memory into f4
li x3, 0xb823b344 # load x3 with value 0xb823b344
sw x3, 0(x2) # store 0xb823b344 in memory
flh f24, 0(x2) # load 0xb823b344 from memory into f24
feq.h x26, f4, f24 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f25)
li x1, 0xef40782a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32efcaf9 # load x3 with value 0x32efcaf9
sw x3, 0(x2) # store 0x32efcaf9 in memory
flh f2, 0(x2) # load 0x32efcaf9 from memory into f2
li x3, 0x8376515d # load x3 with value 0x8376515d
sw x3, 0(x2) # store 0x8376515d in memory
flh f25, 0(x2) # load 0x8376515d from memory into f25
feq.h x1, f2, f25 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f26)
li x8, 0x1cd3bae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x425377bd # load x3 with value 0x425377bd
sw x3, 0(x2) # store 0x425377bd in memory
flh f28, 0(x2) # load 0x425377bd from memory into f28
li x3, 0x0cf22c58 # load x3 with value 0x0cf22c58
sw x3, 0(x2) # store 0x0cf22c58 in memory
flh f26, 0(x2) # load 0x0cf22c58 from memory into f26
feq.h x8, f28, f26 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f27)
li x25, 0x06304f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc4ada70 # load x3 with value 0xbc4ada70
sw x3, 0(x2) # store 0xbc4ada70 in memory
flh f12, 0(x2) # load 0xbc4ada70 from memory into f12
li x3, 0x77d986f8 # load x3 with value 0x77d986f8
sw x3, 0(x2) # store 0x77d986f8 in memory
flh f27, 0(x2) # load 0x77d986f8 from memory into f27
feq.h x25, f12, f27 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f28)
li x19, 0xbd10d4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1da677b4 # load x3 with value 0x1da677b4
sw x3, 0(x2) # store 0x1da677b4 in memory
flh f11, 0(x2) # load 0x1da677b4 from memory into f11
li x3, 0x1ee3b275 # load x3 with value 0x1ee3b275
sw x3, 0(x2) # store 0x1ee3b275 in memory
flh f28, 0(x2) # load 0x1ee3b275 from memory into f28
feq.h x19, f11, f28 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f29)
li x21, 0x237c2e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6003d08 # load x3 with value 0xe6003d08
sw x3, 0(x2) # store 0xe6003d08 in memory
flh f5, 0(x2) # load 0xe6003d08 from memory into f5
li x3, 0x79d126dc # load x3 with value 0x79d126dc
sw x3, 0(x2) # store 0x79d126dc in memory
flh f29, 0(x2) # load 0x79d126dc from memory into f29
feq.h x21, f5, f29 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f30)
li x5, 0x932353fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63f74b95 # load x3 with value 0x63f74b95
sw x3, 0(x2) # store 0x63f74b95 in memory
flh f29, 0(x2) # load 0x63f74b95 from memory into f29
li x3, 0xe61f7866 # load x3 with value 0xe61f7866
sw x3, 0(x2) # store 0xe61f7866 in memory
flh f30, 0(x2) # load 0xe61f7866 from memory into f30
feq.h x5, f29, f30 # perform fcomp-type op

# Testcase cp_fs2 (Test source fs2 = f31)
li x29, 0x7804d627 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e96b405 # load x3 with value 0x5e96b405
sw x3, 0(x2) # store 0x5e96b405 in memory
flh f3, 0(x2) # load 0x5e96b405 from memory into f3
li x3, 0xafd1f7ae # load x3 with value 0xafd1f7ae
sw x3, 0(x2) # store 0xafd1f7ae in memory
flh f31, 0(x2) # load 0xafd1f7ae from memory into f31
feq.h x29, f3, f31 # perform fcomp-type op

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
