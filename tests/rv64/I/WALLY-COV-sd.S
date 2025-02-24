///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sd.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.489536
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x69f376a49f0ea2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2a56d82e10eda2ae # initialize rs2
la x1, scratch # base address 
addi x1, x1, 959 # sub immediate from rs1 to counter offset
sd x2, -959(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0x83a759afa6339952 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55c50b766bf0fe81 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -303 # sub immediate from rs1 to counter offset
sd x22, 303(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xab30b7f6858d8cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x806b90a25253dd29 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1198 # sub immediate from rs1 to counter offset
sd x22, 1198(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x31, 0x6402b54c30f2cf47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x827826424916f0e1 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1683 # sub immediate from rs1 to counter offset
sd x25, 1683(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x21, 0x96ad08e70b95a5ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b59b2caa6b25d9d # initialize rs2
la x5, scratch # base address 
addi x5, x5, 180 # sub immediate from rs1 to counter offset
sd x18, -180(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0xa29ae13673c82c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe2bd36d73fadbef4 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1259 # sub immediate from rs1 to counter offset
sd x20, 1259(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0xa1e0315873522898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2e347d3a792479ff # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1092 # sub immediate from rs1 to counter offset
sd x3, 1092(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x7c0c11bdbd05c43c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b6d9f0f831c84ec # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1014 # sub immediate from rs1 to counter offset
sd x21, -1014(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x269f04b9d28677a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1bd4b869f62f3698 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 116 # sub immediate from rs1 to counter offset
sd x5, -116(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x47485a0e10f53678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb7ccb2172ee51e2c # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1633 # sub immediate from rs1 to counter offset
sd x26, 1633(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x04f09657d9d2d95a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5e2a7cf9777fc743 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -844 # sub immediate from rs1 to counter offset
sd x18, 844(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x86a508050149bbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1af0697235a6e6f4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -260 # sub immediate from rs1 to counter offset
sd x3, 260(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x88cd80346e01286e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x93b9259890cd4ec2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -909 # sub immediate from rs1 to counter offset
sd x1, 909(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0xe8c98010b2fc84a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x59b608f597a0fa81 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -877 # sub immediate from rs1 to counter offset
sd x30, 877(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x929650aec0b36357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x941209bc80b9bb7d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1207 # sub immediate from rs1 to counter offset
sd x6, 1207(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0x9d786c9c690453a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x34ba710042f22e21 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1714 # sub immediate from rs1 to counter offset
sd x25, 1714(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0x8e6203945a7455ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa9e5df2d90986979 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -491 # sub immediate from rs1 to counter offset
sd x10, 491(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0x5b501a00c7444d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0d2a78c6f8b345f4 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1794 # sub immediate from rs1 to counter offset
sd x24, -1794(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x9761aef6988ece03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7b46d16b196293f9 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1522 # sub immediate from rs1 to counter offset
sd x1, -1522(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0x31276ff5f9e6e535 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2a5e7dba0c2081c3 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -504 # sub immediate from rs1 to counter offset
sd x16, 504(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x5205b98ef80bc9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fb1b01eecfd4614 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1918 # sub immediate from rs1 to counter offset
sd x22, 1918(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0xf4294b0289b82df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd727127dc2f975e2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1526 # sub immediate from rs1 to counter offset
sd x13, 1526(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0xdfd3b03181f0b406 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2c377204d0fd7dfc # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1920 # sub immediate from rs1 to counter offset
sd x25, 1920(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x168de9e1747e2856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x481b2858cf6d0337 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -401 # sub immediate from rs1 to counter offset
sd x27, 401(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x2, 0x7384d912e9e3921b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x549e3150773f925c # initialize rs2
la x25, scratch # base address 
addi x25, x25, 85 # sub immediate from rs1 to counter offset
sd x28, -85(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0xeb75a15cde5e431d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe0b59a150f95b235 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -429 # sub immediate from rs1 to counter offset
sd x12, 429(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x13, 0xca1d7501abaa0e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7a919d78b9c52aae # initialize rs2
la x27, scratch # base address 
addi x27, x27, -610 # sub immediate from rs1 to counter offset
sd x9, 610(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0xddbe812efd1acab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb20340b7f1b67ab4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1076 # sub immediate from rs1 to counter offset
sd x3, 1076(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0x3ff0715932f181e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xea299d23f8a05782 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -908 # sub immediate from rs1 to counter offset
sd x27, 908(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0x8ec43dcd942ede70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe89cf3d99ad243ae # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1529 # sub immediate from rs1 to counter offset
sd x5, -1529(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x609eb0402ec3f953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf2306caecabb1bc6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1619 # sub immediate from rs1 to counter offset
sd x11, -1619(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x4, 0xa9b6c89818c8271d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1c241af7d2718f69 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 728 # sub immediate from rs1 to counter offset
sd x0, -728(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0x94acf48e992fb562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6d4dfffa106bd7be # initialize rs2
la x16, scratch # base address 
addi x16, x16, -939 # sub immediate from rs1 to counter offset
sd x1, 939(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0xb5c2b60f1985f3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x51bd5e604e0aa904 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1501 # sub immediate from rs1 to counter offset
sd x2, 1501(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x8645a56ffc124c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x46808fcc2508be40 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1171 # sub immediate from rs1 to counter offset
sd x3, -1171(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x5, 0xade7464d309e6d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa23219c0fe163b15 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -284 # sub immediate from rs1 to counter offset
sd x4, 284(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x3, 0x5536c6de12c35e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0c815d8b34d9669b # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1637 # sub immediate from rs1 to counter offset
sd x5, -1637(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0x2ac20391a30f73b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x78d3b80c773c0867 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1672 # sub immediate from rs1 to counter offset
sd x6, -1672(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x2, 0xc025fe5e0171d44c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x30b7ed1abb1cdc78 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1111 # sub immediate from rs1 to counter offset
sd x7, 1111(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x2589720b07e7ea5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaa47955bc9c8039d # initialize rs2
la x1, scratch # base address 
addi x1, x1, -756 # sub immediate from rs1 to counter offset
sd x8, 756(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0xbd63ece25d81d848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xdee10346c075a2cd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -793 # sub immediate from rs1 to counter offset
sd x9, 793(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xe967ad2ded40d951 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9e1e4926666b2157 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 131 # sub immediate from rs1 to counter offset
sd x10, -131(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xbfb67c1d451b2758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd1b46d1bacf73de6 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1754 # sub immediate from rs1 to counter offset
sd x11, -1754(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0xa916368ef955a742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d671d97ed3367dd # initialize rs2
la x24, scratch # base address 
addi x24, x24, -896 # sub immediate from rs1 to counter offset
sd x12, 896(x24) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x2b271f54419df58a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb4e3c39d57bb6eb1 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1454 # sub immediate from rs1 to counter offset
sd x13, -1454(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x5, 0xdbb8b5adcb83d564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x79167248deea6651 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -794 # sub immediate from rs1 to counter offset
sd x14, 794(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x89ba45004c45f013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2812ff009ef23acc # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1898 # sub immediate from rs1 to counter offset
sd x15, -1898(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0x1df3a21ca04fba91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb979e49335970246 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -627 # sub immediate from rs1 to counter offset
sd x16, 627(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x10, 0x66182f31f4297a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xba48e6da39271fe4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -685 # sub immediate from rs1 to counter offset
sd x17, 685(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0x46f6f529fe7aae51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5ff2083488adb7d1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1856 # sub immediate from rs1 to counter offset
sd x18, -1856(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0xc767d9cdc73cfd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x804986e2579e4d98 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 63 # sub immediate from rs1 to counter offset
sd x19, -63(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xbd30a53138802b8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x867bfc15e83b1e9b # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1988 # sub immediate from rs1 to counter offset
sd x20, -1988(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0xa366a0b987397c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa32f920a96599a8f # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1051 # sub immediate from rs1 to counter offset
sd x21, -1051(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x6cc0a97b7cfd4728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x53a5dd45f381d3ec # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1983 # sub immediate from rs1 to counter offset
sd x22, 1983(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x9bb2994a380729c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbafc774ad1be1ddc # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1712 # sub immediate from rs1 to counter offset
sd x23, -1712(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x20, 0x64d17a2d81b8a5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x330f94009c122417 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1540 # sub immediate from rs1 to counter offset
sd x24, -1540(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x30, 0xbc934431c8739772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x966fd2e243939568 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1687 # sub immediate from rs1 to counter offset
sd x25, -1687(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x2bd23c34b881fd4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab695e45531746c2 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -254 # sub immediate from rs1 to counter offset
sd x26, 254(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x30, 0x8a04d236d4872e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcc83da32392629e4 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -819 # sub immediate from rs1 to counter offset
sd x27, 819(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0xc812da1464fe54bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa9accf40f63d3692 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1123 # sub immediate from rs1 to counter offset
sd x28, -1123(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x0d4923964c75b69a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8c41c8c7e7262c06 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2005 # sub immediate from rs1 to counter offset
sd x29, -2005(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x14, 0xf7ff5659cbc31d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x50872816d7f5d105 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -11 # sub immediate from rs1 to counter offset
sd x30, 11(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x39cd4089125b8bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8b1c1a3cd3b0cdee # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1431 # sub immediate from rs1 to counter offset
sd x31, -1431(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0xa5339a58f7a091be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1603 # sub immediate from rs1 to counter offset
sd x1, -1603(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x97ca85691a307133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 740 # sub immediate from rs1 to counter offset
sd x22, -740(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x59b1b80fccbd391c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 2040 # sub immediate from rs1 to counter offset
sd x21, -2040(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x42458f778bf27014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1479 # sub immediate from rs1 to counter offset
sd x2, -1479(x19) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0xfef02a285ad2c5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8000000000000001 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -913 # sub immediate from rs1 to counter offset
sd x17, 913(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x4, 0xdeee256ca44b4e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7fffffffffffffff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1717 # sub immediate from rs1 to counter offset
sd x3, 1717(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x4, 0xd2bea0e4f649a19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1428 # sub immediate from rs1 to counter offset
sd x7, -1428(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x22, 0x2dbb3a9de56fe2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs2
la x4, scratch # base address 
addi x4, x4, -623 # sub immediate from rs1 to counter offset
sd x31, 623(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x45b8e7b20a4ffa2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1175 # sub immediate from rs1 to counter offset
sd x12, 1175(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x25, 0x22947b8dd1fc80e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 233 # sub immediate from rs1 to counter offset
sd x9, -233(x26) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xa9a158385a6e7564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x27, scratch # base address 
addi x27, x27, 659 # sub immediate from rs1 to counter offset
sd x24, -659(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x3, 0xf9d04986c94dcbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -596 # sub immediate from rs1 to counter offset
sd x26, 596(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x368f7b1fefc6ddcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs2
la x22, scratch # base address 
addi x22, x22, 399 # sub immediate from rs1 to counter offset
sd x10, -399(x22) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x27, 0x3e57d01903dc560c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1852 # sub immediate from rs1 to counter offset
sd x19, -1852(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x31, 0xe30849d544ccd5af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 515 # sub immediate from rs1 to counter offset
sd x20, -515(x30) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x2, 0x841e319d7ab4ef48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1507 # sub immediate from rs1 to counter offset
sd x14, 1507(x17) # perform operation 

# Testcase cp_imm_zero
li x28, 0x91860734d5c2ff61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9f833698a246a06c # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sd x24, 0(x14) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
