///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.lu.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.709680
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
li x0, 0xd2ad4bd7ef02c0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e477a558f8ea41f # load x3 with value 0x5e477a558f8ea41f
sw x3, 0(x2) # store 0x5e477a558f8ea41f in memory
flw f6, 0(x2) # load 0x5e477a558f8ea41f from memory into f6
fcvt.lu.s x0, f6 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xdcddd664fc7cfe11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb3c43fb664e28e39 # load x3 with value 0xb3c43fb664e28e39
sw x3, 0(x2) # store 0xb3c43fb664e28e39 in memory
flw f23, 0(x2) # load 0xb3c43fb664e28e39 from memory into f23
fcvt.lu.s x1, f23 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x59479fdbc6e2db27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e8643180a753667 # load x3 with value 0x2e8643180a753667
sw x3, 0(x2) # store 0x2e8643180a753667 in memory
flw f18, 0(x2) # load 0x2e8643180a753667 from memory into f18
fcvt.lu.s x2, f18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf6dd6c1a49abb778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17e30a759f04e931 # load x3 with value 0x17e30a759f04e931
sw x3, 0(x2) # store 0x17e30a759f04e931 in memory
flw f9, 0(x2) # load 0x17e30a759f04e931 from memory into f9
fcvt.lu.s x3, f9 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x52a320d7778a354a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x93ceca5d64e5c95b # load x3 with value 0x93ceca5d64e5c95b
sw x3, 0(x2) # store 0x93ceca5d64e5c95b in memory
flw f31, 0(x2) # load 0x93ceca5d64e5c95b from memory into f31
fcvt.lu.s x4, f31 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb01d912d60d592da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc952c0ad8456d5c7 # load x3 with value 0xc952c0ad8456d5c7
sw x3, 0(x2) # store 0xc952c0ad8456d5c7 in memory
flw f16, 0(x2) # load 0xc952c0ad8456d5c7 from memory into f16
fcvt.lu.s x5, f16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x981ec05dafff585f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbdd5334897ea5f4 # load x3 with value 0xbdd5334897ea5f4
sw x3, 0(x2) # store 0xbdd5334897ea5f4 in memory
flw f3, 0(x2) # load 0xbdd5334897ea5f4 from memory into f3
fcvt.lu.s x6, f3 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x54f62c2a76cfbaac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x60bc8abc55318cd0 # load x3 with value 0x60bc8abc55318cd0
sw x3, 0(x2) # store 0x60bc8abc55318cd0 in memory
flw f26, 0(x2) # load 0x60bc8abc55318cd0 from memory into f26
fcvt.lu.s x7, f26 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x463ed25b4d592a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb22d2266b01d7cb6 # load x3 with value 0xb22d2266b01d7cb6
sw x3, 0(x2) # store 0xb22d2266b01d7cb6 in memory
flw f2, 0(x2) # load 0xb22d2266b01d7cb6 from memory into f2
fcvt.lu.s x8, f2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x523090b620868696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f723006932e5079 # load x3 with value 0x5f723006932e5079
sw x3, 0(x2) # store 0x5f723006932e5079 in memory
flw f23, 0(x2) # load 0x5f723006932e5079 from memory into f23
fcvt.lu.s x9, f23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x38a2f8a837d5e465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbe9986a2b7fe2001 # load x3 with value 0xbe9986a2b7fe2001
sw x3, 0(x2) # store 0xbe9986a2b7fe2001 in memory
flw f9, 0(x2) # load 0xbe9986a2b7fe2001 from memory into f9
fcvt.lu.s x10, f9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x069c2dc458357128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd1e600e19d78d835 # load x3 with value 0xd1e600e19d78d835
sw x3, 0(x2) # store 0xd1e600e19d78d835 in memory
flw f4, 0(x2) # load 0xd1e600e19d78d835 from memory into f4
fcvt.lu.s x11, f4 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdd579864fc25d559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa08765eead6bf0f5 # load x3 with value 0xa08765eead6bf0f5
sw x3, 0(x2) # store 0xa08765eead6bf0f5 in memory
flw f22, 0(x2) # load 0xa08765eead6bf0f5 from memory into f22
fcvt.lu.s x12, f22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd96c9aea6d67e3e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb30efb57c304dbbd # load x3 with value 0xb30efb57c304dbbd
sw x3, 0(x2) # store 0xb30efb57c304dbbd in memory
flw f24, 0(x2) # load 0xb30efb57c304dbbd from memory into f24
fcvt.lu.s x13, f24 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x27a0cf654ec86569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4179abfac0e7b53d # load x3 with value 0x4179abfac0e7b53d
sw x3, 0(x2) # store 0x4179abfac0e7b53d in memory
flw f9, 0(x2) # load 0x4179abfac0e7b53d from memory into f9
fcvt.lu.s x14, f9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x9de64f8c67441488 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x856c3af510b9ce78 # load x3 with value 0x856c3af510b9ce78
sw x3, 0(x2) # store 0x856c3af510b9ce78 in memory
flw f3, 0(x2) # load 0x856c3af510b9ce78 from memory into f3
fcvt.lu.s x15, f3 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb1f2d9f7b640726a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9624cf4075ab774d # load x3 with value 0x9624cf4075ab774d
sw x3, 0(x2) # store 0x9624cf4075ab774d in memory
flw f11, 0(x2) # load 0x9624cf4075ab774d from memory into f11
fcvt.lu.s x16, f11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x690f40a05305c329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf675adfdfa5a869f # load x3 with value 0xf675adfdfa5a869f
sw x3, 0(x2) # store 0xf675adfdfa5a869f in memory
flw f5, 0(x2) # load 0xf675adfdfa5a869f from memory into f5
fcvt.lu.s x17, f5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xbcfa6402a97d4528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xab9a0a44bd2a16ef # load x3 with value 0xab9a0a44bd2a16ef
sw x3, 0(x2) # store 0xab9a0a44bd2a16ef in memory
flw f4, 0(x2) # load 0xab9a0a44bd2a16ef from memory into f4
fcvt.lu.s x18, f4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa050ea3d9384f7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9fb7b43767a39d97 # load x3 with value 0x9fb7b43767a39d97
sw x3, 0(x2) # store 0x9fb7b43767a39d97 in memory
flw f3, 0(x2) # load 0x9fb7b43767a39d97 from memory into f3
fcvt.lu.s x19, f3 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x868cf3ff895d2eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x36c4353c1570c394 # load x3 with value 0x36c4353c1570c394
sw x3, 0(x2) # store 0x36c4353c1570c394 in memory
flw f25, 0(x2) # load 0x36c4353c1570c394 from memory into f25
fcvt.lu.s x20, f25 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x397065e1691ab1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf683dfc5c0e770e9 # load x3 with value 0xf683dfc5c0e770e9
sw x3, 0(x2) # store 0xf683dfc5c0e770e9 in memory
flw f6, 0(x2) # load 0xf683dfc5c0e770e9 from memory into f6
fcvt.lu.s x21, f6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xd7807f1b957db786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfc58a755915e2971 # load x3 with value 0xfc58a755915e2971
sw x3, 0(x2) # store 0xfc58a755915e2971 in memory
flw f1, 0(x2) # load 0xfc58a755915e2971 from memory into f1
fcvt.lu.s x22, f1 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x9e01f36813342762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff0a304882ba7aac # load x3 with value 0xff0a304882ba7aac
sw x3, 0(x2) # store 0xff0a304882ba7aac in memory
flw f30, 0(x2) # load 0xff0a304882ba7aac from memory into f30
fcvt.lu.s x23, f30 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x3c724a116d4463d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf8046b2f9d447fde # load x3 with value 0xf8046b2f9d447fde
sw x3, 0(x2) # store 0xf8046b2f9d447fde in memory
flw f12, 0(x2) # load 0xf8046b2f9d447fde from memory into f12
fcvt.lu.s x24, f12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7573f3b3b085f33f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78029cb44fdbf319 # load x3 with value 0x78029cb44fdbf319
sw x3, 0(x2) # store 0x78029cb44fdbf319 in memory
flw f25, 0(x2) # load 0x78029cb44fdbf319 from memory into f25
fcvt.lu.s x25, f25 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x38e2ad6b90f9454e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3eaec18b5a5b6aec # load x3 with value 0x3eaec18b5a5b6aec
sw x3, 0(x2) # store 0x3eaec18b5a5b6aec in memory
flw f13, 0(x2) # load 0x3eaec18b5a5b6aec from memory into f13
fcvt.lu.s x26, f13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xbfce97410779fbaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x69baac9e8c0c9ea6 # load x3 with value 0x69baac9e8c0c9ea6
sw x3, 0(x2) # store 0x69baac9e8c0c9ea6 in memory
flw f22, 0(x2) # load 0x69baac9e8c0c9ea6 from memory into f22
fcvt.lu.s x27, f22 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x922250a9ebd743a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d39aac3c8544ddb # load x3 with value 0x2d39aac3c8544ddb
sw x3, 0(x2) # store 0x2d39aac3c8544ddb in memory
flw f3, 0(x2) # load 0x2d39aac3c8544ddb from memory into f3
fcvt.lu.s x28, f3 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7f8f2c8f1e1020b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x345de829817ef352 # load x3 with value 0x345de829817ef352
sw x3, 0(x2) # store 0x345de829817ef352 in memory
flw f15, 0(x2) # load 0x345de829817ef352 from memory into f15
fcvt.lu.s x29, f15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf83da288e3fdf011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee451805ca6e723f # load x3 with value 0xee451805ca6e723f
sw x3, 0(x2) # store 0xee451805ca6e723f in memory
flw f18, 0(x2) # load 0xee451805ca6e723f from memory into f18
fcvt.lu.s x30, f18 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xff625de84416f712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4da43484c1e1f579 # load x3 with value 0x4da43484c1e1f579
sw x3, 0(x2) # store 0x4da43484c1e1f579 in memory
flw f2, 0(x2) # load 0x4da43484c1e1f579 from memory into f2
fcvt.lu.s x31, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x14, 0x8cb58e66fbdbc117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fcvt.lu.s x14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x25, 0xfd5996f9e247a806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fcvt.lu.s x25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x11, 0x728830ab91469d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fcvt.lu.s x11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x22, 0x053a7b510376de80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fcvt.lu.s x22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x5, 0xf92c9653d14a7c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fcvt.lu.s x5, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x29, 0xa44f453edf0055a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fcvt.lu.s x29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x21, 0xc8f5ccb122fdbc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fcvt.lu.s x21, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x17, 0x31d5c67a1aeaf9da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fcvt.lu.s x17, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x5, 0xeaf8855f94481e0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fcvt.lu.s x5, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x31, 0x7a9b997b9a2d9366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fcvt.lu.s x31, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x3, 0x9884836e26226e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fcvt.lu.s x3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x17, 0xc15a60f1ee5fbff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fcvt.lu.s x17, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x7, 0x63d4d7f24df4b5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fcvt.lu.s x7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x20, 0xafd263b52c5f64be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fcvt.lu.s x20, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x30, 0x71b6ea7b375e5800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fcvt.lu.s x30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x11, 0xfe391dce0f636dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fcvt.lu.s x11, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x2, 0xd9eeeabbf7873015 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fcvt.lu.s x2, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0x8777f7808909b775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fcvt.lu.s x14, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x1, 0x929b254e11cbfec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fcvt.lu.s x1, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x13, 0xf71f29b1afd1fc01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fcvt.lu.s x13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x8, 0x9c9e43487aae7f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fcvt.lu.s x8, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x1, 0x89b83bf81e9ffafc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fcvt.lu.s x1, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x29, 0x954c401082ca4b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fcvt.lu.s x29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x28, 0x28e7d0c2e1a2d5df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fcvt.lu.s x28, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x4, 0xe0f8532c43c6b00a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fcvt.lu.s x4, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x21, 0xa053f1f7206e9041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fcvt.lu.s x21, f17 # perform operation

