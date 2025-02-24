///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.s.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.711442
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


# Testcase cp_rs1 (Test source rs1 = x0)
li x5, 0x7f52fb3d9897abfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7059ee40f80658bc # load immediate value into integer register
fcvt.s.w f5, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0xb98fd6f6301dd441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeeec2fc0b734e998 # load immediate value into integer register
fcvt.s.w f20, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0x36e186213a14bf3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x59aa83ec48031221 # load immediate value into integer register
fcvt.s.w f18, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x67e34440f2c60f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9cd61abdb9d3e2b1 # load immediate value into integer register
fcvt.s.w f6, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0x0dd81b01775fb672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffb4c309937b7f66 # load immediate value into integer register
fcvt.s.w f6, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0xdc0248ce0b9962dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6e5807357225a3fc # load immediate value into integer register
fcvt.s.w f1, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0x6abb4b7d2219e6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x263a7f1629decbf4 # load immediate value into integer register
fcvt.s.w f8, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0xeddb3640357cf6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4f666fc7e932cf7a # load immediate value into integer register
fcvt.s.w f16, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x9161a58e8b20fd41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1c021ddcdb951975 # load immediate value into integer register
fcvt.s.w f4, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x179aead22724568f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfebb3bdc0ae55072 # load immediate value into integer register
fcvt.s.w f19, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0x041b028c72fe04ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe0992f95cfa5e94c # load immediate value into integer register
fcvt.s.w f29, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0xd6e69b5a0f00c534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbad7714e3a9284da # load immediate value into integer register
fcvt.s.w f14, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xd028ad6dd7a38267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4927d0f0752e4ee9 # load immediate value into integer register
fcvt.s.w f27, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0xc2a7ca966b05a7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x74ec86cbe9998163 # load immediate value into integer register
fcvt.s.w f21, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x6f069d4a5ccdfd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd05f0a4f2058d10a # load immediate value into integer register
fcvt.s.w f9, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x4b86d1fe510662f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9c8fb67f4073b196 # load immediate value into integer register
fcvt.s.w f31, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0x814c04b7542a8347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xec334321b4b0183f # load immediate value into integer register
fcvt.s.w f3, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x23, 0x3e0ab7c24d08f8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe6ee784e53044f28 # load immediate value into integer register
fcvt.s.w f23, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0x2599d1a6a8b547ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe03bf605e3bac0a9 # load immediate value into integer register
fcvt.s.w f31, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x31, 0x8c9deee109e12484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x185d7f8df2d0d834 # load immediate value into integer register
fcvt.s.w f31, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x9a40947e950330bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x89a08ff74b70d6f5 # load immediate value into integer register
fcvt.s.w f1, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0xba61d32fa68d3caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc4568c8d469bb494 # load immediate value into integer register
fcvt.s.w f12, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0x6c10c34a60065016 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcadac1477d3b283a # load immediate value into integer register
fcvt.s.w f5, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x16, 0x93952591f5b70837 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbac4f0fb6d0559c0 # load immediate value into integer register
fcvt.s.w f16, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0xfd1432c0e8b1c85f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe5a7ff0c1e38dc22 # load immediate value into integer register
fcvt.s.w f12, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0x412bf400f3006ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2aead9bb2c651ed8 # load immediate value into integer register
fcvt.s.w f17, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x1be5a729a12578d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfb38c3cf38f41eea # load immediate value into integer register
fcvt.s.w f1, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x7, 0xf41f95496a2d20e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfb6c981c58c829c0 # load immediate value into integer register
fcvt.s.w f7, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x26, 0xf5ba27d951c3f83d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9cac3d07d9ef9fe5 # load immediate value into integer register
fcvt.s.w f26, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x3073190f90080fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x51e90a978c23f64b # load immediate value into integer register
fcvt.s.w f24, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x20, 0xbd4625614b71399f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdd347a47a8e50e79 # load immediate value into integer register
fcvt.s.w f20, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x74d60bad3286cbe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xed0cab852b4b3ac3 # load immediate value into integer register
fcvt.s.w f17, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0xe2919f167e3c0375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # load immediate value into integer register
fcvt.s.w f1, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x26, 0xb2659aecf4b0a298 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # load immediate value into integer register
fcvt.s.w f26, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0xe454756591541b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # load immediate value into integer register
fcvt.s.w f8, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x124c176691b05f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # load immediate value into integer register
fcvt.s.w f21, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0xfb4b8c55b820a56b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # load immediate value into integer register
fcvt.s.w f26, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x9c18690c962d91f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.w f26, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x03510481171181dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.w f23, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xa69a3e9bf503b267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.w f8, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0x43952ef875906a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.w f24, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x22, 0x970f80fb0eea08aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.s.w f22, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x587bc72c631a742c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.w f9, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x4, 0x3fa377760b235d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # load immediate value into integer register
fcvt.s.w f4, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0x89f993276cd6fe69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.w f4, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x9f3efdd1337286e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.w f2, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x8140e1cf5abaa34f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # load immediate value into integer register
fcvt.s.w f14, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x84bc46f1fdd9dc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # load immediate value into integer register
fcvt.s.w f9, x11
# Testcase cp_frm
li x4, 0x452b802b7e12956b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xafeabdd813b116ce # load immediate value into integer register
fcvt.s.w f4, x11, dyn # perform operation
fcvt.s.w f4, x11, rdn # perform operation
fcvt.s.w f4, x11, rmm # perform operation
fcvt.s.w f4, x11, rne # perform operation
fcvt.s.w f4, x11, rtz # perform operation
fcvt.s.w f4, x11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.w f4, x11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.w f4, x11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.w f4, x11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.w f4, x11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.w f4, x11 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x1f48286de469451e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0b6724b4bfe8842f # load immediate value into integer register
fcvt.s.w f0, x1
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xc9884adac466851b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x92b479f521599b18 # load immediate value into integer register
fcvt.s.w f1, x28
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xf1cac8e191946ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf9fbc9ee88ca3cfc # load immediate value into integer register
fcvt.s.w f2, x28
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x6f27a484fc075da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb55c20ed4d29e404 # load immediate value into integer register
fcvt.s.w f3, x7
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x20592de3f8674a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xea4f6e67054a7ec1 # load immediate value into integer register
fcvt.s.w f4, x21
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x71843f02270403b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8d8bce7bdfbe86da # load immediate value into integer register
fcvt.s.w f5, x31
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xb521385ff507e127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc639b5e11a7b0a30 # load immediate value into integer register
fcvt.s.w f6, x14
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xa571b1a583f2b03e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7e632383436b2af1 # load immediate value into integer register
fcvt.s.w f7, x7
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x325cf8487764613c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7c6b10345024015a # load immediate value into integer register
fcvt.s.w f8, x31
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x5d2ccbb15b60a053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1475ed1b32bd36cc # load immediate value into integer register
fcvt.s.w f9, x10
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xea94279b649fa900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00d1fa3010ab2989 # load immediate value into integer register
fcvt.s.w f10, x13
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2b29f58613a3e202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x23ca1d96e729eeb8 # load immediate value into integer register
fcvt.s.w f11, x14
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xe2348051635a3f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x34f24bfc40efa3d9 # load immediate value into integer register
fcvt.s.w f12, x26
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x14c4e27afc3c7eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf103c2c4b3410c45 # load immediate value into integer register
fcvt.s.w f13, x24
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x1f836abe0bc9fc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x14eac7bb99a3e566 # load immediate value into integer register
fcvt.s.w f14, x24
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x247e0966d8f9587b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1a0555e5ee30e400 # load immediate value into integer register
fcvt.s.w f15, x6
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7d5f829d35db6635 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8854f59c8fa05bfc # load immediate value into integer register
fcvt.s.w f16, x7
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe48b1c7f3c291213 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0ef116d2626a93f0 # load immediate value into integer register
fcvt.s.w f17, x7
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xa50fa954895aca31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3253e92974c48b46 # load immediate value into integer register
fcvt.s.w f18, x19
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x57a002792cd20167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa80d256a822b3bb3 # load immediate value into integer register
fcvt.s.w f19, x25
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7a58ae466315f0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xea1c3d42aae1b29c # load immediate value into integer register
fcvt.s.w f20, x13
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x648f1adb354f1dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbab9eee19916121f # load immediate value into integer register
fcvt.s.w f21, x26
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x017c9b31227b8a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xefe27fba6601863f # load immediate value into integer register
fcvt.s.w f22, x8
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd3842ccc8634a1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa7073e17459ae20f # load immediate value into integer register
fcvt.s.w f23, x22
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9da5eacc1dd1bbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b08565f7ee7b349 # load immediate value into integer register
fcvt.s.w f24, x29
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x7af1ca3342d00ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5f4bcb0fca740a28 # load immediate value into integer register
fcvt.s.w f25, x2
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xc9ed70d4a7509f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0a806197d9d697d7 # load immediate value into integer register
fcvt.s.w f26, x8
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x24741d1922eb7f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x45570e8df1c08547 # load immediate value into integer register
fcvt.s.w f27, x17
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xbefcf129226d271e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8d7ece9bbcda7e00 # load immediate value into integer register
fcvt.s.w f28, x12
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x1d4323cdf7b8960f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0c3315fcd5f8bb63 # load immediate value into integer register
fcvt.s.w f29, x28
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf24734724833417b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5280eea726322105 # load immediate value into integer register
fcvt.s.w f30, x26
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x0f58a43b508f3948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc84bd74cc431ca17 # load immediate value into integer register
fcvt.s.w f31, x22
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
