///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.w.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.047122
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
li x0, 0x91d78c14c63249e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x677d9cf691df3140 # load x3 with value 0x677d9cf691df3140
sw x3, 0(x2) # store 0x677d9cf691df3140 in memory
flh f15, 0(x2) # load 0x677d9cf691df3140 from memory into f15
fcvt.w.h x0, f15 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x896feacf83138fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f1efd87db4e1af0 # load x3 with value 0x7f1efd87db4e1af0
sw x3, 0(x2) # store 0x7f1efd87db4e1af0 in memory
flh f28, 0(x2) # load 0x7f1efd87db4e1af0 from memory into f28
fcvt.w.h x1, f28 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf193fd94d8482d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x889eac28c13a78a7 # load x3 with value 0x889eac28c13a78a7
sw x3, 0(x2) # store 0x889eac28c13a78a7 in memory
flh f26, 0(x2) # load 0x889eac28c13a78a7 from memory into f26
fcvt.w.h x2, f26 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xec4be19f3f5f9769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2a5b201b1773e6a7 # load x3 with value 0x2a5b201b1773e6a7
sw x3, 0(x2) # store 0x2a5b201b1773e6a7 in memory
flh f21, 0(x2) # load 0x2a5b201b1773e6a7 from memory into f21
fcvt.w.h x3, f21 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x578f5bde9042ffa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfb1135f895e6e082 # load x3 with value 0xfb1135f895e6e082
sw x3, 0(x2) # store 0xfb1135f895e6e082 in memory
flh f22, 0(x2) # load 0xfb1135f895e6e082 from memory into f22
fcvt.w.h x4, f22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0c0dda894cfd6f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6227bcfae77ffccd # load x3 with value 0x6227bcfae77ffccd
sw x3, 0(x2) # store 0x6227bcfae77ffccd in memory
flh f17, 0(x2) # load 0x6227bcfae77ffccd from memory into f17
fcvt.w.h x5, f17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x72b91a8f4e41a25d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x60eb6fda3598753b # load x3 with value 0x60eb6fda3598753b
sw x3, 0(x2) # store 0x60eb6fda3598753b in memory
flh f4, 0(x2) # load 0x60eb6fda3598753b from memory into f4
fcvt.w.h x6, f4 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x03bd4110ba24dc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66ecee6838f6c1b2 # load x3 with value 0x66ecee6838f6c1b2
sw x3, 0(x2) # store 0x66ecee6838f6c1b2 in memory
flh f17, 0(x2) # load 0x66ecee6838f6c1b2 from memory into f17
fcvt.w.h x7, f17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x56f84478b300fcaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xad64ae61ec8478f4 # load x3 with value 0xad64ae61ec8478f4
sw x3, 0(x2) # store 0xad64ae61ec8478f4 in memory
flh f12, 0(x2) # load 0xad64ae61ec8478f4 from memory into f12
fcvt.w.h x8, f12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8ee83d24c12930a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8d27f37c8b7d32da # load x3 with value 0x8d27f37c8b7d32da
sw x3, 0(x2) # store 0x8d27f37c8b7d32da in memory
flh f8, 0(x2) # load 0x8d27f37c8b7d32da from memory into f8
fcvt.w.h x9, f8 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa6437d54642646b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x49703b2d29ea9238 # load x3 with value 0x49703b2d29ea9238
sw x3, 0(x2) # store 0x49703b2d29ea9238 in memory
flh f29, 0(x2) # load 0x49703b2d29ea9238 from memory into f29
fcvt.w.h x10, f29 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9b2904a2ec9c31e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc99755354f278b7 # load x3 with value 0xcc99755354f278b7
sw x3, 0(x2) # store 0xcc99755354f278b7 in memory
flh f14, 0(x2) # load 0xcc99755354f278b7 from memory into f14
fcvt.w.h x11, f14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6839de6b151fc9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc202ea851bc84e1d # load x3 with value 0xc202ea851bc84e1d
sw x3, 0(x2) # store 0xc202ea851bc84e1d in memory
flh f30, 0(x2) # load 0xc202ea851bc84e1d from memory into f30
fcvt.w.h x12, f30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x521695634d999344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x79e12f7e15728b31 # load x3 with value 0x79e12f7e15728b31
sw x3, 0(x2) # store 0x79e12f7e15728b31 in memory
flh f6, 0(x2) # load 0x79e12f7e15728b31 from memory into f6
fcvt.w.h x13, f6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7002d20f8d54df02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe4622dad3b973f19 # load x3 with value 0xe4622dad3b973f19
sw x3, 0(x2) # store 0xe4622dad3b973f19 in memory
flh f9, 0(x2) # load 0xe4622dad3b973f19 from memory into f9
fcvt.w.h x14, f9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x5ed7597350f62fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9b327c0f01bd56e1 # load x3 with value 0x9b327c0f01bd56e1
sw x3, 0(x2) # store 0x9b327c0f01bd56e1 in memory
flh f26, 0(x2) # load 0x9b327c0f01bd56e1 from memory into f26
fcvt.w.h x15, f26 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5cae707facdc30eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x431b89d3e5d907d7 # load x3 with value 0x431b89d3e5d907d7
sw x3, 0(x2) # store 0x431b89d3e5d907d7 in memory
flh f28, 0(x2) # load 0x431b89d3e5d907d7 from memory into f28
fcvt.w.h x16, f28 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xb5d961ed4c0217aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x92b5ab380a38d33a # load x3 with value 0x92b5ab380a38d33a
sw x3, 0(x2) # store 0x92b5ab380a38d33a in memory
flh f10, 0(x2) # load 0x92b5ab380a38d33a from memory into f10
fcvt.w.h x17, f10 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb98eda01e3c0fd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd115b0faf133d80d # load x3 with value 0xd115b0faf133d80d
sw x3, 0(x2) # store 0xd115b0faf133d80d in memory
flh f12, 0(x2) # load 0xd115b0faf133d80d from memory into f12
fcvt.w.h x18, f12 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xec66caf4a8602173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x49d61dc43ac03499 # load x3 with value 0x49d61dc43ac03499
sw x3, 0(x2) # store 0x49d61dc43ac03499 in memory
flh f24, 0(x2) # load 0x49d61dc43ac03499 from memory into f24
fcvt.w.h x19, f24 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb00a6bf6dd3c8f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x63289df1c9c2ac # load x3 with value 0x63289df1c9c2ac
sw x3, 0(x2) # store 0x63289df1c9c2ac in memory
flh f1, 0(x2) # load 0x63289df1c9c2ac from memory into f1
fcvt.w.h x20, f1 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x473e8de1f902d18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xebd218f02ad3d5ca # load x3 with value 0xebd218f02ad3d5ca
sw x3, 0(x2) # store 0xebd218f02ad3d5ca in memory
flh f22, 0(x2) # load 0xebd218f02ad3d5ca from memory into f22
fcvt.w.h x21, f22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x5f3f747e977c94b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x21c2e1f28cecbf1b # load x3 with value 0x21c2e1f28cecbf1b
sw x3, 0(x2) # store 0x21c2e1f28cecbf1b in memory
flh f20, 0(x2) # load 0x21c2e1f28cecbf1b from memory into f20
fcvt.w.h x22, f20 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x197548dc2877f1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x168dd86fb25e125b # load x3 with value 0x168dd86fb25e125b
sw x3, 0(x2) # store 0x168dd86fb25e125b in memory
flh f19, 0(x2) # load 0x168dd86fb25e125b from memory into f19
fcvt.w.h x23, f19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd145822b3ba8966a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd5ea5769a03e6601 # load x3 with value 0xd5ea5769a03e6601
sw x3, 0(x2) # store 0xd5ea5769a03e6601 in memory
flh f24, 0(x2) # load 0xd5ea5769a03e6601 from memory into f24
fcvt.w.h x24, f24 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6f3c78bc4f821ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb118ab9ff17ea7f2 # load x3 with value 0xb118ab9ff17ea7f2
sw x3, 0(x2) # store 0xb118ab9ff17ea7f2 in memory
flh f20, 0(x2) # load 0xb118ab9ff17ea7f2 from memory into f20
fcvt.w.h x25, f20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd75916e9940032ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd4cc4e97bb33e8c2 # load x3 with value 0xd4cc4e97bb33e8c2
sw x3, 0(x2) # store 0xd4cc4e97bb33e8c2 in memory
flh f21, 0(x2) # load 0xd4cc4e97bb33e8c2 from memory into f21
fcvt.w.h x26, f21 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7228b8a40b7eeee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x71edad3b6c7d8cb4 # load x3 with value 0x71edad3b6c7d8cb4
sw x3, 0(x2) # store 0x71edad3b6c7d8cb4 in memory
flh f29, 0(x2) # load 0x71edad3b6c7d8cb4 from memory into f29
fcvt.w.h x27, f29 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf16846c5c1f555de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1d86dd223432eb9b # load x3 with value 0x1d86dd223432eb9b
sw x3, 0(x2) # store 0x1d86dd223432eb9b in memory
flh f25, 0(x2) # load 0x1d86dd223432eb9b from memory into f25
fcvt.w.h x28, f25 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x62fec2d27ec833e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78b88c8976f84265 # load x3 with value 0x78b88c8976f84265
sw x3, 0(x2) # store 0x78b88c8976f84265 in memory
flh f8, 0(x2) # load 0x78b88c8976f84265 from memory into f8
fcvt.w.h x29, f8 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb350e891cb0a8c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfbfa8709037891a7 # load x3 with value 0xfbfa8709037891a7
sw x3, 0(x2) # store 0xfbfa8709037891a7 in memory
flh f16, 0(x2) # load 0xfbfa8709037891a7 from memory into f16
fcvt.w.h x30, f16 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8fbe844568066a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6b19b3049404aaa1 # load x3 with value 0x6b19b3049404aaa1
sw x3, 0(x2) # store 0x6b19b3049404aaa1 in memory
flh f24, 0(x2) # load 0x6b19b3049404aaa1 from memory into f24
fcvt.w.h x31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x26, 0xedf8f70875ac427f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fcvt.w.h x26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x13, 0x5a5ea0acbfb68850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fcvt.w.h x13, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x11, 0x14cc8950c9656dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fcvt.w.h x11, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x28, 0x47d7c16cff6cecfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fcvt.w.h x28, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x4, 0x040adc66ba6a0a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fcvt.w.h x4, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x29, 0xd0537e3200f0507e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fcvt.w.h x29, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x26, 0x19abd6ac1efe50d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fcvt.w.h x26, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x7, 0xaa3b5182928e373b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fcvt.w.h x7, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x20, 0x9947d5e7e7dada4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fcvt.w.h x20, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x20, 0x4ff7a4fe0e6ad4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fcvt.w.h x20, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x24, 0xaf1a79e9bcfc1932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fcvt.w.h x24, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x10, 0xe40e8f49f2b820f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fcvt.w.h x10, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x16, 0xab42c5cb00cdd663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fcvt.w.h x16, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x8, 0x66c5e905b7e599a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fcvt.w.h x8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x6, 0xe177c1438b58670a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fcvt.w.h x6, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x16, 0x35915a75c0d2875d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fcvt.w.h x16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x006b940865b2dbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fcvt.w.h x1, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x8, 0x3d3dd9f51637c22a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fcvt.w.h x8, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x13, 0xa185871a0094e8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fcvt.w.h x13, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x8, 0xbe1fd6dc52259d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fcvt.w.h x8, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x26, 0x9b6f38fafb90a6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fcvt.w.h x26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x27, 0x877af2a967d173e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fcvt.w.h x27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x29, 0x1048084d42e3f224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fcvt.w.h x29, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x14, 0x1951b628b0a07c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fcvt.w.h x14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x26, 0x0405767f5d07815e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fcvt.w.h x26, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x13, 0xa74f2a288a8ba7d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fcvt.w.h x13, f30 # perform operation

