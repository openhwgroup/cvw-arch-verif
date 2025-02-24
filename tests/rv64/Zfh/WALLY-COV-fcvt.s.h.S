///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.s.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.045968
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
li x5, 0x7ef424a064f0260d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fcvt.s.h f5, f30 # perform operation
fcvt.s.h f5, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x7, 0xd9371f333de44acd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fcvt.s.h f7, f14 # perform operation
fcvt.s.h f7, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x8, 0xcb1da12b3c4afa43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fcvt.s.h f8, f14 # perform operation
fcvt.s.h f8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x4, 0xbea82065d8b61470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fcvt.s.h f4, f5 # perform operation
fcvt.s.h f4, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x27, 0xeb28cdde1df7cb00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fcvt.s.h f27, f29 # perform operation
fcvt.s.h f27, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x30, 0x751df044368b3411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fcvt.s.h f30, f1 # perform operation
fcvt.s.h f30, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x18, 0xfe8f52b905c35b08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fcvt.s.h f18, f22 # perform operation
fcvt.s.h f18, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x11, 0xec7e69546127d37d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fcvt.s.h f11, f1 # perform operation
fcvt.s.h f11, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x19, 0x559d8a710a6cb46b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fcvt.s.h f19, f12 # perform operation
fcvt.s.h f19, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x25, 0x05b904dce3a15c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fcvt.s.h f25, f6 # perform operation
fcvt.s.h f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x29, 0xdd54ed02743dff7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
fcvt.s.h f29, f28 # perform operation
fcvt.s.h f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x6, 0x92949efe96475d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fcvt.s.h f6, f28 # perform operation
fcvt.s.h f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x12, 0x262efc174ad78de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fcvt.s.h f12, f23 # perform operation
fcvt.s.h f12, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x9, 0x1726b1391c510d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fcvt.s.h f9, f7 # perform operation
fcvt.s.h f9, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x22, 0x7694adb5eb01be15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fcvt.s.h f22, f6 # perform operation
fcvt.s.h f22, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x18, 0x016848b3770a2a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fcvt.s.h f18, f20 # perform operation
fcvt.s.h f18, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x30, 0x1b82d7728eb091a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fcvt.s.h f30, f1 # perform operation
fcvt.s.h f30, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x29, 0x34ad5c06ed88e0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fcvt.s.h f29, f13 # perform operation
fcvt.s.h f29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x31, 0x5289d5e7f72bdbfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fcvt.s.h f31, f15 # perform operation
fcvt.s.h f31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x3, 0x959c7e2b7c2e45e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fcvt.s.h f3, f22 # perform operation
fcvt.s.h f3, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x18, 0xed86deb3ceb60801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fcvt.s.h f18, f27 # perform operation
fcvt.s.h f18, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x28, 0xbfbd98fc09cc9853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fcvt.s.h f28, f11 # perform operation
fcvt.s.h f28, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x5, 0x8173ca3bb297d4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fcvt.s.h f5, f13 # perform operation
fcvt.s.h f5, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x17, 0x6a04eae8d7baddae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fcvt.s.h f17, f30 # perform operation
fcvt.s.h f17, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x20, 0xef13dc5da9511d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fcvt.s.h f20, f14 # perform operation
fcvt.s.h f20, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x12, 0xc86a413c6599e930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fcvt.s.h f12, f2 # perform operation
fcvt.s.h f12, f2 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xd0a7e203ac384900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b0816450f51a480 # load x3 with value 0x3b0816450f51a480
sw x3, 0(x2) # store 0x3b0816450f51a480 in memory
flh f6, 0(x2) # load 0x3b0816450f51a480 from memory into f6
fcvt.s.h f0, f6 # perform operation
fcvt.s.h f0, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x822f9d751c788304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe16f57c9d67694ff # load x3 with value 0xe16f57c9d67694ff
sw x3, 0(x2) # store 0xe16f57c9d67694ff in memory
flh f18, 0(x2) # load 0xe16f57c9d67694ff from memory into f18
fcvt.s.h f1, f18 # perform operation
fcvt.s.h f1, f18 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xf1fb2f7bda71e8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd1889d25a3a16b0 # load x3 with value 0xdd1889d25a3a16b0
sw x3, 0(x2) # store 0xdd1889d25a3a16b0 in memory
flh f28, 0(x2) # load 0xdd1889d25a3a16b0 from memory into f28
fcvt.s.h f2, f28 # perform operation
fcvt.s.h f2, f28 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xb462c29df46cd79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x693314d131766375 # load x3 with value 0x693314d131766375
sw x3, 0(x2) # store 0x693314d131766375 in memory
flh f8, 0(x2) # load 0x693314d131766375 from memory into f8
fcvt.s.h f3, f8 # perform operation
fcvt.s.h f3, f8 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x1637959be4fa83f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a4000badaa04d62 # load x3 with value 0x8a4000badaa04d62
sw x3, 0(x2) # store 0x8a4000badaa04d62 in memory
flh f29, 0(x2) # load 0x8a4000badaa04d62 from memory into f29
fcvt.s.h f4, f29 # perform operation
fcvt.s.h f4, f29 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8716dc8ebed50acf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d4a4c9d66c4957c # load x3 with value 0x2d4a4c9d66c4957c
sw x3, 0(x2) # store 0x2d4a4c9d66c4957c in memory
flh f2, 0(x2) # load 0x2d4a4c9d66c4957c from memory into f2
fcvt.s.h f5, f2 # perform operation
fcvt.s.h f5, f2 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xc6dcda816e813a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cb093cdc34a5c38 # load x3 with value 0x2cb093cdc34a5c38
sw x3, 0(x2) # store 0x2cb093cdc34a5c38 in memory
flh f18, 0(x2) # load 0x2cb093cdc34a5c38 from memory into f18
fcvt.s.h f6, f18 # perform operation
fcvt.s.h f6, f18 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3208ad17f782a99d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x681fd46174b0a601 # load x3 with value 0x681fd46174b0a601
sw x3, 0(x2) # store 0x681fd46174b0a601 in memory
flh f29, 0(x2) # load 0x681fd46174b0a601 from memory into f29
fcvt.s.h f7, f29 # perform operation
fcvt.s.h f7, f29 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xdea5178c0e12cebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a2f50c665d857f9 # load x3 with value 0x8a2f50c665d857f9
sw x3, 0(x2) # store 0x8a2f50c665d857f9 in memory
flh f22, 0(x2) # load 0x8a2f50c665d857f9 from memory into f22
fcvt.s.h f8, f22 # perform operation
fcvt.s.h f8, f22 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xdbbd437dbc0ffc9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bb67377bd41856b # load x3 with value 0x4bb67377bd41856b
sw x3, 0(x2) # store 0x4bb67377bd41856b in memory
flh f2, 0(x2) # load 0x4bb67377bd41856b from memory into f2
fcvt.s.h f9, f2 # perform operation
fcvt.s.h f9, f2 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x019eb453ea61b284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd737ae9833cacdff # load x3 with value 0xd737ae9833cacdff
sw x3, 0(x2) # store 0xd737ae9833cacdff in memory
flh f1, 0(x2) # load 0xd737ae9833cacdff from memory into f1
fcvt.s.h f10, f1 # perform operation
fcvt.s.h f10, f1 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x15a8e9a47829973f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7e3c31d2e28fee9 # load x3 with value 0xf7e3c31d2e28fee9
sw x3, 0(x2) # store 0xf7e3c31d2e28fee9 in memory
flh f8, 0(x2) # load 0xf7e3c31d2e28fee9 from memory into f8
fcvt.s.h f11, f8 # perform operation
fcvt.s.h f11, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x39a9ff6ea90b507a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x931f17b1da1fdb61 # load x3 with value 0x931f17b1da1fdb61
sw x3, 0(x2) # store 0x931f17b1da1fdb61 in memory
flh f7, 0(x2) # load 0x931f17b1da1fdb61 from memory into f7
fcvt.s.h f12, f7 # perform operation
fcvt.s.h f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x7406d680cde060ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3ca08520f782103 # load x3 with value 0xa3ca08520f782103
sw x3, 0(x2) # store 0xa3ca08520f782103 in memory
flh f6, 0(x2) # load 0xa3ca08520f782103 from memory into f6
fcvt.s.h f13, f6 # perform operation
fcvt.s.h f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x54ba7d05103c00c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd67d7bd61b04cc5 # load x3 with value 0xcd67d7bd61b04cc5
sw x3, 0(x2) # store 0xcd67d7bd61b04cc5 in memory
flh f30, 0(x2) # load 0xcd67d7bd61b04cc5 from memory into f30
fcvt.s.h f14, f30 # perform operation
fcvt.s.h f14, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x81827a143ab3d66e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dcd3d539086dddd # load x3 with value 0x8dcd3d539086dddd
sw x3, 0(x2) # store 0x8dcd3d539086dddd in memory
flh f2, 0(x2) # load 0x8dcd3d539086dddd from memory into f2
fcvt.s.h f15, f2 # perform operation
fcvt.s.h f15, f2 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb61153ebffb6b451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8e311aa44c33e42 # load x3 with value 0xe8e311aa44c33e42
sw x3, 0(x2) # store 0xe8e311aa44c33e42 in memory
flh f12, 0(x2) # load 0xe8e311aa44c33e42 from memory into f12
fcvt.s.h f16, f12 # perform operation
fcvt.s.h f16, f12 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xde4a9199db3eab66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724f98e76d7aea8 # load x3 with value 0x724f98e76d7aea8
sw x3, 0(x2) # store 0x724f98e76d7aea8 in memory
flh f4, 0(x2) # load 0x724f98e76d7aea8 from memory into f4
fcvt.s.h f17, f4 # perform operation
fcvt.s.h f17, f4 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xd523f44f46fe5198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd27104e2bd5d77a4 # load x3 with value 0xd27104e2bd5d77a4
sw x3, 0(x2) # store 0xd27104e2bd5d77a4 in memory
flh f28, 0(x2) # load 0xd27104e2bd5d77a4 from memory into f28
fcvt.s.h f18, f28 # perform operation
fcvt.s.h f18, f28 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x8a8610ba40b328bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4254be82b47a893 # load x3 with value 0xb4254be82b47a893
sw x3, 0(x2) # store 0xb4254be82b47a893 in memory
flh f9, 0(x2) # load 0xb4254be82b47a893 from memory into f9
fcvt.s.h f19, f9 # perform operation
fcvt.s.h f19, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3413e4f863281efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x784c0992c9a2a99a # load x3 with value 0x784c0992c9a2a99a
sw x3, 0(x2) # store 0x784c0992c9a2a99a in memory
flh f23, 0(x2) # load 0x784c0992c9a2a99a from memory into f23
fcvt.s.h f20, f23 # perform operation
fcvt.s.h f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf340ed877d7649fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4dc1d742ce2e545 # load x3 with value 0xc4dc1d742ce2e545
sw x3, 0(x2) # store 0xc4dc1d742ce2e545 in memory
flh f3, 0(x2) # load 0xc4dc1d742ce2e545 from memory into f3
fcvt.s.h f21, f3 # perform operation
fcvt.s.h f21, f3 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xcfc82af2adfa9b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c1154b55c853807 # load x3 with value 0x1c1154b55c853807
sw x3, 0(x2) # store 0x1c1154b55c853807 in memory
flh f30, 0(x2) # load 0x1c1154b55c853807 from memory into f30
fcvt.s.h f22, f30 # perform operation
fcvt.s.h f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x0a8840f5c4d3955a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65e7fb1fc3b8e3ab # load x3 with value 0x65e7fb1fc3b8e3ab
sw x3, 0(x2) # store 0x65e7fb1fc3b8e3ab in memory
flh f1, 0(x2) # load 0x65e7fb1fc3b8e3ab from memory into f1
fcvt.s.h f23, f1 # perform operation
fcvt.s.h f23, f1 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x622ec73d31b377a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x915c889fdc87fa3b # load x3 with value 0x915c889fdc87fa3b
sw x3, 0(x2) # store 0x915c889fdc87fa3b in memory
flh f19, 0(x2) # load 0x915c889fdc87fa3b from memory into f19
fcvt.s.h f24, f19 # perform operation
fcvt.s.h f24, f19 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x3cc163898cd5814c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde1461ba56ff2184 # load x3 with value 0xde1461ba56ff2184
sw x3, 0(x2) # store 0xde1461ba56ff2184 in memory
flh f9, 0(x2) # load 0xde1461ba56ff2184 from memory into f9
fcvt.s.h f25, f9 # perform operation
fcvt.s.h f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x42f57d7a6a3a12cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ce56cddb70488ca # load x3 with value 0x4ce56cddb70488ca
sw x3, 0(x2) # store 0x4ce56cddb70488ca in memory
flh f8, 0(x2) # load 0x4ce56cddb70488ca from memory into f8
fcvt.s.h f26, f8 # perform operation
fcvt.s.h f26, f8 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xbbb8e147bd30e6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dce978b8a05ee5e # load x3 with value 0x6dce978b8a05ee5e
sw x3, 0(x2) # store 0x6dce978b8a05ee5e in memory
flh f20, 0(x2) # load 0x6dce978b8a05ee5e from memory into f20
fcvt.s.h f27, f20 # perform operation
fcvt.s.h f27, f20 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x9d98dbdc2482301b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5449b1d3b7e6ea69 # load x3 with value 0x5449b1d3b7e6ea69
sw x3, 0(x2) # store 0x5449b1d3b7e6ea69 in memory
flh f3, 0(x2) # load 0x5449b1d3b7e6ea69 from memory into f3
fcvt.s.h f28, f3 # perform operation
fcvt.s.h f28, f3 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x249d18d9567584fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe83f8e4b6f00c911 # load x3 with value 0xe83f8e4b6f00c911
sw x3, 0(x2) # store 0xe83f8e4b6f00c911 in memory
flh f3, 0(x2) # load 0xe83f8e4b6f00c911 from memory into f3
fcvt.s.h f29, f3 # perform operation
fcvt.s.h f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd8d1dd0d16d9c041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe425be5cf936b9ba # load x3 with value 0xe425be5cf936b9ba
sw x3, 0(x2) # store 0xe425be5cf936b9ba in memory
flh f15, 0(x2) # load 0xe425be5cf936b9ba from memory into f15
fcvt.s.h f30, f15 # perform operation
fcvt.s.h f30, f15 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x91c649e8b1b908de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe021de3f47e3edc1 # load x3 with value 0xe021de3f47e3edc1
sw x3, 0(x2) # store 0xe021de3f47e3edc1 in memory
flh f14, 0(x2) # load 0xe021de3f47e3edc1 from memory into f14
fcvt.s.h f31, f14 # perform operation
fcvt.s.h f31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0xe99f887c31f716c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c899a689faff98f # load x3 with value 0x1c899a689faff98f
sw x3, 0(x2) # store 0x1c899a689faff98f in memory
flh f0, 0(x2) # load 0x1c899a689faff98f from memory into f0
fcvt.s.h f29, f0 # perform operation
fcvt.s.h f29, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0x297768048966ef27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb85d205dae16d847 # load x3 with value 0xb85d205dae16d847
sw x3, 0(x2) # store 0xb85d205dae16d847 in memory
flh f1, 0(x2) # load 0xb85d205dae16d847 from memory into f1
fcvt.s.h f2, f1 # perform operation
fcvt.s.h f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0xae85f08241da5bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6389b6d610ba5df # load x3 with value 0xa6389b6d610ba5df
sw x3, 0(x2) # store 0xa6389b6d610ba5df in memory
flh f2, 0(x2) # load 0xa6389b6d610ba5df from memory into f2
fcvt.s.h f23, f2 # perform operation
fcvt.s.h f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x16, 0xeaa867f6a0809205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83c765472c5b8635 # load x3 with value 0x83c765472c5b8635
sw x3, 0(x2) # store 0x83c765472c5b8635 in memory
flh f3, 0(x2) # load 0x83c765472c5b8635 from memory into f3
fcvt.s.h f16, f3 # perform operation
fcvt.s.h f16, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x24, 0xc9833deb3f8f6fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d86ee5dcbd3c76 # load x3 with value 0x3d86ee5dcbd3c76
sw x3, 0(x2) # store 0x3d86ee5dcbd3c76 in memory
flh f4, 0(x2) # load 0x3d86ee5dcbd3c76 from memory into f4
fcvt.s.h f24, f4 # perform operation
fcvt.s.h f24, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x30, 0x816c0c53b1d5f5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfb1a931908a9f58 # load x3 with value 0xdfb1a931908a9f58
sw x3, 0(x2) # store 0xdfb1a931908a9f58 in memory
flh f5, 0(x2) # load 0xdfb1a931908a9f58 from memory into f5
fcvt.s.h f30, f5 # perform operation
fcvt.s.h f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0x8daed1609c0f7aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc24459487918cfb4 # load x3 with value 0xc24459487918cfb4
sw x3, 0(x2) # store 0xc24459487918cfb4 in memory
flh f6, 0(x2) # load 0xc24459487918cfb4 from memory into f6
fcvt.s.h f19, f6 # perform operation
fcvt.s.h f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0xdc49d1f1ecaa393e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed8f57622449aa35 # load x3 with value 0xed8f57622449aa35
sw x3, 0(x2) # store 0xed8f57622449aa35 in memory
flh f7, 0(x2) # load 0xed8f57622449aa35 from memory into f7
fcvt.s.h f3, f7 # perform operation
fcvt.s.h f3, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x16, 0xc9d48ecfe68dcdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7490d82e9cc545ab # load x3 with value 0x7490d82e9cc545ab
sw x3, 0(x2) # store 0x7490d82e9cc545ab in memory
flh f8, 0(x2) # load 0x7490d82e9cc545ab from memory into f8
fcvt.s.h f16, f8 # perform operation
fcvt.s.h f16, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x22, 0x3db37c699024efbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc68f0a02f66fa2a # load x3 with value 0xc68f0a02f66fa2a
sw x3, 0(x2) # store 0xc68f0a02f66fa2a in memory
flh f9, 0(x2) # load 0xc68f0a02f66fa2a from memory into f9
fcvt.s.h f22, f9 # perform operation
fcvt.s.h f22, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0xa2984cff889638d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16683e775c29a02 # load x3 with value 0x16683e775c29a02
sw x3, 0(x2) # store 0x16683e775c29a02 in memory
flh f10, 0(x2) # load 0x16683e775c29a02 from memory into f10
fcvt.s.h f30, f10 # perform operation
fcvt.s.h f30, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x22, 0xc40ded9757429553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80949ada0ab3b157 # load x3 with value 0x80949ada0ab3b157
sw x3, 0(x2) # store 0x80949ada0ab3b157 in memory
flh f11, 0(x2) # load 0x80949ada0ab3b157 from memory into f11
fcvt.s.h f22, f11 # perform operation
fcvt.s.h f22, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0x5da0d526c512ebb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79346084fc479e01 # load x3 with value 0x79346084fc479e01
sw x3, 0(x2) # store 0x79346084fc479e01 in memory
flh f12, 0(x2) # load 0x79346084fc479e01 from memory into f12
fcvt.s.h f11, f12 # perform operation
fcvt.s.h f11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x18, 0xf6e4699a6df5a956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c203934f8b4b0fd # load x3 with value 0x7c203934f8b4b0fd
sw x3, 0(x2) # store 0x7c203934f8b4b0fd in memory
flh f13, 0(x2) # load 0x7c203934f8b4b0fd from memory into f13
fcvt.s.h f18, f13 # perform operation
fcvt.s.h f18, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x29, 0x1817dd06cf30b1d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf35ff4ce54df30bc # load x3 with value 0xf35ff4ce54df30bc
sw x3, 0(x2) # store 0xf35ff4ce54df30bc in memory
flh f14, 0(x2) # load 0xf35ff4ce54df30bc from memory into f14
fcvt.s.h f29, f14 # perform operation
fcvt.s.h f29, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x19, 0xa913a94a50fed691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6518a939e6fd9475 # load x3 with value 0x6518a939e6fd9475
sw x3, 0(x2) # store 0x6518a939e6fd9475 in memory
flh f15, 0(x2) # load 0x6518a939e6fd9475 from memory into f15
fcvt.s.h f19, f15 # perform operation
fcvt.s.h f19, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x25, 0x139e1ca6ee7f1f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa32848dc8d9846e8 # load x3 with value 0xa32848dc8d9846e8
sw x3, 0(x2) # store 0xa32848dc8d9846e8 in memory
flh f16, 0(x2) # load 0xa32848dc8d9846e8 from memory into f16
fcvt.s.h f25, f16 # perform operation
fcvt.s.h f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x28, 0x7bd685a42d3ea0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec2247ac1642948b # load x3 with value 0xec2247ac1642948b
sw x3, 0(x2) # store 0xec2247ac1642948b in memory
flh f17, 0(x2) # load 0xec2247ac1642948b from memory into f17
fcvt.s.h f28, f17 # perform operation
fcvt.s.h f28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0x02b584d86f8a5067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57ac6570f8e3efd6 # load x3 with value 0x57ac6570f8e3efd6
sw x3, 0(x2) # store 0x57ac6570f8e3efd6 in memory
flh f18, 0(x2) # load 0x57ac6570f8e3efd6 from memory into f18
fcvt.s.h f31, f18 # perform operation
fcvt.s.h f31, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x6, 0xf9208e3bf8adafdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbe897eb517f2300 # load x3 with value 0xfbe897eb517f2300
sw x3, 0(x2) # store 0xfbe897eb517f2300 in memory
flh f19, 0(x2) # load 0xfbe897eb517f2300 from memory into f19
fcvt.s.h f6, f19 # perform operation
fcvt.s.h f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x3, 0xeccc2529823e0129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc344feaf5057026 # load x3 with value 0xcc344feaf5057026
sw x3, 0(x2) # store 0xcc344feaf5057026 in memory
flh f20, 0(x2) # load 0xcc344feaf5057026 from memory into f20
fcvt.s.h f3, f20 # perform operation
fcvt.s.h f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x7, 0x2b50cdc21bfa75b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7adf48b0b5c18ba # load x3 with value 0xa7adf48b0b5c18ba
sw x3, 0(x2) # store 0xa7adf48b0b5c18ba in memory
flh f21, 0(x2) # load 0xa7adf48b0b5c18ba from memory into f21
fcvt.s.h f7, f21 # perform operation
fcvt.s.h f7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x9, 0xed2a60a9ad35e6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fff4f84a5bae889 # load x3 with value 0x7fff4f84a5bae889
sw x3, 0(x2) # store 0x7fff4f84a5bae889 in memory
flh f22, 0(x2) # load 0x7fff4f84a5bae889 from memory into f22
fcvt.s.h f9, f22 # perform operation
fcvt.s.h f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x3, 0xc86d12318a6e8a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc05869a26765e83 # load x3 with value 0xc05869a26765e83
sw x3, 0(x2) # store 0xc05869a26765e83 in memory
flh f23, 0(x2) # load 0xc05869a26765e83 from memory into f23
fcvt.s.h f3, f23 # perform operation
fcvt.s.h f3, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x8, 0xa61cea0ff9133f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb05f1622e261d9d # load x3 with value 0xeb05f1622e261d9d
sw x3, 0(x2) # store 0xeb05f1622e261d9d in memory
flh f24, 0(x2) # load 0xeb05f1622e261d9d from memory into f24
fcvt.s.h f8, f24 # perform operation
fcvt.s.h f8, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x26, 0xcc68777747892a71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6403ac4b6ce456a6 # load x3 with value 0x6403ac4b6ce456a6
sw x3, 0(x2) # store 0x6403ac4b6ce456a6 in memory
flh f25, 0(x2) # load 0x6403ac4b6ce456a6 from memory into f25
fcvt.s.h f26, f25 # perform operation
fcvt.s.h f26, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0xc8cef16babcf437a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaaad4c338a03c7fb # load x3 with value 0xaaad4c338a03c7fb
sw x3, 0(x2) # store 0xaaad4c338a03c7fb in memory
flh f26, 0(x2) # load 0xaaad4c338a03c7fb from memory into f26
fcvt.s.h f19, f26 # perform operation
fcvt.s.h f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x3, 0x050adb1cddb4ca8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe71b77adb2b9c11f # load x3 with value 0xe71b77adb2b9c11f
sw x3, 0(x2) # store 0xe71b77adb2b9c11f in memory
flh f27, 0(x2) # load 0xe71b77adb2b9c11f from memory into f27
fcvt.s.h f3, f27 # perform operation
fcvt.s.h f3, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x500887f025af1dde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5baa3fda816762b3 # load x3 with value 0x5baa3fda816762b3
sw x3, 0(x2) # store 0x5baa3fda816762b3 in memory
flh f28, 0(x2) # load 0x5baa3fda816762b3 from memory into f28
fcvt.s.h f15, f28 # perform operation
fcvt.s.h f15, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x9, 0xa8b3b96428a1a87a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d7cde02b537a096 # load x3 with value 0x1d7cde02b537a096
sw x3, 0(x2) # store 0x1d7cde02b537a096 in memory
flh f29, 0(x2) # load 0x1d7cde02b537a096 from memory into f29
fcvt.s.h f9, f29 # perform operation
fcvt.s.h f9, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x22, 0x1c2a86a291583d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf766cc311666986c # load x3 with value 0xf766cc311666986c
sw x3, 0(x2) # store 0xf766cc311666986c in memory
flh f30, 0(x2) # load 0xf766cc311666986c from memory into f30
fcvt.s.h f22, f30 # perform operation
fcvt.s.h f22, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x4, 0xa5041f5800a67698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe67d243bf7637bc3 # load x3 with value 0xe67d243bf7637bc3
sw x3, 0(x2) # store 0xe67d243bf7637bc3 in memory
flh f31, 0(x2) # load 0xe67d243bf7637bc3 from memory into f31
fcvt.s.h f4, f31 # perform operation
fcvt.s.h f4, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
