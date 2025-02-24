///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fclass.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.708258
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
li x0, 0x8a77bd6d5f8ab6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce24c605c6043460 # load x3 with value 0xce24c605c6043460
sw x3, 0(x2) # store 0xce24c605c6043460 in memory
flw f5, 0(x2) # load 0xce24c605c6043460 from memory into f5
fclass.s x0, f5 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3efb79f2525c420b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7183436323752eb # load x3 with value 0xb7183436323752eb
sw x3, 0(x2) # store 0xb7183436323752eb in memory
flw f21, 0(x2) # load 0xb7183436323752eb from memory into f21
fclass.s x1, f21 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x7b6d3476bc170feb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9630e03dbdd4f9a # load x3 with value 0x9630e03dbdd4f9a
sw x3, 0(x2) # store 0x9630e03dbdd4f9a in memory
flw f24, 0(x2) # load 0x9630e03dbdd4f9a from memory into f24
fclass.s x2, f24 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8011e635fc223124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3536eccea6e848af # load x3 with value 0x3536eccea6e848af
sw x3, 0(x2) # store 0x3536eccea6e848af in memory
flw f12, 0(x2) # load 0x3536eccea6e848af from memory into f12
fclass.s x3, f12 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x5b307a1a3f5b72fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11d7de9405f9e59 # load x3 with value 0x11d7de9405f9e59
sw x3, 0(x2) # store 0x11d7de9405f9e59 in memory
flw f16, 0(x2) # load 0x11d7de9405f9e59 from memory into f16
fclass.s x4, f16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x10c24977f4cf4fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9efac77b1a0f8413 # load x3 with value 0x9efac77b1a0f8413
sw x3, 0(x2) # store 0x9efac77b1a0f8413 in memory
flw f26, 0(x2) # load 0x9efac77b1a0f8413 from memory into f26
fclass.s x5, f26 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xaeda6265a479f491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbde5e6c31c3858b1 # load x3 with value 0xbde5e6c31c3858b1
sw x3, 0(x2) # store 0xbde5e6c31c3858b1 in memory
flw f7, 0(x2) # load 0xbde5e6c31c3858b1 from memory into f7
fclass.s x6, f7 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xfb6580b07d04c03a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26860e424987e976 # load x3 with value 0x26860e424987e976
sw x3, 0(x2) # store 0x26860e424987e976 in memory
flw f23, 0(x2) # load 0x26860e424987e976 from memory into f23
fclass.s x7, f23 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x61e3e6476631b48e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ac9c30fb0357d64 # load x3 with value 0x1ac9c30fb0357d64
sw x3, 0(x2) # store 0x1ac9c30fb0357d64 in memory
flw f5, 0(x2) # load 0x1ac9c30fb0357d64 from memory into f5
fclass.s x8, f5 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x865c9553021c695d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff3b17570efd76cf # load x3 with value 0xff3b17570efd76cf
sw x3, 0(x2) # store 0xff3b17570efd76cf in memory
flw f10, 0(x2) # load 0xff3b17570efd76cf from memory into f10
fclass.s x9, f10 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd64a0fb0ada3982a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3103789195ddcac1 # load x3 with value 0x3103789195ddcac1
sw x3, 0(x2) # store 0x3103789195ddcac1 in memory
flw f31, 0(x2) # load 0x3103789195ddcac1 from memory into f31
fclass.s x10, f31 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x59a3cbeed7791d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6889e6274b832fd8 # load x3 with value 0x6889e6274b832fd8
sw x3, 0(x2) # store 0x6889e6274b832fd8 in memory
flw f8, 0(x2) # load 0x6889e6274b832fd8 from memory into f8
fclass.s x11, f8 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5862e5ff56d3aa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2db6630cfcfe716 # load x3 with value 0xf2db6630cfcfe716
sw x3, 0(x2) # store 0xf2db6630cfcfe716 in memory
flw f8, 0(x2) # load 0xf2db6630cfcfe716 from memory into f8
fclass.s x12, f8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x8a14427f06165423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x137329d1d23148cd # load x3 with value 0x137329d1d23148cd
sw x3, 0(x2) # store 0x137329d1d23148cd in memory
flw f1, 0(x2) # load 0x137329d1d23148cd from memory into f1
fclass.s x13, f1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x26d2a1bc1c8da08b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67c02693cde76524 # load x3 with value 0x67c02693cde76524
sw x3, 0(x2) # store 0x67c02693cde76524 in memory
flw f23, 0(x2) # load 0x67c02693cde76524 from memory into f23
fclass.s x14, f23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7f6f328ab58004dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6af4e03165c1be3 # load x3 with value 0xe6af4e03165c1be3
sw x3, 0(x2) # store 0xe6af4e03165c1be3 in memory
flw f5, 0(x2) # load 0xe6af4e03165c1be3 from memory into f5
fclass.s x15, f5 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd51c02517c3e07dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c028b6b67192091 # load x3 with value 0x6c028b6b67192091
sw x3, 0(x2) # store 0x6c028b6b67192091 in memory
flw f8, 0(x2) # load 0x6c028b6b67192091 from memory into f8
fclass.s x16, f8 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xb58c90d0912433ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfc24b2693d98814 # load x3 with value 0xdfc24b2693d98814
sw x3, 0(x2) # store 0xdfc24b2693d98814 in memory
flw f22, 0(x2) # load 0xdfc24b2693d98814 from memory into f22
fclass.s x17, f22 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x33ace2199f2e329c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7422b2a841f3340b # load x3 with value 0x7422b2a841f3340b
sw x3, 0(x2) # store 0x7422b2a841f3340b in memory
flw f21, 0(x2) # load 0x7422b2a841f3340b from memory into f21
fclass.s x18, f21 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x2852f2e038b4a839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe54e351a3c24f05d # load x3 with value 0xe54e351a3c24f05d
sw x3, 0(x2) # store 0xe54e351a3c24f05d in memory
flw f14, 0(x2) # load 0xe54e351a3c24f05d from memory into f14
fclass.s x19, f14 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe3755c3bce95bb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88879b823303463c # load x3 with value 0x88879b823303463c
sw x3, 0(x2) # store 0x88879b823303463c in memory
flw f4, 0(x2) # load 0x88879b823303463c from memory into f4
fclass.s x20, f4 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x03aad5d6ab9ff1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd70693c788adea4f # load x3 with value 0xd70693c788adea4f
sw x3, 0(x2) # store 0xd70693c788adea4f in memory
flw f1, 0(x2) # load 0xd70693c788adea4f from memory into f1
fclass.s x21, f1 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe068444c406ce68b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a9353278aa8a8e4 # load x3 with value 0x6a9353278aa8a8e4
sw x3, 0(x2) # store 0x6a9353278aa8a8e4 in memory
flw f3, 0(x2) # load 0x6a9353278aa8a8e4 from memory into f3
fclass.s x22, f3 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x954e1ab97c1c76c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa540c3e443d31e97 # load x3 with value 0xa540c3e443d31e97
sw x3, 0(x2) # store 0xa540c3e443d31e97 in memory
flw f2, 0(x2) # load 0xa540c3e443d31e97 from memory into f2
fclass.s x23, f2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x01ce658ecf16b1af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e55ae103757334f # load x3 with value 0x6e55ae103757334f
sw x3, 0(x2) # store 0x6e55ae103757334f in memory
flw f6, 0(x2) # load 0x6e55ae103757334f from memory into f6
fclass.s x24, f6 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3a02cd240d688d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed6e609250aafa33 # load x3 with value 0xed6e609250aafa33
sw x3, 0(x2) # store 0xed6e609250aafa33 in memory
flw f29, 0(x2) # load 0xed6e609250aafa33 from memory into f29
fclass.s x25, f29 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xcabf8df48e1ad783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd214b2c75ff88e62 # load x3 with value 0xd214b2c75ff88e62
sw x3, 0(x2) # store 0xd214b2c75ff88e62 in memory
flw f17, 0(x2) # load 0xd214b2c75ff88e62 from memory into f17
fclass.s x26, f17 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xac7d856a0cbaaa42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9de06b80922409e6 # load x3 with value 0x9de06b80922409e6
sw x3, 0(x2) # store 0x9de06b80922409e6 in memory
flw f30, 0(x2) # load 0x9de06b80922409e6 from memory into f30
fclass.s x27, f30 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe3663cf990faa351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89d81b375630d9da # load x3 with value 0x89d81b375630d9da
sw x3, 0(x2) # store 0x89d81b375630d9da in memory
flw f18, 0(x2) # load 0x89d81b375630d9da from memory into f18
fclass.s x28, f18 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd57ea63daccc039c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10022b43f739e0ab # load x3 with value 0x10022b43f739e0ab
sw x3, 0(x2) # store 0x10022b43f739e0ab in memory
flw f15, 0(x2) # load 0x10022b43f739e0ab from memory into f15
fclass.s x29, f15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xcbed66486a48866a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb200368b21e5fb23 # load x3 with value 0xb200368b21e5fb23
sw x3, 0(x2) # store 0xb200368b21e5fb23 in memory
flw f28, 0(x2) # load 0xb200368b21e5fb23 from memory into f28
fclass.s x30, f28 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2fc22f88db596bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48ecf9bde18e265e # load x3 with value 0x48ecf9bde18e265e
sw x3, 0(x2) # store 0x48ecf9bde18e265e in memory
flw f21, 0(x2) # load 0x48ecf9bde18e265e from memory into f21
fclass.s x31, f21 # perform operation

