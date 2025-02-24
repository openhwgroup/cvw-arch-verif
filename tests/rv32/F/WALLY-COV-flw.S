///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-flw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.201105
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


# Testcase cp_rs1 (Test source rs1 = x1)
li x7, 0x64febfa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, -950 # sub immediate from rs1 to counter offset
li x24, 0x1b1bee9b # load x3 with value 0x1b1bee9b
sw x24, 950(x1) # store 0x1b1bee9b in memory
flw f7, 950(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x04f37eee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 827 # sub immediate from rs1 to counter offset
li x1, 0x9ac0d093 # load x3 with value 0x9ac0d093
sw x1, -827(x2) # store 0x9ac0d093 in memory
flw f11, -827(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x14, 0x3d5b9687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1756 # sub immediate from rs1 to counter offset
li x1, 0xe3656541 # load x3 with value 0xe3656541
sw x1, 1756(x3) # store 0xe3656541 in memory
flw f14, 1756(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x0cacf011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 265 # sub immediate from rs1 to counter offset
li x1, 0x7f27a50d # load x3 with value 0x7f27a50d
sw x1, -265(x4) # store 0x7f27a50d in memory
flw f1, -265(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x19, 0x503c62fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, -752 # sub immediate from rs1 to counter offset
li x1, 0xcee87ee0 # load x3 with value 0xcee87ee0
sw x1, 752(x5) # store 0xcee87ee0 in memory
flw f19, 752(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0xf7f9387b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1595 # sub immediate from rs1 to counter offset
li x29, 0x66948232 # load x3 with value 0x66948232
sw x29, -1595(x6) # store 0x66948232 in memory
flw f15, -1595(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x15, 0xb4a7ef3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -1718 # sub immediate from rs1 to counter offset
li x1, 0x9abc1315 # load x3 with value 0x9abc1315
sw x1, 1718(x7) # store 0x9abc1315 in memory
flw f15, 1718(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xfebe3b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -70 # sub immediate from rs1 to counter offset
li x1, 0x28d041ee # load x3 with value 0x28d041ee
sw x1, 70(x8) # store 0x28d041ee in memory
flw f10, 70(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x2, 0x65201751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 312 # sub immediate from rs1 to counter offset
li x1, 0x03e78ed8 # load x3 with value 0x03e78ed8
sw x1, -312(x9) # store 0x03e78ed8 in memory
flw f2, -312(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x7dfd8e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, 553 # sub immediate from rs1 to counter offset
li x1, 0x359478a7 # load x3 with value 0x359478a7
sw x1, -553(x10) # store 0x359478a7 in memory
flw f14, -553(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x47ef6f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -1683 # sub immediate from rs1 to counter offset
li x1, 0x7839fcc1 # load x3 with value 0x7839fcc1
sw x1, 1683(x11) # store 0x7839fcc1 in memory
flw f4, 1683(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x5bdbef7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 841 # sub immediate from rs1 to counter offset
li x1, 0x65553a85 # load x3 with value 0x65553a85
sw x1, -841(x12) # store 0x65553a85 in memory
flw f8, -841(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x77825a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, 1527 # sub immediate from rs1 to counter offset
li x1, 0x753a3711 # load x3 with value 0x753a3711
sw x1, -1527(x13) # store 0x753a3711 in memory
flw f7, -1527(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x9b561e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, 734 # sub immediate from rs1 to counter offset
li x1, 0x5bcbebc6 # load x3 with value 0x5bcbebc6
sw x1, -734(x14) # store 0x5bcbebc6 in memory
flw f9, -734(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0xf0f7aac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1929 # sub immediate from rs1 to counter offset
li x1, 0xdc4b0c8f # load x3 with value 0xdc4b0c8f
sw x1, -1929(x15) # store 0xdc4b0c8f in memory
flw f1, -1929(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x22, 0x78c17315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, 376 # sub immediate from rs1 to counter offset
li x1, 0x3a6bf358 # load x3 with value 0x3a6bf358
sw x1, -376(x16) # store 0x3a6bf358 in memory
flw f22, -376(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0xf1b97e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, 851 # sub immediate from rs1 to counter offset
li x1, 0xa994c8ad # load x3 with value 0xa994c8ad
sw x1, -851(x17) # store 0xa994c8ad in memory
flw f11, -851(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0xc1ab6b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 775 # sub immediate from rs1 to counter offset
li x1, 0x51e06df0 # load x3 with value 0x51e06df0
sw x1, -775(x18) # store 0x51e06df0 in memory
flw f25, -775(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0x090d812e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 1933 # sub immediate from rs1 to counter offset
li x1, 0x3748449b # load x3 with value 0x3748449b
sw x1, -1933(x19) # store 0x3748449b in memory
flw f26, -1933(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x17, 0xc0f418b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, 774 # sub immediate from rs1 to counter offset
li x1, 0xa3ff3c56 # load x3 with value 0xa3ff3c56
sw x1, -774(x20) # store 0xa3ff3c56 in memory
flw f17, -774(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x00e2edcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -24 # sub immediate from rs1 to counter offset
li x1, 0x1f61c0fe # load x3 with value 0x1f61c0fe
sw x1, 24(x21) # store 0x1f61c0fe in memory
flw f20, 24(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xb69dbf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -1478 # sub immediate from rs1 to counter offset
li x1, 0xee754a26 # load x3 with value 0xee754a26
sw x1, 1478(x22) # store 0xee754a26 in memory
flw f11, 1478(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0xfa28eb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -2030 # sub immediate from rs1 to counter offset
li x1, 0x103129ec # load x3 with value 0x103129ec
sw x1, 2030(x23) # store 0x103129ec in memory
flw f31, 2030(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0xdc95b8ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 1828 # sub immediate from rs1 to counter offset
li x1, 0x76685e40 # load x3 with value 0x76685e40
sw x1, -1828(x24) # store 0x76685e40 in memory
flw f15, -1828(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x15, 0x8ff81129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -1488 # sub immediate from rs1 to counter offset
li x1, 0xe565262c # load x3 with value 0xe565262c
sw x1, 1488(x25) # store 0xe565262c in memory
flw f15, 1488(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xfa4ee987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, -565 # sub immediate from rs1 to counter offset
li x1, 0xf537d4d7 # load x3 with value 0xf537d4d7
sw x1, 565(x26) # store 0xf537d4d7 in memory
flw f3, 565(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0x9d1c1211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1722 # sub immediate from rs1 to counter offset
li x1, 0xafedbd3d # load x3 with value 0xafedbd3d
sw x1, 1722(x27) # store 0xafedbd3d in memory
flw f29, 1722(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0xd8c3b303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, -106 # sub immediate from rs1 to counter offset
li x1, 0xe1219c83 # load x3 with value 0xe1219c83
sw x1, 106(x28) # store 0xe1219c83 in memory
flw f21, 106(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0xa1473c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -1877 # sub immediate from rs1 to counter offset
li x1, 0xa556a23e # load x3 with value 0xa556a23e
sw x1, 1877(x29) # store 0xa556a23e in memory
flw f26, 1877(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0xeb4c4036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 1498 # sub immediate from rs1 to counter offset
li x1, 0xf451c61b # load x3 with value 0xf451c61b
sw x1, -1498(x30) # store 0xf451c61b in memory
flw f12, -1498(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0xd3667986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 1980 # sub immediate from rs1 to counter offset
li x1, 0x423be2cd # load x3 with value 0x423be2cd
sw x1, -1980(x31) # store 0x423be2cd in memory
flw f24, -1980(x31) # perform operation

# Testcase cp_imm_zero
li x11, 0xbb248d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
li x1, 0xfb6ca3a0 # load x3 with value 0xfb6ca3a0
sw x1, 0(x12) # store 0xfb6ca3a0 in memory
flw f11, 0(x12) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe0876df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1549 # sub immediate from rs1 to counter offset
li x1, 0xdf1f5dfc # load x3 with value 0xdf1f5dfc
sw x1, 1549(x27) # store 0xdf1f5dfc in memory
flw f0, 1549(x27) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x9321c901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 1938 # sub immediate from rs1 to counter offset
li x1, 0x07dbf93b # load x3 with value 0x07dbf93b
sw x1, -1938(x31) # store 0x07dbf93b in memory
flw f1, -1938(x31) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xdd545511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -1018 # sub immediate from rs1 to counter offset
li x1, 0xe32ad952 # load x3 with value 0xe32ad952
sw x1, 1018(x21) # store 0xe32ad952 in memory
flw f2, 1018(x21) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x52981dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 992 # sub immediate from rs1 to counter offset
li x1, 0x8fc0b503 # load x3 with value 0x8fc0b503
sw x1, -992(x19) # store 0x8fc0b503 in memory
flw f3, -992(x19) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x25a7fec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -579 # sub immediate from rs1 to counter offset
li x1, 0x77d0126d # load x3 with value 0x77d0126d
sw x1, 579(x14) # store 0x77d0126d in memory
flw f4, 579(x14) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x18f97530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 242 # sub immediate from rs1 to counter offset
li x1, 0x19e4eec5 # load x3 with value 0x19e4eec5
sw x1, -242(x31) # store 0x19e4eec5 in memory
flw f5, -242(x31) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x21e0e283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 821 # sub immediate from rs1 to counter offset
li x1, 0x94ebe749 # load x3 with value 0x94ebe749
sw x1, -821(x24) # store 0x94ebe749 in memory
flw f6, -821(x24) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x9806ea1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 1891 # sub immediate from rs1 to counter offset
li x1, 0xd788d1fd # load x3 with value 0xd788d1fd
sw x1, -1891(x26) # store 0xd788d1fd in memory
flw f7, -1891(x26) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x1d567cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -1404 # sub immediate from rs1 to counter offset
li x1, 0xf05ba0c9 # load x3 with value 0xf05ba0c9
sw x1, 1404(x10) # store 0xf05ba0c9 in memory
flw f8, 1404(x10) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xd34c305e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -1248 # sub immediate from rs1 to counter offset
li x1, 0xf732747b # load x3 with value 0xf732747b
sw x1, 1248(x21) # store 0xf732747b in memory
flw f9, 1248(x21) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x01d0f828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -1029 # sub immediate from rs1 to counter offset
li x1, 0x9dafa7fa # load x3 with value 0x9dafa7fa
sw x1, 1029(x30) # store 0x9dafa7fa in memory
flw f10, 1029(x30) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x4deb8f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 1960 # sub immediate from rs1 to counter offset
li x1, 0x39b4c008 # load x3 with value 0x39b4c008
sw x1, -1960(x31) # store 0x39b4c008 in memory
flw f11, -1960(x31) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xdd9939f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -978 # sub immediate from rs1 to counter offset
li x1, 0xf51c3456 # load x3 with value 0xf51c3456
sw x1, 978(x22) # store 0xf51c3456 in memory
flw f12, 978(x22) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xfe107a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -1254 # sub immediate from rs1 to counter offset
li x1, 0x4cd2bd8d # load x3 with value 0x4cd2bd8d
sw x1, 1254(x18) # store 0x4cd2bd8d in memory
flw f13, 1254(x18) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x08d093f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, -1564 # sub immediate from rs1 to counter offset
li x1, 0x0b84de49 # load x3 with value 0x0b84de49
sw x1, 1564(x16) # store 0x0b84de49 in memory
flw f14, 1564(x16) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xe4f4d09f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -346 # sub immediate from rs1 to counter offset
li x1, 0xf446f8a8 # load x3 with value 0xf446f8a8
sw x1, 346(x11) # store 0xf446f8a8 in memory
flw f15, 346(x11) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xe6e83a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 280 # sub immediate from rs1 to counter offset
li x1, 0x6eb82439 # load x3 with value 0x6eb82439
sw x1, -280(x22) # store 0x6eb82439 in memory
flw f16, -280(x22) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xccb74329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -1449 # sub immediate from rs1 to counter offset
li x1, 0xecec6f6d # load x3 with value 0xecec6f6d
sw x1, 1449(x18) # store 0xecec6f6d in memory
flw f17, 1449(x18) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfc9eb82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 946 # sub immediate from rs1 to counter offset
li x1, 0x66197eef # load x3 with value 0x66197eef
sw x1, -946(x28) # store 0x66197eef in memory
flw f18, -946(x28) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe30aa7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -499 # sub immediate from rs1 to counter offset
li x1, 0x262ac6fb # load x3 with value 0x262ac6fb
sw x1, 499(x8) # store 0x262ac6fb in memory
flw f19, 499(x8) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xc770d6da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, -1803 # sub immediate from rs1 to counter offset
li x1, 0x0182a536 # load x3 with value 0x0182a536
sw x1, 1803(x16) # store 0x0182a536 in memory
flw f20, 1803(x16) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xded063ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1081 # sub immediate from rs1 to counter offset
li x1, 0xda39745c # load x3 with value 0xda39745c
sw x1, -1081(x6) # store 0xda39745c in memory
flw f21, -1081(x6) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x01c74ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 601 # sub immediate from rs1 to counter offset
li x1, 0x3f87fedf # load x3 with value 0x3f87fedf
sw x1, -601(x9) # store 0x3f87fedf in memory
flw f22, -601(x9) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x82d0bd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1372 # sub immediate from rs1 to counter offset
li x1, 0x2716f98b # load x3 with value 0x2716f98b
sw x1, -1372(x18) # store 0x2716f98b in memory
flw f23, -1372(x18) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9d2c2d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 528 # sub immediate from rs1 to counter offset
li x30, 0xc4d47b3d # load x3 with value 0xc4d47b3d
sw x30, -528(x1) # store 0xc4d47b3d in memory
flw f24, -528(x1) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xa558d80d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -90 # sub immediate from rs1 to counter offset
li x1, 0xab2eb816 # load x3 with value 0xab2eb816
sw x1, 90(x25) # store 0xab2eb816 in memory
flw f25, 90(x25) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x16d4121b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 380 # sub immediate from rs1 to counter offset
li x1, 0x3180fd4a # load x3 with value 0x3180fd4a
sw x1, -380(x26) # store 0x3180fd4a in memory
flw f26, -380(x26) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xeef80549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1851 # sub immediate from rs1 to counter offset
li x29, 0xee6082a7 # load x3 with value 0xee6082a7
sw x29, -1851(x1) # store 0xee6082a7 in memory
flw f27, -1851(x1) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x66b3261e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1492 # sub immediate from rs1 to counter offset
li x11, 0x48caa109 # load x3 with value 0x48caa109
sw x11, -1492(x1) # store 0x48caa109 in memory
flw f28, -1492(x1) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xd91957ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -639 # sub immediate from rs1 to counter offset
li x1, 0x96cdba7f # load x3 with value 0x96cdba7f
sw x1, 639(x27) # store 0x96cdba7f in memory
flw f29, 639(x27) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd1eae4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1562 # sub immediate from rs1 to counter offset
li x1, 0x2f3a07ca # load x3 with value 0x2f3a07ca
sw x1, -1562(x18) # store 0x2f3a07ca in memory
flw f30, -1562(x18) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x98b39209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 935 # sub immediate from rs1 to counter offset
li x1, 0xc48efece # load x3 with value 0xc48efece
sw x1, -935(x4) # store 0xc48efece in memory
flw f31, -935(x4) # perform operation

# Testcase f_mem_hazard (no dependency)
la x1, scratch
flw f2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
