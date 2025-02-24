///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fcvt.wu.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.144405
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
li x0, 0x0d080758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66598190 # load x3 with value 0x66598190
sw x3, 0(x2) # store 0x66598190 in memory
flw f8, 0(x2) # load 0x66598190 from memory into f8
fcvt.wu.s x0, f8 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x99a87239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x20768038 # load x3 with value 0x20768038
sw x3, 0(x2) # store 0x20768038 in memory
flw f24, 0(x2) # load 0x20768038 from memory into f24
fcvt.wu.s x1, f24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3a73bfff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x918b9956 # load x3 with value 0x918b9956
sw x3, 0(x2) # store 0x918b9956 in memory
flw f28, 0(x2) # load 0x918b9956 from memory into f28
fcvt.wu.s x2, f28 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa0ca9959 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4379712e # load x3 with value 0x4379712e
sw x3, 0(x2) # store 0x4379712e in memory
flw f7, 0(x2) # load 0x4379712e from memory into f7
fcvt.wu.s x3, f7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf5395e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf759d842 # load x3 with value 0xf759d842
sw x3, 0(x2) # store 0xf759d842 in memory
flw f5, 0(x2) # load 0xf759d842 from memory into f5
fcvt.wu.s x4, f5 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x6da94d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x58506b40 # load x3 with value 0x58506b40
sw x3, 0(x2) # store 0x58506b40 in memory
flw f10, 0(x2) # load 0x58506b40 from memory into f10
fcvt.wu.s x5, f10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x8f97343c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe53824ce # load x3 with value 0xe53824ce
sw x3, 0(x2) # store 0xe53824ce in memory
flw f14, 0(x2) # load 0xe53824ce from memory into f14
fcvt.wu.s x6, f14 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe6b7458d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x705067d5 # load x3 with value 0x705067d5
sw x3, 0(x2) # store 0x705067d5 in memory
flw f1, 0(x2) # load 0x705067d5 from memory into f1
fcvt.wu.s x7, f1 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x62cd6f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbd111f5f # load x3 with value 0xbd111f5f
sw x3, 0(x2) # store 0xbd111f5f in memory
flw f17, 0(x2) # load 0xbd111f5f from memory into f17
fcvt.wu.s x8, f17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9775004c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb362831 # load x3 with value 0xdb362831
sw x3, 0(x2) # store 0xdb362831 in memory
flw f22, 0(x2) # load 0xdb362831 from memory into f22
fcvt.wu.s x9, f22 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x20eec680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x81f18893 # load x3 with value 0x81f18893
sw x3, 0(x2) # store 0x81f18893 in memory
flw f28, 0(x2) # load 0x81f18893 from memory into f28
fcvt.wu.s x10, f28 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x031854aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x25fe41a4 # load x3 with value 0x25fe41a4
sw x3, 0(x2) # store 0x25fe41a4 in memory
flw f31, 0(x2) # load 0x25fe41a4 from memory into f31
fcvt.wu.s x11, f31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2ae4f855 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x13fe4cdd # load x3 with value 0x13fe4cdd
sw x3, 0(x2) # store 0x13fe4cdd in memory
flw f28, 0(x2) # load 0x13fe4cdd from memory into f28
fcvt.wu.s x12, f28 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x51b787a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x133ecb4f # load x3 with value 0x133ecb4f
sw x3, 0(x2) # store 0x133ecb4f in memory
flw f6, 0(x2) # load 0x133ecb4f from memory into f6
fcvt.wu.s x13, f6 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa6666ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x929d78a1 # load x3 with value 0x929d78a1
sw x3, 0(x2) # store 0x929d78a1 in memory
flw f10, 0(x2) # load 0x929d78a1 from memory into f10
fcvt.wu.s x14, f10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x761f2a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3421a6fe # load x3 with value 0x3421a6fe
sw x3, 0(x2) # store 0x3421a6fe in memory
flw f18, 0(x2) # load 0x3421a6fe from memory into f18
fcvt.wu.s x15, f18 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xeb27b456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe55d55ab # load x3 with value 0xe55d55ab
sw x3, 0(x2) # store 0xe55d55ab in memory
flw f7, 0(x2) # load 0xe55d55ab from memory into f7
fcvt.wu.s x16, f7 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x2027430a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc8c5260 # load x3 with value 0xdc8c5260
sw x3, 0(x2) # store 0xdc8c5260 in memory
flw f29, 0(x2) # load 0xdc8c5260 from memory into f29
fcvt.wu.s x17, f29 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8ef7bddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6bfb2656 # load x3 with value 0x6bfb2656
sw x3, 0(x2) # store 0x6bfb2656 in memory
flw f13, 0(x2) # load 0x6bfb2656 from memory into f13
fcvt.wu.s x18, f13 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0a92bf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80e3b74d # load x3 with value 0x80e3b74d
sw x3, 0(x2) # store 0x80e3b74d in memory
flw f16, 0(x2) # load 0x80e3b74d from memory into f16
fcvt.wu.s x19, f16 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xfd99ad7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb3e0ad8d # load x3 with value 0xb3e0ad8d
sw x3, 0(x2) # store 0xb3e0ad8d in memory
flw f6, 0(x2) # load 0xb3e0ad8d from memory into f6
fcvt.wu.s x20, f6 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x14ab3659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xceb56c62 # load x3 with value 0xceb56c62
sw x3, 0(x2) # store 0xceb56c62 in memory
flw f23, 0(x2) # load 0xceb56c62 from memory into f23
fcvt.wu.s x21, f23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x6cf41c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54052231 # load x3 with value 0x54052231
sw x3, 0(x2) # store 0x54052231 in memory
flw f28, 0(x2) # load 0x54052231 from memory into f28
fcvt.wu.s x22, f28 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2cbe6892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc86b3dfc # load x3 with value 0xc86b3dfc
sw x3, 0(x2) # store 0xc86b3dfc in memory
flw f13, 0(x2) # load 0xc86b3dfc from memory into f13
fcvt.wu.s x23, f13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xfc851351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b3987b9 # load x3 with value 0x2b3987b9
sw x3, 0(x2) # store 0x2b3987b9 in memory
flw f26, 0(x2) # load 0x2b3987b9 from memory into f26
fcvt.wu.s x24, f26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb84e5080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd3de3beb # load x3 with value 0xd3de3beb
sw x3, 0(x2) # store 0xd3de3beb in memory
flw f9, 0(x2) # load 0xd3de3beb from memory into f9
fcvt.wu.s x25, f9 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x16946d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x068bcae3 # load x3 with value 0x068bcae3
sw x3, 0(x2) # store 0x068bcae3 in memory
flw f11, 0(x2) # load 0x068bcae3 from memory into f11
fcvt.wu.s x26, f11 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x567c004a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x284d273d # load x3 with value 0x284d273d
sw x3, 0(x2) # store 0x284d273d in memory
flw f21, 0(x2) # load 0x284d273d from memory into f21
fcvt.wu.s x27, f21 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0833c5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4fb6cf9e # load x3 with value 0x4fb6cf9e
sw x3, 0(x2) # store 0x4fb6cf9e in memory
flw f24, 0(x2) # load 0x4fb6cf9e from memory into f24
fcvt.wu.s x28, f24 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd78bde3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8fe6928f # load x3 with value 0x8fe6928f
sw x3, 0(x2) # store 0x8fe6928f in memory
flw f21, 0(x2) # load 0x8fe6928f from memory into f21
fcvt.wu.s x29, f21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb8847825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd139233c # load x3 with value 0xd139233c
sw x3, 0(x2) # store 0xd139233c in memory
flw f4, 0(x2) # load 0xd139233c from memory into f4
fcvt.wu.s x30, f4 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xcfb6a10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x039c4f10 # load x3 with value 0x039c4f10
sw x3, 0(x2) # store 0x039c4f10 in memory
flw f21, 0(x2) # load 0x039c4f10 from memory into f21
fcvt.wu.s x31, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x2, 0x034c927d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fcvt.wu.s x2, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x31, 0xaa5e46f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fcvt.wu.s x31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x24, 0xa234444d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fcvt.wu.s x24, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x26, 0x17bebb01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fcvt.wu.s x26, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x11, 0x20fa9783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fcvt.wu.s x11, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x5, 0xd4b7bc14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fcvt.wu.s x5, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x23, 0x3017eef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fcvt.wu.s x23, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x19, 0x837cd64b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fcvt.wu.s x19, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x11, 0x07c34007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fcvt.wu.s x11, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x23, 0xa331d792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fcvt.wu.s x23, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x28, 0x226c7393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fcvt.wu.s x28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x30, 0x30376db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fcvt.wu.s x30, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x7, 0x2d195353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fcvt.wu.s x7, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x7, 0xeaf178aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fcvt.wu.s x7, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x16, 0x81ac7b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fcvt.wu.s x16, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x23, 0xf842f5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fcvt.wu.s x23, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x22, 0x3d15b2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fcvt.wu.s x22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x22, 0x2a527371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fcvt.wu.s x22, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x28, 0x25c057ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fcvt.wu.s x28, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x14, 0x1cc0f2f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fcvt.wu.s x14, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x17, 0xd2704333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fcvt.wu.s x17, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x24, 0xd00e0126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fcvt.wu.s x24, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x14, 0x8a48524c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fcvt.wu.s x14, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x22, 0x32bcbfe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fcvt.wu.s x22, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x17, 0x4c104630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fcvt.wu.s x17, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x28, 0x4221221b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fcvt.wu.s x28, f8 # perform operation