# Testcase cp_frm
li x28, 0xd9dcec5684e4e785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc2a5aac6a99f9fbb # load x3 with value 0xc2a5aac6a99f9fbb
sw x3, 0(x2) # store 0xc2a5aac6a99f9fbb in memory
flw f1, 0(x2) # load 0xc2a5aac6a99f9fbb from memory into f1
fcvt.lu.s x28, f1, dyn # perform operation
fcvt.lu.s x28, f1, rdn # perform operation
fcvt.lu.s x28, f1, rmm # perform operation
fcvt.lu.s x28, f1, rne # perform operation
fcvt.lu.s x28, f1, rtz # perform operation
fcvt.lu.s x28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.s x28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.s x28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.s x28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.s x28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.s x28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x16, 0x132543b5553cb5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e882e968529c2d8 # load x3 with value 0x2e882e968529c2d8
sw x3, 0(x2) # store 0x2e882e968529c2d8 in memory
flw f0, 0(x2) # load 0x2e882e968529c2d8 from memory into f0
fcvt.lu.s x16, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x16, 0x19ab5ccb7d608ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf35fc4566fc65ee6 # load x3 with value 0xf35fc4566fc65ee6
sw x3, 0(x2) # store 0xf35fc4566fc65ee6 in memory
flw f1, 0(x2) # load 0xf35fc4566fc65ee6 from memory into f1
fcvt.lu.s x16, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x22, 0x41cc19222c301bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78e8617395afc9fe # load x3 with value 0x78e8617395afc9fe
sw x3, 0(x2) # store 0x78e8617395afc9fe in memory
flw f2, 0(x2) # load 0x78e8617395afc9fe from memory into f2
fcvt.lu.s x22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0x0ffa0e5e55e85298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1159cc5c8a75e1ff # load x3 with value 0x1159cc5c8a75e1ff
sw x3, 0(x2) # store 0x1159cc5c8a75e1ff in memory
flw f3, 0(x2) # load 0x1159cc5c8a75e1ff from memory into f3
fcvt.lu.s x24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0x60b99bcdb9bebec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xecfc6a07c78075a8 # load x3 with value 0xecfc6a07c78075a8
sw x3, 0(x2) # store 0xecfc6a07c78075a8 in memory
flw f4, 0(x2) # load 0xecfc6a07c78075a8 from memory into f4
fcvt.lu.s x25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x17, 0x227cdd13773dc917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x53563279765d7048 # load x3 with value 0x53563279765d7048
sw x3, 0(x2) # store 0x53563279765d7048 in memory
flw f5, 0(x2) # load 0x53563279765d7048 from memory into f5
fcvt.lu.s x17, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x9, 0x30067e620a83b8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4d83a00d4a386a90 # load x3 with value 0x4d83a00d4a386a90
sw x3, 0(x2) # store 0x4d83a00d4a386a90 in memory
flw f6, 0(x2) # load 0x4d83a00d4a386a90 from memory into f6
fcvt.lu.s x9, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0x24e7507983cec7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcff9d3e5e8fffcf3 # load x3 with value 0xcff9d3e5e8fffcf3
sw x3, 0(x2) # store 0xcff9d3e5e8fffcf3 in memory
flw f7, 0(x2) # load 0xcff9d3e5e8fffcf3 from memory into f7
fcvt.lu.s x26, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x26, 0x775bfcfa76545ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9fe5b91489349049 # load x3 with value 0x9fe5b91489349049
sw x3, 0(x2) # store 0x9fe5b91489349049 in memory
flw f8, 0(x2) # load 0x9fe5b91489349049 from memory into f8
fcvt.lu.s x26, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x22, 0x4bf2ac06ec985316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5b335380675c94f5 # load x3 with value 0x5b335380675c94f5
sw x3, 0(x2) # store 0x5b335380675c94f5 in memory
flw f9, 0(x2) # load 0x5b335380675c94f5 from memory into f9
fcvt.lu.s x22, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x19, 0x67042ca66473ce85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a867493fbc61e6d # load x3 with value 0x8a867493fbc61e6d
sw x3, 0(x2) # store 0x8a867493fbc61e6d in memory
flw f10, 0(x2) # load 0x8a867493fbc61e6d from memory into f10
fcvt.lu.s x19, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x9, 0xbd2ab5f0da53cc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb64e840e36ad12f # load x3 with value 0xbb64e840e36ad12f
sw x3, 0(x2) # store 0xbb64e840e36ad12f in memory
flw f11, 0(x2) # load 0xbb64e840e36ad12f from memory into f11
fcvt.lu.s x9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x11, 0xfc1fb47781de569b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe15c8c6ae9526e31 # load x3 with value 0xe15c8c6ae9526e31
sw x3, 0(x2) # store 0xe15c8c6ae9526e31 in memory
flw f12, 0(x2) # load 0xe15c8c6ae9526e31 from memory into f12
fcvt.lu.s x11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x29, 0x8eca002a3a3a5685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf570153e4841576a # load x3 with value 0xf570153e4841576a
sw x3, 0(x2) # store 0xf570153e4841576a in memory
flw f13, 0(x2) # load 0xf570153e4841576a from memory into f13
fcvt.lu.s x29, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0x404f4d2a1c767a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x45f2527a74be7095 # load x3 with value 0x45f2527a74be7095
sw x3, 0(x2) # store 0x45f2527a74be7095 in memory
flw f14, 0(x2) # load 0x45f2527a74be7095 from memory into f14
fcvt.lu.s x1, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x27, 0xb4eeedcf6b6c8977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd92e987725bd33b0 # load x3 with value 0xd92e987725bd33b0
sw x3, 0(x2) # store 0xd92e987725bd33b0 in memory
flw f15, 0(x2) # load 0xd92e987725bd33b0 from memory into f15
fcvt.lu.s x27, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x13, 0x115d0bd2370a6f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40dcb5b3748d138 # load x3 with value 0x40dcb5b3748d138
sw x3, 0(x2) # store 0x40dcb5b3748d138 in memory
flw f16, 0(x2) # load 0x40dcb5b3748d138 from memory into f16
fcvt.lu.s x13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x14, 0x03a86d9b5fad7d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb69b3c7b241fbfc4 # load x3 with value 0xb69b3c7b241fbfc4
sw x3, 0(x2) # store 0xb69b3c7b241fbfc4 in memory
flw f17, 0(x2) # load 0xb69b3c7b241fbfc4 from memory into f17
fcvt.lu.s x14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0xc85748de02e083e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd6268c1269dcba6b # load x3 with value 0xd6268c1269dcba6b
sw x3, 0(x2) # store 0xd6268c1269dcba6b in memory
flw f18, 0(x2) # load 0xd6268c1269dcba6b from memory into f18
fcvt.lu.s x31, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x16, 0x7b536a1063ec09b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaf7f3bcc7eea9f98 # load x3 with value 0xaf7f3bcc7eea9f98
sw x3, 0(x2) # store 0xaf7f3bcc7eea9f98 in memory
flw f19, 0(x2) # load 0xaf7f3bcc7eea9f98 from memory into f19
fcvt.lu.s x16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x11, 0x94582bab88eab1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee8a443a8b450db3 # load x3 with value 0xee8a443a8b450db3
sw x3, 0(x2) # store 0xee8a443a8b450db3 in memory
flw f20, 0(x2) # load 0xee8a443a8b450db3 from memory into f20
fcvt.lu.s x11, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x29, 0xf9eaf6f12ab27d6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a43baa7cb360061 # load x3 with value 0x8a43baa7cb360061
sw x3, 0(x2) # store 0x8a43baa7cb360061 in memory
flw f21, 0(x2) # load 0x8a43baa7cb360061 from memory into f21
fcvt.lu.s x29, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x19, 0x724396fa364f3840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ec29893822ebd77 # load x3 with value 0x1ec29893822ebd77
sw x3, 0(x2) # store 0x1ec29893822ebd77 in memory
flw f22, 0(x2) # load 0x1ec29893822ebd77 from memory into f22
fcvt.lu.s x19, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x7d913bfc192637c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe47495c0d2f2d365 # load x3 with value 0xe47495c0d2f2d365
sw x3, 0(x2) # store 0xe47495c0d2f2d365 in memory
flw f23, 0(x2) # load 0xe47495c0d2f2d365 from memory into f23
fcvt.lu.s x30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x26, 0x84417bfd3362e1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfa3b013794eff7f7 # load x3 with value 0xfa3b013794eff7f7
sw x3, 0(x2) # store 0xfa3b013794eff7f7 in memory
flw f24, 0(x2) # load 0xfa3b013794eff7f7 from memory into f24
fcvt.lu.s x26, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x14, 0xe982c0905afaf075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x710815bc3305433 # load x3 with value 0x710815bc3305433
sw x3, 0(x2) # store 0x710815bc3305433 in memory
flw f25, 0(x2) # load 0x710815bc3305433 from memory into f25
fcvt.lu.s x14, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x25, 0x482d5ad7c7049242 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb8667dbda69c4a42 # load x3 with value 0xb8667dbda69c4a42
sw x3, 0(x2) # store 0xb8667dbda69c4a42 in memory
flw f26, 0(x2) # load 0xb8667dbda69c4a42 from memory into f26
fcvt.lu.s x25, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x493cf37127d3c564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe10e82c746f181a1 # load x3 with value 0xe10e82c746f181a1
sw x3, 0(x2) # store 0xe10e82c746f181a1 in memory
flw f27, 0(x2) # load 0xe10e82c746f181a1 from memory into f27
fcvt.lu.s x1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0x73cccb18c5b35eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5bd0e45d99bd4fe2 # load x3 with value 0x5bd0e45d99bd4fe2
sw x3, 0(x2) # store 0x5bd0e45d99bd4fe2 in memory
flw f28, 0(x2) # load 0x5bd0e45d99bd4fe2 from memory into f28
fcvt.lu.s x28, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x7, 0x47f900a98951ebe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3c4a65094f0c555 # load x3 with value 0xf3c4a65094f0c555
sw x3, 0(x2) # store 0xf3c4a65094f0c555 in memory
flw f29, 0(x2) # load 0xf3c4a65094f0c555 from memory into f29
fcvt.lu.s x7, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x22, 0x4c7a9ffb4188ccb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x38f5ce27bdf622e7 # load x3 with value 0x38f5ce27bdf622e7
sw x3, 0(x2) # store 0x38f5ce27bdf622e7 in memory
flw f30, 0(x2) # load 0x38f5ce27bdf622e7 from memory into f30
fcvt.lu.s x22, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0xddd9835908cd9af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b3eb675413a69e3 # load x3 with value 0x3b3eb675413a69e3
sw x3, 0(x2) # store 0x3b3eb675413a69e3 in memory
flw f31, 0(x2) # load 0x3b3eb675413a69e3 from memory into f31
fcvt.lu.s x18, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
