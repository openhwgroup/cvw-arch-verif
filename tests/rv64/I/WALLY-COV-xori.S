///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-xori.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.522755
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x77f3962f2f84b590 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x947d24792894d222 # initialize rs1
xori x0, x24, -761 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xe4b514874b1fb145 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2d5767f4d320643f # initialize rs1
xori x1, x8, -546 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xdb61f7f38141540a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7cc3a343e5649430 # initialize rs1
xori x2, x28, 313 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x646750c2e8b5f4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc48b58c27e27caed # initialize rs1
xori x3, x19, -792 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x21447401b8cd40b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x60fb83cfd6f9fdcb # initialize rs1
xori x4, x5, 1986 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x8cc0943f431b5224 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7292135d1db0fad8 # initialize rs1
xori x5, x31, -371 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x2a2b81aaf30494e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5c3490f97218a024 # initialize rs1
xori x6, x5, 474 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc6e435e91f2ed0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1161f5578d44d3b8 # initialize rs1
xori x7, x30, 1460 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5e2dca9e2e51c855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x255a3a1a0a1f13ec # initialize rs1
xori x8, x13, 1947 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb1302a566e02154c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdaaf235ce66bb287 # initialize rs1
xori x9, x21, -183 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x333d83d27e37db5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc4f781d0d5fd1f7d # initialize rs1
xori x10, x2, 260 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xef4485532ef4d791 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1c27344ffef4b0cb # initialize rs1
xori x11, x22, 1397 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x0a6365a470fcd673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc64f224185d907f2 # initialize rs1
xori x12, x15, -1577 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xeca2846e28f1a4f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x49602f4e68e6e159 # initialize rs1
xori x13, x26, -1177 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb0ddd6475ebf1323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6963fcad3cee16ce # initialize rs1
xori x14, x16, 459 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6cfeca334374da70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7476936690977efd # initialize rs1
xori x15, x2, 1770 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe2b9e70add80a530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xeaa73a347f97c0e0 # initialize rs1
xori x16, x11, -188 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xec83ea82bd33978a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe97416d2bab4cf1b # initialize rs1
xori x17, x16, -1222 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9b4b4cc3ee869346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd292e5ff79642b98 # initialize rs1
xori x18, x19, 503 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9e10e5dc992dc3a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bee55f257fff21b # initialize rs1
xori x19, x16, -2024 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf01bbbf100eddf34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x053941f2f9077a0a # initialize rs1
xori x20, x5, -1786 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x659c5159f94617c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x61538e20d8518fc3 # initialize rs1
xori x21, x6, -2044 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x723b01c805ffbef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x21029af64ddd2760 # initialize rs1
xori x22, x23, 343 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xbf7c498138066bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc8b4e6cbcbca381f # initialize rs1
xori x23, x29, 1014 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x213df0ead57ee3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5149f1a838ea682f # initialize rs1
xori x24, x31, 1798 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb8e4e0a9ab4b9ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb48655e1da39d7d7 # initialize rs1
xori x25, x17, 1886 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x1f0d3ad82c3a6f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xea0953080cd5f62c # initialize rs1
xori x26, x2, -140 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xdb6227f452728871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1eb24061751474ea # initialize rs1
xori x27, x8, 1461 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x65bbcb906b03d18c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8a55e1fe1bd247ba # initialize rs1
xori x28, x15, -813 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x21822a012f3ba641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaf25beca277d9100 # initialize rs1
xori x29, x10, -935 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdae82e59f6b0cff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xff6c7620d5624e34 # initialize rs1
xori x30, x22, 709 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf783840bc65ac0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xea414a5c003543bc # initialize rs1
xori x31, x26, 1232 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x27, 0xca7acf915360e5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4cace341752a9257 # initialize rs1
xori x27, x0, -1574 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0xdc1ac51a71224333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa016e80b91e15d07 # initialize rs1
xori x15, x1, -1698 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x405b4d22d784d2cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x066a90ca01fae4c5 # initialize rs1
xori x23, x2, 621 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0xf8406408aeae8047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5d2579c4f49db9e0 # initialize rs1
xori x9, x3, 1143 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0x8b97d06ef94366fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5e20388f62fcb1fa # initialize rs1
xori x28, x4, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0xdc77fce8282765a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2e0dc1efa8f3d17e # initialize rs1
xori x9, x5, 1809 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x7, 0x51c62d014c9fe42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xece5addde5ba2dd6 # initialize rs1
xori x7, x6, -763 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0x246e7fe7fad2a2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9da5cd75ce50ec9e # initialize rs1
xori x3, x7, 1325 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x1734948a6efe6bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9698afbd2ee8fe0f # initialize rs1
xori x10, x8, -1409 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x0037db026006f5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5a949115d0aeb20a # initialize rs1
xori x14, x9, 696 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0xf7abe1748befea08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2280a24acecaa97c # initialize rs1
xori x29, x10, -595 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0xc8c25441dc02067d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x61562b73e30fb87a # initialize rs1
xori x3, x11, -801 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x5919489e5201ffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc96e7964018d6250 # initialize rs1
xori x5, x12, 420 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0xb38e094fb33cf04c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x92b1375a03f3e1cf # initialize rs1
xori x16, x13, 711 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x74e0665acecb2250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc9021837cf9ba526 # initialize rs1
xori x21, x14, 1608 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0xf4220521d752e5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbba8bb65df215923 # initialize rs1
xori x29, x15, -1072 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x23, 0x5a07e32c76121544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9aeb15050688b526 # initialize rs1
xori x23, x16, 191 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x13, 0x5e0b7436479bb90c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x57181b9efb0574b4 # initialize rs1
xori x13, x17, -66 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xef76cb36507ae3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x821f23ce73c68017 # initialize rs1
xori x12, x18, -455 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x00bd355a77682c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xeffcc2fd69bc4123 # initialize rs1
xori x22, x19, -1615 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0x65e0ae41c537daf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7902db05cb36ca33 # initialize rs1
xori x25, x20, -752 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0xc682853ef76c6856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x32ffe06126133f0e # initialize rs1
xori x14, x21, -1566 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x25, 0xa14519d82c028e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x576061064c24f5de # initialize rs1
xori x25, x22, -1766 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0xbb4522cf07a98f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x061b054314ae32e3 # initialize rs1
xori x13, x23, 1911 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x28, 0x2a44fa4e3f6168a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x26a07bfebd52365c # initialize rs1
xori x28, x24, -603 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x44f13134557a48ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x18b609f36a857a7c # initialize rs1
xori x16, x25, 515 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0xce8aca196f86c795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3c96fb9f41671097 # initialize rs1
xori x27, x26, -513 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0xa8e22b6dd954f483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x22e6d8414ba552c5 # initialize rs1
xori x12, x27, 591 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x8, 0x72bdaf94f126036a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x41a0241d7158a8d4 # initialize rs1
xori x8, x28, -591 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x7, 0x831ed06bec8e90a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xcfa384a75c7e5947 # initialize rs1
xori x7, x29, 657 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x2c8d294dbe4fd465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfd00992a6c2e8673 # initialize rs1
xori x16, x30, 1275 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x91e6567fd0ca2f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfa328d34f038ade6 # initialize rs1
xori x30, x31, 1286 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x8b9b4c122951cd6d)
li x3, 0x96dafc3f04fc943d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x96dafc3f04fc943d # initialize rs1
xori x3, x21, 1190 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x01c3e3e2e1201ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
xori x16, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x31454a0913f319dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
xori x14, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x086f9bd0afbc3105 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
xori x28, x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0xa1bdacc8680e2481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
xori x6, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0xdb38b7cd4b8b80dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
xori x28, x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x6d04f550e049009b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
xori x26, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x63d9fe7adc63f1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
xori x10, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xb082b24ef147ef14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
xori x1, x2, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xf538d751eb9d7bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
xori x13, x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x21, 0xbebe466a6747966f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
xori x21, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x11, 0x285682b2def04b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
xori x11, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x7, 0xda742a0bce384d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
xori x7, x1, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x1, 0xa7ab62514e314737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
xori x1, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x17, 0xf56fa19f96d800b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8000000000000001 # initialize rs1
xori x17, x25, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x31, 0xa5f939560ad1c673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
xori x31, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x10, 0x856a123414efc10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
xori x10, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0x66736920dc17ccae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
xori x21, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x26, 0xe668431df3bfa882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x26, x18, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x9, 0x49d4c71399695acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
xori x9, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x27, 0x4c157b9980dd690c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x27, x18, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x5, 0x0f67192f0c4739a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
xori x5, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x25, 0x7a7123251910e6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
xori x25, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x3, 0x984e8ad73e8728c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
xori x3, x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x18, 0x15fcbe9104f1d0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
xori x18, x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x3, 0x54e802d22d37ac3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x3, x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x9, 0x27bc3b9ce9e455bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffffffffffe # initialize rs1
xori x9, x31, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x24, 0x5ae7a1ce98eaabb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
xori x24, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x2, 0x5f273190e3d837a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
xori x2, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x26, 0x5e7ae5b9843a7bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # initialize rs1
xori x26, x5, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x16, 0x78959a85510c0a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
xori x16, x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7fd951484fe88210 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x13, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x784759632fb286e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x12, x16, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5dc9205611e15eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
xori x12, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x5, 0xd46a4b187daf485e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5555555555555555 # initialize rs1
xori x5, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x824af99be599c942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
xori x25, x26, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0x9e4f8f8df99f6f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
xori x14, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0xde61accb57dec425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs1
xori x1, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0x152a05c111072284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
xori x6, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0xb70990d85ac34e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
xori x1, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x070452ac639afeba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
xori x30, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0xa676c2480c88066a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
xori x5, x1, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x4fe6384a7e403ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x10, x18, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x2, 0xb2e102643b42cb4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
xori x2, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x30, 0xb08dbd758ab73d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # initialize rs1
xori x30, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x8, 0x9e9779853858a480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
xori x8, x14, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x8, 0xf3a19c71e54b7170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
xori x8, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x7, 0x7b5c7b9f022c4643 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
xori x7, x22, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x16, 0xecb161acb6119048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
xori x16, x21, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0xf943e6e2938fe1da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
xori x15, x1, 1170 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x27a52e90c31a79af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000001 # initialize rs1
xori x25, x20, -96 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x7a5ce8ff7824f826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
xori x15, x6, -1959 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8cda8fe8ca171178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
xori x2, x1, -844 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x167eb5a901f5ecda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
xori x27, x15, -1176 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x60b4166d5f861f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
xori x17, x21, 90 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x4, 0x9f426dd5d282cbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffffffffffe # initialize rs1
xori x4, x28, 870 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0x20ca7a04ac8e31a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
xori x14, x29, -837 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xf8a164968dc5762e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
xori x3, x9, -896 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x22a293810c5af2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # initialize rs1
xori x6, x28, 463 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xa590912b6d1a796b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x16, x28, 1438 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x62494df6289a63d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize rs1
xori x16, x8, -1558 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xa96d2a6d8501776d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # initialize rs1
xori x8, x22, 1314 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xbe21f2e89e3593ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
xori x12, x3, -1098 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x403236d02190dbef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # initialize rs1
xori x6, x20, 1703 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x29, 0x7d14aed7c5c539a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
xori x29, x19, 1357 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0766f32f8027fa5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x55b9b54b2e7d084c # initialize rs1
xori x0, x0, -109 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa0b6c11e9751f191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1c79af2b66f84ac2 # initialize rs1
xori x1, x1, -2005 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x82df9fd66cb73751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfe46447d5574d15c # initialize rs1
xori x2, x2, 1116 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x093d1be55ab2dd1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfd9d2947e52e092b # initialize rs1
xori x3, x3, 1711 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6c4f47ed4a5f5a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x53327200463ffa9d # initialize rs1
xori x4, x4, -1449 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2e3eb4091d2a3fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x03e9ee0f4f0bba00 # initialize rs1
xori x5, x5, 1856 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x9514a4d342c4be85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x69aa8f4955be2866 # initialize rs1
xori x6, x6, -1754 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xaeefdf736194ed09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55512e6508580774 # initialize rs1
xori x7, x7, -1701 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x49b5cc98b289751f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc2b6aec2cc7981ff # initialize rs1
xori x8, x8, -708 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x47205e670b9f053a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc0c765e8dadec748 # initialize rs1
xori x9, x9, 1502 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfa6be04e2fe0ea5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6a990b7b4d9f754e # initialize rs1
xori x10, x10, -1463 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2fadb1e732e11ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x38b78678cfc41e93 # initialize rs1
xori x11, x11, 853 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x882178d24e755762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0008fb4772e4a497 # initialize rs1
xori x12, x12, 528 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdbf9b284c9176dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ac55cc45ef32265 # initialize rs1
xori x13, x13, -1008 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x77ecd47ac49e8861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa7a77d5ed42dd707 # initialize rs1
xori x14, x14, -897 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x333a41470dbc821a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbd5cdd6586ca4c0b # initialize rs1
xori x15, x15, -983 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcfccaca1b8df3e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfda443b224c334ad # initialize rs1
xori x16, x16, -1613 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xee424a91a9c13da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55ab29fabbd93725 # initialize rs1
xori x17, x17, 943 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c075fd4e572533d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xca5bd06089aa7b96 # initialize rs1
xori x18, x18, 778 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5e95df2d99e26116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x44ad9831fb60a913 # initialize rs1
xori x19, x19, -1392 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xcaf376577076bc5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb4e3abbe666ef84b # initialize rs1
xori x20, x20, 712 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf8e09a422b13727e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x87300bbeb010148e # initialize rs1
xori x21, x21, 1424 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1314ffb28f95f822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x245d10e6c24666b1 # initialize rs1
xori x22, x22, 32 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xde547e5a8e7363cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfdd19b03145697f9 # initialize rs1
xori x23, x23, 119 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3a3209fc309448a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x955f5458a66511ef # initialize rs1
xori x24, x24, -1585 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe579121c915b85bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc3d7bf4a23e3aac6 # initialize rs1
xori x25, x25, -1839 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x012fb8aee032e999 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9b93dae5c2c33091 # initialize rs1
xori x26, x26, -4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa82584fe01824eea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbb1380217c0faed1 # initialize rs1
xori x27, x27, 1927 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5b2b0ee8831775b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd4f6e5cd3eb5bf73 # initialize rs1
xori x28, x28, -1414 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf6abeacbcffab96a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xef868fd540fda6b1 # initialize rs1
xori x29, x29, -210 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa6cb944b2452c17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x265db1ee01231be8 # initialize rs1
xori x30, x30, 604 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xaa8c779366f471e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9df7a9feb3d26a7d # initialize rs1
xori x31, x31, -130 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0xb737d0407fa7089)
li x16, 0x76b2af119306ec7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0b737d0407fa7089 # initialize rs1
xori x16, x29, 106 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x22de281d7ed79688)
li x29, 0xe706f4da6c722dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdd21d7e281286978 # initialize rs1
xori x29, x30, -106 # perform operation

# Testcase cp_imm_zero
li x16, 0xdebe7b0238629b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x90d6d6a4f5e82a9d # initialize rs1
xori x16, x31, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 1 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 2 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 1023 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 1024 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, 2047 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, -2048 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, -2047 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, -2 # perform operation

# Testcase cp_imm_corners
li x20, 0xb4f2d926852ba258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb0ba1c0f3ba96f0c # initialize rs1
xori x20, x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffffffffffe # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
xori x8, x18, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x8, 0x1fa943d85f9a3bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs1
xori x8, x18, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