# Testcase cmp_gpr_hazard raw test
fclass.s x9, f12 # perform first operation
fclass.s x18, f9 # perform second operation

# Testcase cmp_gpr_hazard raw test
fclass.s x7, f23 # perform first operation
fclass.s x5, f4 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.s x21, f12 # perform first operation
fclass.s x21, f7 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.s x17, f22 # perform first operation
fclass.s x17, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.s x1, f28 # perform first operation
fclass.s x28, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.s x27, f29 # perform first operation
fclass.s x19, f7 # perform second operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x18, 0x2f9222f9358a9976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fclass.s x18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x11, 0xf2d163416d95a5a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fclass.s x11, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x25, 0x9ad66b1a1745079b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fclass.s x25, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x25, 0xd8cd036e87ac4d5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fclass.s x25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x31, 0xfc64d3330b2ade6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fclass.s x31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x4, 0x4a8ffc1fb09bd30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fclass.s x4, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x27, 0xef22079962933d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fclass.s x27, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x26, 0xa707709a59b15a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fclass.s x26, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x19, 0x29fd05c28d0178e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fclass.s x19, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x19, 0xc2d5b964fb951472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fclass.s x19, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x19, 0xf1c7fd26e658b067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fclass.s x19, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x31, 0xd882aae89b419c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fclass.s x31, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x24, 0xb484ac645788f43a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fclass.s x24, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x15, 0x49236cfaa313228e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fclass.s x15, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x12, 0x37743b18421ecfd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fclass.s x12, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x9, 0x2b4e16bb61da75f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fclass.s x9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x12, 0xa491114e33a9e74c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fclass.s x12, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x9, 0xa7091edeefd1854c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fclass.s x9, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x4, 0x94a3f403cc341bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fclass.s x4, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x18, 0xdfb57bd21c2d7c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fclass.s x18, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x29, 0xc516528c1c643647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fclass.s x29, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x2, 0x8dec54fe39a71db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fclass.s x2, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x26, 0x4f390e72597ad78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fclass.s x26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x17, 0xf3f40a6d1289fb02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fclass.s x17, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x11, 0x27a524ba7f01aef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fclass.s x11, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x2, 0xccf172822cb4dd8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fclass.s x2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x14, 0x88c0cdbb370773ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac400b4cefc3178e # load x3 with value 0xac400b4cefc3178e
sw x3, 0(x2) # store 0xac400b4cefc3178e in memory
flw f0, 0(x2) # load 0xac400b4cefc3178e from memory into f0
fclass.s x14, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x6, 0x4494cb0f61e1d773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e6ead07d8debbb8 # load x3 with value 0x3e6ead07d8debbb8
sw x3, 0(x2) # store 0x3e6ead07d8debbb8 in memory
flw f1, 0(x2) # load 0x3e6ead07d8debbb8 from memory into f1
fclass.s x6, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x28, 0xf3d10cf23be5e2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbcddf3b10489591 # load x3 with value 0xbbcddf3b10489591
sw x3, 0(x2) # store 0xbbcddf3b10489591 in memory
flw f2, 0(x2) # load 0xbbcddf3b10489591 from memory into f2
fclass.s x28, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0x8d0b56296ec45fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa522c5b1f7cdcf85 # load x3 with value 0xa522c5b1f7cdcf85
sw x3, 0(x2) # store 0xa522c5b1f7cdcf85 in memory
flw f3, 0(x2) # load 0xa522c5b1f7cdcf85 from memory into f3
fclass.s x24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0x9a96dfcce8dd81dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae80a5bca0360232 # load x3 with value 0xae80a5bca0360232
sw x3, 0(x2) # store 0xae80a5bca0360232 in memory
flw f4, 0(x2) # load 0xae80a5bca0360232 from memory into f4
fclass.s x2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x19, 0xfeee046bb376fe61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e1fedccb00e246e # load x3 with value 0x8e1fedccb00e246e
sw x3, 0(x2) # store 0x8e1fedccb00e246e in memory
flw f5, 0(x2) # load 0x8e1fedccb00e246e from memory into f5
fclass.s x19, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x7, 0xc3741c5e0dfa18de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72482003eefbfa3e # load x3 with value 0x72482003eefbfa3e
sw x3, 0(x2) # store 0x72482003eefbfa3e in memory
flw f6, 0(x2) # load 0x72482003eefbfa3e from memory into f6
fclass.s x7, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0xa8ace3b3bd0dc3a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4864aff938e36c9e # load x3 with value 0x4864aff938e36c9e
sw x3, 0(x2) # store 0x4864aff938e36c9e in memory
flw f7, 0(x2) # load 0x4864aff938e36c9e from memory into f7
fclass.s x3, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x2, 0x73ef9bc3e6f47638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84d0c226838846a3 # load x3 with value 0x84d0c226838846a3
sw x3, 0(x2) # store 0x84d0c226838846a3 in memory
flw f8, 0(x2) # load 0x84d0c226838846a3 from memory into f8
fclass.s x2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x26, 0x132110889e0e3f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd22dc2ec6913649 # load x3 with value 0xfd22dc2ec6913649
sw x3, 0(x2) # store 0xfd22dc2ec6913649 in memory
flw f9, 0(x2) # load 0xfd22dc2ec6913649 from memory into f9
fclass.s x26, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x10, 0x4ff369af7402e4da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28ada896e22a8e63 # load x3 with value 0x28ada896e22a8e63
sw x3, 0(x2) # store 0x28ada896e22a8e63 in memory
flw f10, 0(x2) # load 0x28ada896e22a8e63 from memory into f10
fclass.s x10, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x18, 0x6ee58908a0ca0489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d12894cd701298d # load x3 with value 0x2d12894cd701298d
sw x3, 0(x2) # store 0x2d12894cd701298d in memory
flw f11, 0(x2) # load 0x2d12894cd701298d from memory into f11
fclass.s x18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x27, 0xae0c1bb31feecfe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a2bed8a9d5a7e9 # load x3 with value 0x9a2bed8a9d5a7e9
sw x3, 0(x2) # store 0x9a2bed8a9d5a7e9 in memory
flw f12, 0(x2) # load 0x9a2bed8a9d5a7e9 from memory into f12
fclass.s x27, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x28, 0x617093149e1f6aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e008aeb8877f037 # load x3 with value 0x7e008aeb8877f037
sw x3, 0(x2) # store 0x7e008aeb8877f037 in memory
flw f13, 0(x2) # load 0x7e008aeb8877f037 from memory into f13
fclass.s x28, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0xcf8e09662c105eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb7fde5717e1402e # load x3 with value 0xcb7fde5717e1402e
sw x3, 0(x2) # store 0xcb7fde5717e1402e in memory
flw f14, 0(x2) # load 0xcb7fde5717e1402e from memory into f14
fclass.s x25, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x11, 0xb25bee62a869cc34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbb3542b77e44f11 # load x3 with value 0xfbb3542b77e44f11
sw x3, 0(x2) # store 0xfbb3542b77e44f11 in memory
flw f15, 0(x2) # load 0xfbb3542b77e44f11 from memory into f15
fclass.s x11, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x29, 0x1bc1276b8fd67561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fb2b1db9c7c02a0 # load x3 with value 0x1fb2b1db9c7c02a0
sw x3, 0(x2) # store 0x1fb2b1db9c7c02a0 in memory
flw f16, 0(x2) # load 0x1fb2b1db9c7c02a0 from memory into f16
fclass.s x29, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x9, 0xbee1302eb639e3ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a0ec7729213da33 # load x3 with value 0x3a0ec7729213da33
sw x3, 0(x2) # store 0x3a0ec7729213da33 in memory
flw f17, 0(x2) # load 0x3a0ec7729213da33 from memory into f17
fclass.s x9, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x16, 0x6b07daa79e30d7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dc8674b4ccff11c # load x3 with value 0x9dc8674b4ccff11c
sw x3, 0(x2) # store 0x9dc8674b4ccff11c in memory
flw f18, 0(x2) # load 0x9dc8674b4ccff11c from memory into f18
fclass.s x16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x4, 0x97d5b07d13d18d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5446af8d8dd66e0d # load x3 with value 0x5446af8d8dd66e0d
sw x3, 0(x2) # store 0x5446af8d8dd66e0d in memory
flw f19, 0(x2) # load 0x5446af8d8dd66e0d from memory into f19
fclass.s x4, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x19, 0x125b43f975347dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf4ed161a2168d52 # load x3 with value 0xdf4ed161a2168d52
sw x3, 0(x2) # store 0xdf4ed161a2168d52 in memory
flw f20, 0(x2) # load 0xdf4ed161a2168d52 from memory into f20
fclass.s x19, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x5, 0x0e338dfff1e41b16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21c63d564b696af0 # load x3 with value 0x21c63d564b696af0
sw x3, 0(x2) # store 0x21c63d564b696af0 in memory
flw f21, 0(x2) # load 0x21c63d564b696af0 from memory into f21
fclass.s x5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0xfae8c5a9ca424602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31f15e30cabc50df # load x3 with value 0x31f15e30cabc50df
sw x3, 0(x2) # store 0x31f15e30cabc50df in memory
flw f22, 0(x2) # load 0x31f15e30cabc50df from memory into f22
fclass.s x29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x12, 0xb337a28fed075c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd39e4e7d3ad1a2e7 # load x3 with value 0xd39e4e7d3ad1a2e7
sw x3, 0(x2) # store 0xd39e4e7d3ad1a2e7 in memory
flw f23, 0(x2) # load 0xd39e4e7d3ad1a2e7 from memory into f23
fclass.s x12, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x31, 0xb22c18101f5a71a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0012266415dabf # load x3 with value 0xc0012266415dabf
sw x3, 0(x2) # store 0xc0012266415dabf in memory
flw f24, 0(x2) # load 0xc0012266415dabf from memory into f24
fclass.s x31, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x17, 0xb9fcdce29ee5b4fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d0e579178573373 # load x3 with value 0x8d0e579178573373
sw x3, 0(x2) # store 0x8d0e579178573373 in memory
flw f25, 0(x2) # load 0x8d0e579178573373 from memory into f25
fclass.s x17, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x9, 0xdf860009848018e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xade9e63d1397b48c # load x3 with value 0xade9e63d1397b48c
sw x3, 0(x2) # store 0xade9e63d1397b48c in memory
flw f26, 0(x2) # load 0xade9e63d1397b48c from memory into f26
fclass.s x9, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x1e56d365bfb999c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x843caca24f08f260 # load x3 with value 0x843caca24f08f260
sw x3, 0(x2) # store 0x843caca24f08f260 in memory
flw f27, 0(x2) # load 0x843caca24f08f260 from memory into f27
fclass.s x1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x27, 0x3f5062170bbcd2b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad0f985179769e68 # load x3 with value 0xad0f985179769e68
sw x3, 0(x2) # store 0xad0f985179769e68 in memory
flw f28, 0(x2) # load 0xad0f985179769e68 from memory into f28
fclass.s x27, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0xc5a1aad1e9999f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38d167e62559dafa # load x3 with value 0x38d167e62559dafa
sw x3, 0(x2) # store 0x38d167e62559dafa in memory
flw f29, 0(x2) # load 0x38d167e62559dafa from memory into f29
fclass.s x12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x6, 0xaec30c1665fd6094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x920d5fa3fa735311 # load x3 with value 0x920d5fa3fa735311
sw x3, 0(x2) # store 0x920d5fa3fa735311 in memory
flw f30, 0(x2) # load 0x920d5fa3fa735311 from memory into f30
fclass.s x6, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0x1e2f6989daecc290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fa7e236a5cfddf8 # load x3 with value 0x8fa7e236a5cfddf8
sw x3, 0(x2) # store 0x8fa7e236a5cfddf8 in memory
flw f31, 0(x2) # load 0x8fa7e236a5cfddf8 from memory into f31
fclass.s x25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
