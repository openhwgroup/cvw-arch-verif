///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.s.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.711937
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
li x31, 0x78b4796ad000f6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2d11a9213bdee3f5 # load immediate value into integer register
fcvt.s.wu f31, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x8, 0xcdf8df77468a07bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x939920cfa3ba0980 # load immediate value into integer register
fcvt.s.wu f8, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0xb994402cbd995fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x33b74c45c72e290e # load immediate value into integer register
fcvt.s.wu f23, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0xb7cb99c8807bd3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc6231890b15f14dc # load immediate value into integer register
fcvt.s.wu f25, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x13, 0xf72c3a0775485a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5b11da11c5a2af1a # load immediate value into integer register
fcvt.s.wu f13, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0x693379912bac0c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2048171d05f9edcf # load immediate value into integer register
fcvt.s.wu f27, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0xccd01f09bbc9a385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0c036fd45fdd6478 # load immediate value into integer register
fcvt.s.wu f23, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0xfb8d28a8780f0317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd69231f488a5c318 # load immediate value into integer register
fcvt.s.wu f21, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0xa1321fe00d49da08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7d722adf17925bc0 # load immediate value into integer register
fcvt.s.wu f4, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0x2b43ae6de3ccfb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1f00469ccc47e523 # load immediate value into integer register
fcvt.s.wu f20, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x17b8fd2a60ead109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a5aeebbd6f02bc4 # load immediate value into integer register
fcvt.s.wu f13, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x28c528be7a546339 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe5515c44c2673497 # load immediate value into integer register
fcvt.s.wu f9, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x29, 0x45eda2632cec94b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7f4c6e0eb3c2f13e # load immediate value into integer register
fcvt.s.wu f29, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x8ce0772af3f9a006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9441dc92157ccc2d # load immediate value into integer register
fcvt.s.wu f2, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0xc141b7802910c813 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb36b9db9934e49a # load immediate value into integer register
fcvt.s.wu f22, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0x5bd2836ae5f7b328 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x77f2f7f021a8b220 # load immediate value into integer register
fcvt.s.wu f30, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x23, 0xac12d5559a1613ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb2643d3c443cb4b6 # load immediate value into integer register
fcvt.s.wu f23, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0x697f235f96459f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x064e3f24b2927346 # load immediate value into integer register
fcvt.s.wu f24, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x27, 0x547903ca6d074c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbe82c7c64200b991 # load immediate value into integer register
fcvt.s.wu f27, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x1027ce6e4605c71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe1db4e08b89c171b # load immediate value into integer register
fcvt.s.wu f17, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0x09d26d51aef5beda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x409334591ae87c2c # load immediate value into integer register
fcvt.s.wu f25, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0xa3a9337661c4b807 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2fa0a6984c245119 # load immediate value into integer register
fcvt.s.wu f15, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0x592cf0daf93dd5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9305db5cc33afcbb # load immediate value into integer register
fcvt.s.wu f17, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x15a00cebaf44d005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd869d16758a7b818 # load immediate value into integer register
fcvt.s.wu f31, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x29, 0x6aa67629b12b6d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfa6bae21dddf96b4 # load immediate value into integer register
fcvt.s.wu f29, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x9dd3aa43dfd48d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x37c9e35bc1827602 # load immediate value into integer register
fcvt.s.wu f7, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x10, 0xc791ba71ba063e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9b4110e92c6d90fa # load immediate value into integer register
fcvt.s.wu f10, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0xa91e57ef9aed1894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x536f053389232124 # load immediate value into integer register
fcvt.s.wu f31, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xf2fea3a0f9e27899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2851bff59686d988 # load immediate value into integer register
fcvt.s.wu f12, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0x6c5f2d63f9ac148d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcf3a9cb3a0a8cf5a # load immediate value into integer register
fcvt.s.wu f17, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x8851deac1bb9b8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xcf3c4ad27785c3a0 # load immediate value into integer register
fcvt.s.wu f3, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0x457e4507dbff9a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9c07b043939604ea # load immediate value into integer register
fcvt.s.wu f20, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x95c86c0ec1fe009f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # load immediate value into integer register
fcvt.s.wu f10, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x6eabbadf5a3f4284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # load immediate value into integer register
fcvt.s.wu f10, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x6f2912790a865d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # load immediate value into integer register
fcvt.s.wu f19, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x424e4531dae254a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # load immediate value into integer register
fcvt.s.wu f28, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x45659baeab56b2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # load immediate value into integer register
fcvt.s.wu f1, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0xde91f937e24f44d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.wu f26, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x2a3a97974804e08c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.wu f30, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xee244845ab63b0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.wu f14, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x5, 0x032e2fc03c780e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.wu f5, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x21, 0x9abf822c55c827ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.s.wu f21, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0xcac2f26b7bfa8219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.wu f24, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x12c65d22a3fd133f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # load immediate value into integer register
fcvt.s.wu f28, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xd7c6850f193cfa63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.wu f13, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xa04dba9986c91d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.wu f12, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x16, 0x89335a3e26f03c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # load immediate value into integer register
fcvt.s.wu f16, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x11, 0x026cd205acc839ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # load immediate value into integer register
fcvt.s.wu f11, x15
# Testcase cp_frm
li x14, 0x6cc5e7d9c1abd98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x50e541a4c14c5432 # load immediate value into integer register
fcvt.s.wu f14, x24, dyn # perform operation
fcvt.s.wu f14, x24, rdn # perform operation
fcvt.s.wu f14, x24, rmm # perform operation
fcvt.s.wu f14, x24, rne # perform operation
fcvt.s.wu f14, x24, rtz # perform operation
fcvt.s.wu f14, x24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.wu f14, x24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.wu f14, x24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.wu f14, x24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.wu f14, x24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.wu f14, x24 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x3963fac6054b7e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9c9ea52a930649b7 # load immediate value into integer register
fcvt.s.wu f0, x16
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x156bbbb464fe431e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x61f053e9a3ee432a # load immediate value into integer register
fcvt.s.wu f1, x13
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x052f6209298a6c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4f9683b47dfca85f # load immediate value into integer register
fcvt.s.wu f2, x2
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xdcd4871b5ac7055e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf8852677cd543fee # load immediate value into integer register
fcvt.s.wu f3, x23
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4b53ad960d5ada34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5e8570c409d9e331 # load immediate value into integer register
fcvt.s.wu f4, x6
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa86518d5acc75b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe333b0d181e62f0e # load immediate value into integer register
fcvt.s.wu f5, x1
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xdf5e5ecf49554088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4d00b8976252e653 # load immediate value into integer register
fcvt.s.wu f6, x15
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1a4fc3b0d3fb1efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x410ae9d123631087 # load immediate value into integer register
fcvt.s.wu f7, x15
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x80784cbd8717fd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaa4f371d8df5953f # load immediate value into integer register
fcvt.s.wu f8, x8
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xb770b0b12921a26c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xede08c6a7fad3ae7 # load immediate value into integer register
fcvt.s.wu f9, x22
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb727be82099f0056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xebee1b493d805ce0 # load immediate value into integer register
fcvt.s.wu f10, x4
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xa342efffdf00ddca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd28a2ae7fe7bc39b # load immediate value into integer register
fcvt.s.wu f11, x30
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd7451ac7ef8bee98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1a1cd6b4091cb9b7 # load immediate value into integer register
fcvt.s.wu f12, x27
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x97ee6b843709094e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5d9f97da475c45f4 # load immediate value into integer register
fcvt.s.wu f13, x1
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x75563bfbbd766bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2da69ef3d9ebf0c9 # load immediate value into integer register
fcvt.s.wu f14, x3
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xee5ada4fbb3e7b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xda0f3fa1f67a5d15 # load immediate value into integer register
fcvt.s.wu f15, x6
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x058377d71ce4c457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2937970ba583d9da # load immediate value into integer register
fcvt.s.wu f16, x30
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x384f459900c97248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xed260a269d7c957f # load immediate value into integer register
fcvt.s.wu f17, x17
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9f088b89057874f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd0f68008ce577b8b # load immediate value into integer register
fcvt.s.wu f18, x20
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x1a2049c45aa9c50b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x604012d67eee5c9f # load immediate value into integer register
fcvt.s.wu f19, x8
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x4e9e76c5100e9195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3f68bc36232ce83f # load immediate value into integer register
fcvt.s.wu f20, x9
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x0e5ed6f2aa5ac2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x07410ea1a52b51ca # load immediate value into integer register
fcvt.s.wu f21, x6
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x25f197a0818ff874 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00574dd3bb46827f # load immediate value into integer register
fcvt.s.wu f22, x2
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x1595a0b4b14972c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x75d92b76c96108d7 # load immediate value into integer register
fcvt.s.wu f23, x7
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xbea90ad2c6fbeae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf41a8cb56e5b63a2 # load immediate value into integer register
fcvt.s.wu f24, x12
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x02a3a44ebbe9e957 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbf41f24972580265 # load immediate value into integer register
fcvt.s.wu f25, x24
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0defe94f39cafeec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x147ca2426d8ad56f # load immediate value into integer register
fcvt.s.wu f26, x15
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x543e4d0f0fc76ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8ac0d85791aea131 # load immediate value into integer register
fcvt.s.wu f27, x29
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x06e305b806d76646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x63a0b73b9b544082 # load immediate value into integer register
fcvt.s.wu f28, x31
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xa847251351cf27c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9830c33ba2fc8314 # load immediate value into integer register
fcvt.s.wu f29, x26
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x95c1c116f03effca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x826c56094802ccfe # load immediate value into integer register
fcvt.s.wu f30, x4
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x38fe6a2885f9f911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf239d2a1968c04ae # load immediate value into integer register
fcvt.s.wu f31, x17
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