# Testcase cp_frm
li x27, 0xbc7d0380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe03dc6da # load x3 with value 0xe03dc6da
sw x3, 0(x2) # store 0xe03dc6da in memory
flw f23, 0(x2) # load 0xe03dc6da from memory into f23
fcvt.wu.s x27, f23, dyn # perform operation
fcvt.wu.s x27, f23, rdn # perform operation
fcvt.wu.s x27, f23, rmm # perform operation
fcvt.wu.s x27, f23, rne # perform operation
fcvt.wu.s x27, f23, rtz # perform operation
fcvt.wu.s x27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.s x27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.s x27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.s x27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.s x27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.s x27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x4, 0x11b7462f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb900f882 # load x3 with value 0xb900f882
sw x3, 0(x2) # store 0xb900f882 in memory
flw f0, 0(x2) # load 0xb900f882 from memory into f0
fcvt.wu.s x4, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x4, 0x94bc5664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x97f3c120 # load x3 with value 0x97f3c120
sw x3, 0(x2) # store 0x97f3c120 in memory
flw f1, 0(x2) # load 0x97f3c120 from memory into f1
fcvt.wu.s x4, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x31, 0x96194019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9656598a # load x3 with value 0x9656598a
sw x3, 0(x2) # store 0x9656598a in memory
flw f2, 0(x2) # load 0x9656598a from memory into f2
fcvt.wu.s x31, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0xbe48bffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1c8fb38d # load x3 with value 0x1c8fb38d
sw x3, 0(x2) # store 0x1c8fb38d in memory
flw f3, 0(x2) # load 0x1c8fb38d from memory into f3
fcvt.wu.s x24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0xc9aa288a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c61bd41 # load x3 with value 0x4c61bd41
sw x3, 0(x2) # store 0x4c61bd41 in memory
flw f4, 0(x2) # load 0x4c61bd41 from memory into f4
fcvt.wu.s x2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x16, 0xe0f9897b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x70f00171 # load x3 with value 0x70f00171
sw x3, 0(x2) # store 0x70f00171 in memory
flw f5, 0(x2) # load 0x70f00171 from memory into f5
fcvt.wu.s x16, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x7, 0x23ded502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0549c70e # load x3 with value 0x0549c70e
sw x3, 0(x2) # store 0x0549c70e in memory
flw f6, 0(x2) # load 0x0549c70e from memory into f6
fcvt.wu.s x7, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x8, 0x7182fa5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x297daf1b # load x3 with value 0x297daf1b
sw x3, 0(x2) # store 0x297daf1b in memory
flw f7, 0(x2) # load 0x297daf1b from memory into f7
fcvt.wu.s x8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0x41b6b99f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x674e1341 # load x3 with value 0x674e1341
sw x3, 0(x2) # store 0x674e1341 in memory
flw f8, 0(x2) # load 0x674e1341 from memory into f8
fcvt.wu.s x18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0x3d59aa80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17838a25 # load x3 with value 0x17838a25
sw x3, 0(x2) # store 0x17838a25 in memory
flw f9, 0(x2) # load 0x17838a25 from memory into f9
fcvt.wu.s x29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x14, 0x54f5df47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1f06a9a0 # load x3 with value 0x1f06a9a0
sw x3, 0(x2) # store 0x1f06a9a0 in memory
flw f10, 0(x2) # load 0x1f06a9a0 from memory into f10
fcvt.wu.s x14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x10, 0x3adeedb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb1572be1 # load x3 with value 0xb1572be1
sw x3, 0(x2) # store 0xb1572be1 in memory
flw f11, 0(x2) # load 0xb1572be1 from memory into f11
fcvt.wu.s x10, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x8, 0x3d258570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3adb8e96 # load x3 with value 0x3adb8e96
sw x3, 0(x2) # store 0x3adb8e96 in memory
flw f12, 0(x2) # load 0x3adb8e96 from memory into f12
fcvt.wu.s x8, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x4, 0x97a1dd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ec7d85a # load x3 with value 0x3ec7d85a
sw x3, 0(x2) # store 0x3ec7d85a in memory
flw f13, 0(x2) # load 0x3ec7d85a from memory into f13
fcvt.wu.s x4, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x19, 0x937c41f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5ca736c5 # load x3 with value 0x5ca736c5
sw x3, 0(x2) # store 0x5ca736c5 in memory
flw f14, 0(x2) # load 0x5ca736c5 from memory into f14
fcvt.wu.s x19, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0x67ddebd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2c4c896a # load x3 with value 0x2c4c896a
sw x3, 0(x2) # store 0x2c4c896a in memory
flw f15, 0(x2) # load 0x2c4c896a from memory into f15
fcvt.wu.s x3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x7, 0x98a94597 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1fdd070a # load x3 with value 0x1fdd070a
sw x3, 0(x2) # store 0x1fdd070a in memory
flw f16, 0(x2) # load 0x1fdd070a from memory into f16
fcvt.wu.s x7, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0x9c3877fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c1c4e05 # load x3 with value 0x4c1c4e05
sw x3, 0(x2) # store 0x4c1c4e05 in memory
flw f17, 0(x2) # load 0x4c1c4e05 from memory into f17
fcvt.wu.s x29, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0x9aa1d2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e5b3020 # load x3 with value 0x2e5b3020
sw x3, 0(x2) # store 0x2e5b3020 in memory
flw f18, 0(x2) # load 0x2e5b3020 from memory into f18
fcvt.wu.s x7, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x20, 0x229b2cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb0dba0b3 # load x3 with value 0xb0dba0b3
sw x3, 0(x2) # store 0xb0dba0b3 in memory
flw f19, 0(x2) # load 0xb0dba0b3 from memory into f19
fcvt.wu.s x20, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x29, 0x857c4c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfedaae4a # load x3 with value 0xfedaae4a
sw x3, 0(x2) # store 0xfedaae4a in memory
flw f20, 0(x2) # load 0xfedaae4a from memory into f20
fcvt.wu.s x29, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x25, 0xf498ad52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x63414b0c # load x3 with value 0x63414b0c
sw x3, 0(x2) # store 0x63414b0c in memory
flw f21, 0(x2) # load 0x63414b0c from memory into f21
fcvt.wu.s x25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0x1b83102f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x44bb9405 # load x3 with value 0x44bb9405
sw x3, 0(x2) # store 0x44bb9405 in memory
flw f22, 0(x2) # load 0x44bb9405 from memory into f22
fcvt.wu.s x4, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x5, 0x70aaac63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf6382e7a # load x3 with value 0xf6382e7a
sw x3, 0(x2) # store 0xf6382e7a in memory
flw f23, 0(x2) # load 0xf6382e7a from memory into f23
fcvt.wu.s x5, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x2, 0xace44ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a89f503 # load x3 with value 0x5a89f503
sw x3, 0(x2) # store 0x5a89f503 in memory
flw f24, 0(x2) # load 0x5a89f503 from memory into f24
fcvt.wu.s x2, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x25, 0xc1612556 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x11d6f36f # load x3 with value 0x11d6f36f
sw x3, 0(x2) # store 0x11d6f36f in memory
flw f25, 0(x2) # load 0x11d6f36f from memory into f25
fcvt.wu.s x25, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x7, 0x08d4249a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x374d2ed5 # load x3 with value 0x374d2ed5
sw x3, 0(x2) # store 0x374d2ed5 in memory
flw f26, 0(x2) # load 0x374d2ed5 from memory into f26
fcvt.wu.s x7, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x2, 0x016ce26f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4dc7ce0e # load x3 with value 0x4dc7ce0e
sw x3, 0(x2) # store 0x4dc7ce0e in memory
flw f27, 0(x2) # load 0x4dc7ce0e from memory into f27
fcvt.wu.s x2, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x31, 0x8af4bb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc1f99dcd # load x3 with value 0xc1f99dcd
sw x3, 0(x2) # store 0xc1f99dcd in memory
flw f28, 0(x2) # load 0xc1f99dcd from memory into f28
fcvt.wu.s x31, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x4, 0xf1b9412c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc5ebace # load x3 with value 0xbc5ebace
sw x3, 0(x2) # store 0xbc5ebace in memory
flw f29, 0(x2) # load 0xbc5ebace from memory into f29
fcvt.wu.s x4, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x15, 0x5cfca7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb3c2c2fa # load x3 with value 0xb3c2c2fa
sw x3, 0(x2) # store 0xb3c2c2fa in memory
flw f30, 0(x2) # load 0xb3c2c2fa from memory into f30
fcvt.wu.s x15, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x9, 0x2114cde2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1037984d # load x3 with value 0x1037984d
sw x3, 0(x2) # store 0x1037984d in memory
flw f31, 0(x2) # load 0x1037984d from memory into f31
fcvt.wu.s x9, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