# Testcase cp_frm
li x22, 0x0dca0a239da80589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x957f84053e2b06d8 # load x3 with value 0x957f84053e2b06d8
sw x3, 0(x2) # store 0x957f84053e2b06d8 in memory
flh f8, 0(x2) # load 0x957f84053e2b06d8 from memory into f8
fcvt.w.h x22, f8, dyn # perform operation
fcvt.w.h x22, f8, rdn # perform operation
fcvt.w.h x22, f8, rmm # perform operation
fcvt.w.h x22, f8, rne # perform operation
fcvt.w.h x22, f8, rtz # perform operation
fcvt.w.h x22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.h x22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.h x22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.h x22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.h x22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.h x22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x3416d37e84c12098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc74c51d5d615d394 # load x3 with value 0xc74c51d5d615d394
sw x3, 0(x2) # store 0xc74c51d5d615d394 in memory
flh f0, 0(x2) # load 0xc74c51d5d615d394 from memory into f0
fcvt.w.h x3, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0xff5b56e3ec753a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x91e46b7449450c84 # load x3 with value 0x91e46b7449450c84
sw x3, 0(x2) # store 0x91e46b7449450c84 in memory
flh f1, 0(x2) # load 0x91e46b7449450c84 from memory into f1
fcvt.w.h x28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x21, 0x78c2b85805916621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x34e16bee0b58ad50 # load x3 with value 0x34e16bee0b58ad50
sw x3, 0(x2) # store 0x34e16bee0b58ad50 in memory
flh f2, 0(x2) # load 0x34e16bee0b58ad50 from memory into f2
fcvt.w.h x21, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x2, 0x08d0676318fa3fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x52763fad0bf217d2 # load x3 with value 0x52763fad0bf217d2
sw x3, 0(x2) # store 0x52763fad0bf217d2 in memory
flh f3, 0(x2) # load 0x52763fad0bf217d2 from memory into f3
fcvt.w.h x2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x31, 0x36062992404194e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7a49d4af89fe042 # load x3 with value 0xe7a49d4af89fe042
sw x3, 0(x2) # store 0xe7a49d4af89fe042 in memory
flh f4, 0(x2) # load 0xe7a49d4af89fe042 from memory into f4
fcvt.w.h x31, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0xd0f12030a3df9c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd6762938beb051f0 # load x3 with value 0xd6762938beb051f0
sw x3, 0(x2) # store 0xd6762938beb051f0 in memory
flh f5, 0(x2) # load 0xd6762938beb051f0 from memory into f5
fcvt.w.h x5, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x28, 0x4b98a4bbcdc36bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf079b3e2cf540af5 # load x3 with value 0xf079b3e2cf540af5
sw x3, 0(x2) # store 0xf079b3e2cf540af5 in memory
flh f6, 0(x2) # load 0xf079b3e2cf540af5 from memory into f6
fcvt.w.h x28, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0xe139672dd5b2c6e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe82e23e9c820544c # load x3 with value 0xe82e23e9c820544c
sw x3, 0(x2) # store 0xe82e23e9c820544c in memory
flh f7, 0(x2) # load 0xe82e23e9c820544c from memory into f7
fcvt.w.h x30, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x17, 0xee5e5cf6865f2246 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4a085ff6b1550f04 # load x3 with value 0x4a085ff6b1550f04
sw x3, 0(x2) # store 0x4a085ff6b1550f04 in memory
flh f8, 0(x2) # load 0x4a085ff6b1550f04 from memory into f8
fcvt.w.h x17, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x2, 0x9a3c443713c3db92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xead7a54eb5afabbf # load x3 with value 0xead7a54eb5afabbf
sw x3, 0(x2) # store 0xead7a54eb5afabbf in memory
flh f9, 0(x2) # load 0xead7a54eb5afabbf from memory into f9
fcvt.w.h x2, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0x12d4abd1ff281874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4f62ff05e2777e03 # load x3 with value 0x4f62ff05e2777e03
sw x3, 0(x2) # store 0x4f62ff05e2777e03 in memory
flh f10, 0(x2) # load 0x4f62ff05e2777e03 from memory into f10
fcvt.w.h x30, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x24, 0xb76ebd7a926ffe35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xce5057ecc207b8c5 # load x3 with value 0xce5057ecc207b8c5
sw x3, 0(x2) # store 0xce5057ecc207b8c5 in memory
flh f11, 0(x2) # load 0xce5057ecc207b8c5 from memory into f11
fcvt.w.h x24, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0xfb75a2feb1e2cef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f5830ab00204317 # load x3 with value 0x9f5830ab00204317
sw x3, 0(x2) # store 0x9f5830ab00204317 in memory
flh f12, 0(x2) # load 0x9f5830ab00204317 from memory into f12
fcvt.w.h x21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x10, 0x19a96550f26aa75f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfcfafda8a2ba6afb # load x3 with value 0xfcfafda8a2ba6afb
sw x3, 0(x2) # store 0xfcfafda8a2ba6afb in memory
flh f13, 0(x2) # load 0xfcfafda8a2ba6afb from memory into f13
fcvt.w.h x10, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x22, 0x87401a78226cc3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf4c0048ac0be84d3 # load x3 with value 0xf4c0048ac0be84d3
sw x3, 0(x2) # store 0xf4c0048ac0be84d3 in memory
flh f14, 0(x2) # load 0xf4c0048ac0be84d3 from memory into f14
fcvt.w.h x22, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x5, 0xde884e66a1469503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeb7f91b9f448615e # load x3 with value 0xeb7f91b9f448615e
sw x3, 0(x2) # store 0xeb7f91b9f448615e in memory
flh f15, 0(x2) # load 0xeb7f91b9f448615e from memory into f15
fcvt.w.h x5, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x5, 0xdce63f4f3c2bcb8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4ce683de8ab8d66c # load x3 with value 0x4ce683de8ab8d66c
sw x3, 0(x2) # store 0x4ce683de8ab8d66c in memory
flh f16, 0(x2) # load 0x4ce683de8ab8d66c from memory into f16
fcvt.w.h x5, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x6, 0xdc933e87fc9b6928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc7eb1c1fa735bd53 # load x3 with value 0xc7eb1c1fa735bd53
sw x3, 0(x2) # store 0xc7eb1c1fa735bd53 in memory
flh f17, 0(x2) # load 0xc7eb1c1fa735bd53 from memory into f17
fcvt.w.h x6, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x8, 0x260315168b66e028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x874a98188ca4a6c1 # load x3 with value 0x874a98188ca4a6c1
sw x3, 0(x2) # store 0x874a98188ca4a6c1 in memory
flh f18, 0(x2) # load 0x874a98188ca4a6c1 from memory into f18
fcvt.w.h x8, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x28, 0x49abb961161d689f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfab410d0ac7e56df # load x3 with value 0xfab410d0ac7e56df
sw x3, 0(x2) # store 0xfab410d0ac7e56df in memory
flh f19, 0(x2) # load 0xfab410d0ac7e56df from memory into f19
fcvt.w.h x28, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x15, 0xb6c050f677fae779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa4f892081c7dced5 # load x3 with value 0xa4f892081c7dced5
sw x3, 0(x2) # store 0xa4f892081c7dced5 in memory
flh f20, 0(x2) # load 0xa4f892081c7dced5 from memory into f20
fcvt.w.h x15, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x23, 0xb9fab2f6bd78eb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4fa2c775e6b88dd # load x3 with value 0x4fa2c775e6b88dd
sw x3, 0(x2) # store 0x4fa2c775e6b88dd in memory
flh f21, 0(x2) # load 0x4fa2c775e6b88dd from memory into f21
fcvt.w.h x23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x10, 0xa1a0259df5ce6d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe520ca98f96a3478 # load x3 with value 0xe520ca98f96a3478
sw x3, 0(x2) # store 0xe520ca98f96a3478 in memory
flh f22, 0(x2) # load 0xe520ca98f96a3478 from memory into f22
fcvt.w.h x10, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x27, 0x35b8c879e9bf16b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31f57c20693763eb # load x3 with value 0x31f57c20693763eb
sw x3, 0(x2) # store 0x31f57c20693763eb in memory
flh f23, 0(x2) # load 0x31f57c20693763eb from memory into f23
fcvt.w.h x27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x9, 0xec96098520c4d12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa96c2b285c5de1ac # load x3 with value 0xa96c2b285c5de1ac
sw x3, 0(x2) # store 0xa96c2b285c5de1ac in memory
flh f24, 0(x2) # load 0xa96c2b285c5de1ac from memory into f24
fcvt.w.h x9, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x19, 0x487782f50ffa67cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b2cbb5ea2cd047d # load x3 with value 0x2b2cbb5ea2cd047d
sw x3, 0(x2) # store 0x2b2cbb5ea2cd047d in memory
flh f25, 0(x2) # load 0x2b2cbb5ea2cd047d from memory into f25
fcvt.w.h x19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x15, 0xca7b838d77d0cc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc7b2af7427b98aa8 # load x3 with value 0xc7b2af7427b98aa8
sw x3, 0(x2) # store 0xc7b2af7427b98aa8 in memory
flh f26, 0(x2) # load 0xc7b2af7427b98aa8 from memory into f26
fcvt.w.h x15, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x15, 0xe6c4e6f4eceaae9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa3616d5daf40b276 # load x3 with value 0xa3616d5daf40b276
sw x3, 0(x2) # store 0xa3616d5daf40b276 in memory
flh f27, 0(x2) # load 0xa3616d5daf40b276 from memory into f27
fcvt.w.h x15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0x05714b2a5b40ebb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x83bf395a480f4198 # load x3 with value 0x83bf395a480f4198
sw x3, 0(x2) # store 0x83bf395a480f4198 in memory
flh f28, 0(x2) # load 0x83bf395a480f4198 from memory into f28
fcvt.w.h x28, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x9, 0xc41ee925aacfec1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31afda51e7b8e38a # load x3 with value 0x31afda51e7b8e38a
sw x3, 0(x2) # store 0x31afda51e7b8e38a in memory
flh f29, 0(x2) # load 0x31afda51e7b8e38a from memory into f29
fcvt.w.h x9, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x1, 0x0215d46375844022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc013e683dd66cad7 # load x3 with value 0xc013e683dd66cad7
sw x3, 0(x2) # store 0xc013e683dd66cad7 in memory
flh f30, 0(x2) # load 0xc013e683dd66cad7 from memory into f30
fcvt.w.h x1, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x23, 0x78283ebb66a8b20a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc5466f1ce6d8ab # load x3 with value 0xdc5466f1ce6d8ab
sw x3, 0(x2) # store 0xdc5466f1ce6d8ab in memory
flh f31, 0(x2) # load 0xdc5466f1ce6d8ab from memory into f31
fcvt.w.h x23, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
