///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.d.lu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.499798
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
li x21, 0x310ad3f5cb09cbae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x874c6dded131fd68 # load immediate value into integer register
fcvt.d.lu f21, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x2, 0x161a43578bbd42e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf1373432e015203d # load immediate value into integer register
fcvt.d.lu f2, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0x6cae641d0c532ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xed4bf7e272a26308 # load immediate value into integer register
fcvt.d.lu f21, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0x7e6fd310fbff8dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1fc49499aeb1564d # load immediate value into integer register
fcvt.d.lu f25, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x23, 0x2736d25efb209af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1fc2447ee1789940 # load immediate value into integer register
fcvt.d.lu f23, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x4, 0x7e7d7642866b533a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6eea5eada9d184bb # load immediate value into integer register
fcvt.d.lu f4, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x2c8237f983add2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4411459a66e88efb # load immediate value into integer register
fcvt.d.lu f31, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x6, 0x0895fd5821eba9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbcae1af3e1e78799 # load immediate value into integer register
fcvt.d.lu f6, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x30, 0x43c0afc3d11d4263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcd7bb70027f8e0dd # load immediate value into integer register
fcvt.d.lu f30, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0xce68446274aca1ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd4e84a8ae9a3dd62 # load immediate value into integer register
fcvt.d.lu f18, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xaca9f9716709c21b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8c977b8106d7c0d3 # load immediate value into integer register
fcvt.d.lu f8, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x11d38667e21078ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x74c54853f9b63de5 # load immediate value into integer register
fcvt.d.lu f31, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0xbd8e3e8c3db97ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x49a3d6878545fbdf # load immediate value into integer register
fcvt.d.lu f7, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0x8b4d2fd6cf8c7f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x07ad828a0b9d9995 # load immediate value into integer register
fcvt.d.lu f26, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0xfe02670f88c9fb41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x02997739b35734e6 # load immediate value into integer register
fcvt.d.lu f31, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xeb9471a17f13d647 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2cf685187ff5e58d # load immediate value into integer register
fcvt.d.lu f14, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0x0a5c695dd3215ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9685b82169eaa0ac # load immediate value into integer register
fcvt.d.lu f19, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0xda639b9a9cda1b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2d7fb27e3e211e57 # load immediate value into integer register
fcvt.d.lu f24, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x27, 0xff6bde76b8513d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x28009425c4a86fc2 # load immediate value into integer register
fcvt.d.lu f27, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x344e1642fae2c337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x61e047c068874ce8 # load immediate value into integer register
fcvt.d.lu f1, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x35602af8f951b95b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9f81cc50d4c0b7a2 # load immediate value into integer register
fcvt.d.lu f14, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0xfff82a0411e4b630 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x002025f36ba7f141 # load immediate value into integer register
fcvt.d.lu f27, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0x677ec9b11d3d6c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xba8bbd4996b601ae # load immediate value into integer register
fcvt.d.lu f19, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0xff941b573cd631e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc6eb61c4c0784730 # load immediate value into integer register
fcvt.d.lu f2, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0xb9fdc0140cc6dca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x58136c54a6ecf460 # load immediate value into integer register
fcvt.d.lu f5, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0x129e9a5c9a91954d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x35a24a023d3e0bc0 # load immediate value into integer register
fcvt.d.lu f11, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0xa2e73cd611f8b756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xadfc0ca751669a01 # load immediate value into integer register
fcvt.d.lu f14, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0xe875c2dfe0086d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb1bf99cc857ad0f1 # load immediate value into integer register
fcvt.d.lu f29, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0x38d7a1cdb934bbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb587bd64c83ec5f9 # load immediate value into integer register
fcvt.d.lu f24, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x7d911abf887ed9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xeabc506d2b126e1e # load immediate value into integer register
fcvt.d.lu f27, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x203047c1e99c10a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x14a77c2e698cb43c # load immediate value into integer register
fcvt.d.lu f22, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0x74da6cf68ad403db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x47e85a17acb2166c # load immediate value into integer register
fcvt.d.lu f29, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x230c02d4b77f7d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # load immediate value into integer register
fcvt.d.lu f18, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0xb0ab40f9340ca814 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000001 # load immediate value into integer register
fcvt.d.lu f18, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x10ea511a5d5a3c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # load immediate value into integer register
fcvt.d.lu f15, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0xebe57d11d39cd5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000 # load immediate value into integer register
fcvt.d.lu f4, x8
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0xada8181c66a89e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # load immediate value into integer register
fcvt.d.lu f15, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x1, 0xd173759aa40f5980 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.lu f1, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0xf0de9efed18bbe2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.lu f8, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0x852ad4a082cbc3a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.lu f18, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0x82dd890325526a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.lu f17, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0x0f60409ed7f0feca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.d.lu f25, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x1d8c7c2e9d2fd1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.lu f27, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x0cac332404b035fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # load immediate value into integer register
fcvt.d.lu f3, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x333eac739be315c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.lu f18, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xaf5e63c671c65657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.lu f10, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x29, 0x415c4180cd730fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # load immediate value into integer register
fcvt.d.lu f29, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0xa7c3feeea68af52a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # load immediate value into integer register
fcvt.d.lu f12, x4
# Testcase cp_frm
li x27, 0x001f9125aa3c32d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6a0598bf9c14819d # load immediate value into integer register
fcvt.d.lu f27, x2, dyn # perform operation
fcvt.d.lu f27, x2, rdn # perform operation
fcvt.d.lu f27, x2, rmm # perform operation
fcvt.d.lu f27, x2, rne # perform operation
fcvt.d.lu f27, x2, rtz # perform operation
fcvt.d.lu f27, x2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.d.lu f27, x2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.d.lu f27, x2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.d.lu f27, x2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.d.lu f27, x2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.d.lu f27, x2 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xed25be7d89ef7bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x378246ca548a0a28 # load immediate value into integer register
fcvt.d.lu f0, x3
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x6a8cd18a9540c4b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5ae2aed8a60b3865 # load immediate value into integer register
fcvt.d.lu f1, x20
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xbfb8a00aa7628e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61c449c455eac65d # load immediate value into integer register
fcvt.d.lu f2, x22
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x02da5fcbebb78267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x39282065829986dd # load immediate value into integer register
fcvt.d.lu f3, x19
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xdb231bb2943ce9c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc4f87d328756f4ab # load immediate value into integer register
fcvt.d.lu f4, x7
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xef29d4270403d1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x103467bd0e34fc81 # load immediate value into integer register
fcvt.d.lu f5, x30
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x94a47919eeb7c8af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2415dd6ccf20f0f3 # load immediate value into integer register
fcvt.d.lu f6, x19
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x686ac2acf82e56ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x250df875655e0881 # load immediate value into integer register
fcvt.d.lu f7, x18
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x5f9f391cdbe82545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfaecf479d8803237 # load immediate value into integer register
fcvt.d.lu f8, x5
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x0db33bfa76207ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3da12e28f6254400 # load immediate value into integer register
fcvt.d.lu f9, x15
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x259509d336b87bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x395fc4752c9e75c8 # load immediate value into integer register
fcvt.d.lu f10, x28
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfaf0e266326832f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xba7858f0e98a7210 # load immediate value into integer register
fcvt.d.lu f11, x5
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xc46963eeb3ce7c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x464114bd09710e2e # load immediate value into integer register
fcvt.d.lu f12, x8
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xdcdc68342cf904cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcdeb698a0794475d # load immediate value into integer register
fcvt.d.lu f13, x10
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x935badf3620a9028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe87d9c6eac4c37d5 # load immediate value into integer register
fcvt.d.lu f14, x27
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4f3428d02c096949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd58e5313d84694c0 # load immediate value into integer register
fcvt.d.lu f15, x12
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x6b27c3c27e7d4e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8a34b588cfdff2a9 # load immediate value into integer register
fcvt.d.lu f16, x15
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x5853730abc81c249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x892a23ab05f52772 # load immediate value into integer register
fcvt.d.lu f17, x10
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x48b2b1f251d928ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1cfc2e7943af0f71 # load immediate value into integer register
fcvt.d.lu f18, x4
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x94c07a60c1feddac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1f0830427d7482ec # load immediate value into integer register
fcvt.d.lu f19, x23
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x1a092f218050d0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x173844530773a52c # load immediate value into integer register
fcvt.d.lu f20, x2
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xd39d954cad930bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb397e083f261e8b3 # load immediate value into integer register
fcvt.d.lu f21, x16
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xa114ee06ec3b8ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3b32e10f0518f03b # load immediate value into integer register
fcvt.d.lu f22, x13
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd4bbe1ff9420ec14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9b8d0de05e16ae1c # load immediate value into integer register
fcvt.d.lu f23, x19
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xc95c92ef6fe0f1de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x16018c39d39e8b6b # load immediate value into integer register
fcvt.d.lu f24, x10
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x40f090510f9cf191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa8fba3e1e41b867f # load immediate value into integer register
fcvt.d.lu f25, x28
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb8c8c942791d6949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe38532e1641b14db # load immediate value into integer register
fcvt.d.lu f26, x20
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x3191e8569e342233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xedb976a3235295b6 # load immediate value into integer register
fcvt.d.lu f27, x11
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa252451becd9da50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7caab90539ab6c81 # load immediate value into integer register
fcvt.d.lu f28, x21
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x9d1a5cb75c07d3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc50f1496963565ef # load immediate value into integer register
fcvt.d.lu f29, x17
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x2fefb5e2c2582512 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa6c0c245a90ef5c8 # load immediate value into integer register
fcvt.d.lu f30, x16
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x6185fba4c3e03750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9e11ca40adc91553 # load immediate value into integer register
fcvt.d.lu f31, x28
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
