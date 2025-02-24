///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.h.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.538990
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
li x16, 0xd6c40680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3b0ae06f # load immediate value into integer register
fcvt.h.wu f16, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0x7fdb71a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe12b87c4 # load immediate value into integer register
fcvt.h.wu f20, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x6, 0x137198b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x19444e37 # load immediate value into integer register
fcvt.h.wu f6, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0x7fa86810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x174a6ea8 # load immediate value into integer register
fcvt.h.wu f11, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x98620f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8528b639 # load immediate value into integer register
fcvt.h.wu f11, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x1, 0x2ecab814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x84b15f45 # load immediate value into integer register
fcvt.h.wu f1, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0xc06a58cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x558a6572 # load immediate value into integer register
fcvt.h.wu f15, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x21, 0x888ceaef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd80f6c8c # load immediate value into integer register
fcvt.h.wu f21, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x4e51aed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa2200f0e # load immediate value into integer register
fcvt.h.wu f15, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x1, 0xf7a33f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x78a39eaf # load immediate value into integer register
fcvt.h.wu f1, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0xaaae6dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb8d0dc7f # load immediate value into integer register
fcvt.h.wu f25, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0xa20292d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a312dda # load immediate value into integer register
fcvt.h.wu f1, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x94477ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x048634d4 # load immediate value into integer register
fcvt.h.wu f18, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0xa9a08eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb31807e8 # load immediate value into integer register
fcvt.h.wu f24, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x03c6c996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9c97aff0 # load immediate value into integer register
fcvt.h.wu f17, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x486c6643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb859e411 # load immediate value into integer register
fcvt.h.wu f26, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xbfac2cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9b74109a # load immediate value into integer register
fcvt.h.wu f2, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0xef208faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xedb5f584 # load immediate value into integer register
fcvt.h.wu f5, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x1ebdfc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x782798cf # load immediate value into integer register
fcvt.h.wu f4, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0x85e7c9bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa95d27b1 # load immediate value into integer register
fcvt.h.wu f12, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x044e306a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x23f43936 # load immediate value into integer register
fcvt.h.wu f22, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x5d2d95f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3e02a8f9 # load immediate value into integer register
fcvt.h.wu f7, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x152b13b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x83d4013b # load immediate value into integer register
fcvt.h.wu f9, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0x4ff32ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9e0c8f29 # load immediate value into integer register
fcvt.h.wu f19, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x22, 0x75b6d72b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaa39894f # load immediate value into integer register
fcvt.h.wu f22, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0xe3a6a854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x78578dbf # load immediate value into integer register
fcvt.h.wu f3, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x24, 0xb0e5d5b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x28320765 # load immediate value into integer register
fcvt.h.wu f24, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x4faa01ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2ed23103 # load immediate value into integer register
fcvt.h.wu f31, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0xb552b4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x157ecbe1 # load immediate value into integer register
fcvt.h.wu f29, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0x87beae65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe9e65d88 # load immediate value into integer register
fcvt.h.wu f30, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x20, 0xe2e5f5e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1d58ec98 # load immediate value into integer register
fcvt.h.wu f20, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0xe677c1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3dec4d89 # load immediate value into integer register
fcvt.h.wu f22, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0xabe2d51b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # load immediate value into integer register
fcvt.h.wu f7, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x32b12b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # load immediate value into integer register
fcvt.h.wu f22, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0xc9615f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000002 # load immediate value into integer register
fcvt.h.wu f30, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x00c94eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000000 # load immediate value into integer register
fcvt.h.wu f2, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x6, 0xc9871387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # load immediate value into integer register
fcvt.h.wu f6, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x679ff7b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # load immediate value into integer register
fcvt.h.wu f28, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0xde68c25f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # load immediate value into integer register
fcvt.h.wu f19, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x269186f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # load immediate value into integer register
fcvt.h.wu f11, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x1c6af43a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # load immediate value into integer register
fcvt.h.wu f15, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x4, 0xacbdf90d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # load immediate value into integer register
fcvt.h.wu f4, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x6, 0x96da6b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # load immediate value into integer register
fcvt.h.wu f6, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x709c9286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # load immediate value into integer register
fcvt.h.wu f10, x7
# Testcase cp_frm
li x7, 0xf6db7812 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0fb1d0b4 # load immediate value into integer register
fcvt.h.wu f7, x3, dyn # perform operation
fcvt.h.wu f7, x3, rdn # perform operation
fcvt.h.wu f7, x3, rmm # perform operation
fcvt.h.wu f7, x3, rne # perform operation
fcvt.h.wu f7, x3, rtz # perform operation
fcvt.h.wu f7, x3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.wu f7, x3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.wu f7, x3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.wu f7, x3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.wu f7, x3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.wu f7, x3 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x90b8ca41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xad473155 # load immediate value into integer register
fcvt.h.wu f0, x21
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xb06a00c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x82ae98ac # load immediate value into integer register
fcvt.h.wu f1, x18
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x93206f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xae02df80 # load immediate value into integer register
fcvt.h.wu f2, x5
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1aa40ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5549c181 # load immediate value into integer register
fcvt.h.wu f3, x21
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xce548b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3d45483e # load immediate value into integer register
fcvt.h.wu f4, x3
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x90820414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x02c25881 # load immediate value into integer register
fcvt.h.wu f5, x24
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x6e89f06e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0c34e71e # load immediate value into integer register
fcvt.h.wu f6, x5
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xb42630b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfda175cb # load immediate value into integer register
fcvt.h.wu f7, x9
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xd6e50144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2e55be9a # load immediate value into integer register
fcvt.h.wu f8, x30
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xefdae8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x45929690 # load immediate value into integer register
fcvt.h.wu f9, x8
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc63a2306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf9048855 # load immediate value into integer register
fcvt.h.wu f10, x2
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x1b39918a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x81443233 # load immediate value into integer register
fcvt.h.wu f11, x2
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x3cad3731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x73bf569d # load immediate value into integer register
fcvt.h.wu f12, x25
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x17893179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa979bde5 # load immediate value into integer register
fcvt.h.wu f13, x29
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x1347a309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x599e4fd6 # load immediate value into integer register
fcvt.h.wu f14, x8
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xbb0fc067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x66129b44 # load immediate value into integer register
fcvt.h.wu f15, x13
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x4e2650a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd6c6683a # load immediate value into integer register
fcvt.h.wu f16, x31
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x8ba2eae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x87885194 # load immediate value into integer register
fcvt.h.wu f17, x28
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xaeb91832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x163ff863 # load immediate value into integer register
fcvt.h.wu f18, x7
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x31ff8722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x93020afd # load immediate value into integer register
fcvt.h.wu f19, x28
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf624bd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6e52f310 # load immediate value into integer register
fcvt.h.wu f20, x17
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9ce0aa74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc880e56a # load immediate value into integer register
fcvt.h.wu f21, x2
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xad46eb2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x41d21106 # load immediate value into integer register
fcvt.h.wu f22, x21
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd54ffc99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x48eabd25 # load immediate value into integer register
fcvt.h.wu f23, x19
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4ed9d11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc12b4aeb # load immediate value into integer register
fcvt.h.wu f24, x22
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x0fab62dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbced5e61 # load immediate value into integer register
fcvt.h.wu f25, x14
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x3aa9f0d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf2ced306 # load immediate value into integer register
fcvt.h.wu f26, x28
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x95d117c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf99f35bf # load immediate value into integer register
fcvt.h.wu f27, x16
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc0fc235b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xac5b839f # load immediate value into integer register
fcvt.h.wu f28, x3
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x7e5677c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ed60b3a # load immediate value into integer register
fcvt.h.wu f29, x23
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x0658c23f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x02306a67 # load immediate value into integer register
fcvt.h.wu f30, x12
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x6ed5417d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x45353819 # load immediate value into integer register
fcvt.h.wu f31, x20
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
