///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.h.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.041757
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
li x22, 0xd64b4c03ce44434a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe3cb802b7136e15b # load immediate value into integer register
fcvt.h.w f22, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0x63deace5aebbed62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5f3540de3d197fda # load immediate value into integer register
fcvt.h.w f20, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0x13b2b4137b27bc07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe624e640e9c4b961 # load immediate value into integer register
fcvt.h.w f26, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x9bdafa9ee7f6dd55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe87052852b2aab21 # load immediate value into integer register
fcvt.h.w f6, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x2, 0x86dbe80c6b569d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbceb8840e2704972 # load immediate value into integer register
fcvt.h.w f2, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x22, 0x4f4e9e9e4b72ebc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0c59de2f844684d8 # load immediate value into integer register
fcvt.h.w f22, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x24, 0x57d6c8d1a71f8370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x14ad72e1c49d8dff # load immediate value into integer register
fcvt.h.w f24, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x8448565b62ae0799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x09bd2d3394303980 # load immediate value into integer register
fcvt.h.w f30, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x399aefa844e6db1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9fcc335c7d7f94e8 # load immediate value into integer register
fcvt.h.w f23, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0x89efdbf401cd517f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf34d01f396df65b7 # load immediate value into integer register
fcvt.h.w f24, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x3cc3a6b826eb5bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5a32e2fb766094ee # load immediate value into integer register
fcvt.h.w f12, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0xdfcd51193ba1eead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbb267b4557e114c6 # load immediate value into integer register
fcvt.h.w f6, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0xdb3a50b79954ef17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1c594ed4d080ed5f # load immediate value into integer register
fcvt.h.w f4, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0xe168fe3ff2efac71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf64561fd52817c35 # load immediate value into integer register
fcvt.h.w f27, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0xdba86cb11718591a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf222afa1e4d2eab9 # load immediate value into integer register
fcvt.h.w f1, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x17, 0x5ca79da6aee1ef96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe8d63e66970633e2 # load immediate value into integer register
fcvt.h.w f17, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0x4c20dd5ff10b42e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x72ef20c2bb077303 # load immediate value into integer register
fcvt.h.w f11, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0xd527fa5c03a91e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x294f86e1a75455d3 # load immediate value into integer register
fcvt.h.w f28, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xf67ee753e45fd231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x18bc65d611300a88 # load immediate value into integer register
fcvt.h.w f20, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xb603ef717e959db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x589375973e7726a8 # load immediate value into integer register
fcvt.h.w f10, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x17, 0xe3f0aa10af4f57de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xae17185b3f4a6167 # load immediate value into integer register
fcvt.h.w f17, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0x8f6c473850f6968b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x74bb3a70e8f83e86 # load immediate value into integer register
fcvt.h.w f22, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x26, 0xfdd5bf1fb57b4429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0a6f0ea5477d7d83 # load immediate value into integer register
fcvt.h.w f26, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0xa8e099d3cf9455e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2ed64a22f2050793 # load immediate value into integer register
fcvt.h.w f11, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0xb553d472820cffa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa955314633da5199 # load immediate value into integer register
fcvt.h.w f10, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0xd302aa2281229a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4c929e3852980d61 # load immediate value into integer register
fcvt.h.w f18, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x7891c620b3afc8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xce3880a24d7f0d59 # load immediate value into integer register
fcvt.h.w f21, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x7869f8f8ab629fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x51bad305064d2ffc # load immediate value into integer register
fcvt.h.w f22, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x0ce6ef26b7861dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa982e3c4c84cb377 # load immediate value into integer register
fcvt.h.w f23, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0xa35152775c6f835f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc3b9071a672eeb3b # load immediate value into integer register
fcvt.h.w f10, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0xe1a42c31b5334300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x632e7584c506a9f0 # load immediate value into integer register
fcvt.h.w f1, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0x7d0e1e792d94f283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x43a5ede37e67ac3a # load immediate value into integer register
fcvt.h.w f24, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0xdf4c771d65c73a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000000 # load immediate value into integer register
fcvt.h.w f3, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x96d9a12411ab5024 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # load immediate value into integer register
fcvt.h.w f8, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x542422c578d5f194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # load immediate value into integer register
fcvt.h.w f25, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x9e27547bd66a6682 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # load immediate value into integer register
fcvt.h.w f13, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x3cac1274108cb63e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # load immediate value into integer register
fcvt.h.w f27, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x23, 0x9bc3c5583788a002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.w f23, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0xd9b73a2ccc778f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.w f11, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0x23428de91d056012 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.w f3, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x28, 0x9751a02dfeb22eea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.w f28, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x4, 0x76fa8df5767e7cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.h.w f4, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xb4aa2ffb64d35715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.w f22, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x8e21bf8793dabf17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # load immediate value into integer register
fcvt.h.w f8, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x4, 0xc908ccc157e259da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.w f4, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0x2331247a9e0d99f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.w f26, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0xdba112694d8dafd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # load immediate value into integer register
fcvt.h.w f31, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x27, 0x0aa6e06effa08987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # load immediate value into integer register
fcvt.h.w f27, x7
# Testcase cp_frm
li x29, 0x81ac2babf37f87da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9dc8e4413a864e9a # load immediate value into integer register
fcvt.h.w f29, x11, dyn # perform operation
fcvt.h.w f29, x11, rdn # perform operation
fcvt.h.w f29, x11, rmm # perform operation
fcvt.h.w f29, x11, rne # perform operation
fcvt.h.w f29, x11, rtz # perform operation
fcvt.h.w f29, x11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.w f29, x11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.w f29, x11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.w f29, x11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.w f29, x11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.w f29, x11 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xae0511265492bf29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7c88bd2790808555 # load immediate value into integer register
fcvt.h.w f0, x10
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x49700b78f0b9faab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaf85c53ef707d238 # load immediate value into integer register
fcvt.h.w f1, x1
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x983705df06bedd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa307cebf05efab16 # load immediate value into integer register
fcvt.h.w f2, x22
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xa189daf5e9f0d1a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2e82040f11b4ff5a # load immediate value into integer register
fcvt.h.w f3, x3
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2e067c00c3fbd5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1c4b3d928538814b # load immediate value into integer register
fcvt.h.w f4, x7
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x4721431373cce65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x130cc87f54b9e7dd # load immediate value into integer register
fcvt.h.w f5, x27
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x688c1b3ae213abd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x702fb1ce6417f350 # load immediate value into integer register
fcvt.h.w f6, x13
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x6987b65a8f726a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5d2c11d9f9702c95 # load immediate value into integer register
fcvt.h.w f7, x4
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa1e5c500580441c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbe2959a957a890c2 # load immediate value into integer register
fcvt.h.w f8, x27
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x60519d8072eadf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x277043decab7dfac # load immediate value into integer register
fcvt.h.w f9, x23
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd61888eed3f86bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6a25727de15314b9 # load immediate value into integer register
fcvt.h.w f10, x7
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x48592f0bd30e794d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9633c02d0e6a691b # load immediate value into integer register
fcvt.h.w f11, x2
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x60a843adc9f85c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8feee252b0e8be6a # load immediate value into integer register
fcvt.h.w f12, x10
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x607ad7b2e34c387f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2f2edcc5c997cef0 # load immediate value into integer register
fcvt.h.w f13, x7
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x8e807d32f7bc432e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2ac25244cd45f2da # load immediate value into integer register
fcvt.h.w f14, x25
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x788d8db334efd672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x439347b1efe1695c # load immediate value into integer register
fcvt.h.w f15, x20
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x50c3783eb7ae9b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x38132c3faab17d16 # load immediate value into integer register
fcvt.h.w f16, x28
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xdc0aeba4cedec708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x509db8bdec988354 # load immediate value into integer register
fcvt.h.w f17, x19
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x21645a8ee057e07b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x03cc0db172421e0b # load immediate value into integer register
fcvt.h.w f18, x31
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x0efac750617bf32b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7847bc594b59f81f # load immediate value into integer register
fcvt.h.w f19, x25
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x9f44702eb5c038a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd972cfd0f5daa015 # load immediate value into integer register
fcvt.h.w f20, x21
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf3b40c79d7c7f0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x26cff130d2da62fd # load immediate value into integer register
fcvt.h.w f21, x31
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x82d17f2137779c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xad24071c92f78c36 # load immediate value into integer register
fcvt.h.w f22, x20
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x49bddfb56ebbc6e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdd23041a508bb525 # load immediate value into integer register
fcvt.h.w f23, x22
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x205674c55467fbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x930133381b7f4d76 # load immediate value into integer register
fcvt.h.w f24, x15
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfebd59bafa44497c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x544efc27f037072b # load immediate value into integer register
fcvt.h.w f25, x22
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbfe0c2bdde8f6cec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x79ff3480b62dc479 # load immediate value into integer register
fcvt.h.w f26, x4
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xe4707a587ae5da69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc541cb0fc90a1b0f # load immediate value into integer register
fcvt.h.w f27, x12
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xf1c81ae7da9e5614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x010877660323aeeb # load immediate value into integer register
fcvt.h.w f28, x17
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x067ffbb1f48937be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x35872311e18a5b10 # load immediate value into integer register
fcvt.h.w f29, x24
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd7d62539b6e022ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd66a89ed0e9b98b9 # load immediate value into integer register
fcvt.h.w f30, x28
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd954511c1d2798a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaa099b655ad11a65 # load immediate value into integer register
fcvt.h.w f31, x10
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
