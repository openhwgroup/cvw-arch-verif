///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.w.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.509459
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
li x0, 0x64df73d8fab90f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xde51d86408968f7b # load x3 with value 0xde51d86408968f7b
sd x3, 0(x2) # store 0xde51d86408968f7b in memory
fld f18, 0(x2) # load 0xde51d86408968f7b from memory into f18
fcvt.w.d x0, f18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0c0e4ccd730bedf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1f5dc1334b1db96c # load x3 with value 0x1f5dc1334b1db96c
sd x3, 0(x2) # store 0x1f5dc1334b1db96c in memory
fld f3, 0(x2) # load 0x1f5dc1334b1db96c from memory into f3
fcvt.w.d x1, f3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe4afa1ed047624df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf7e24d5e87d05945 # load x3 with value 0xf7e24d5e87d05945
sd x3, 0(x2) # store 0xf7e24d5e87d05945 in memory
fld f18, 0(x2) # load 0xf7e24d5e87d05945 from memory into f18
fcvt.w.d x2, f18 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x5e3b1c9244cbbb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x59051d2ce92ca095 # load x3 with value 0x59051d2ce92ca095
sd x3, 0(x2) # store 0x59051d2ce92ca095 in memory
fld f12, 0(x2) # load 0x59051d2ce92ca095 from memory into f12
fcvt.w.d x3, f12 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x3054e67c4d3b7965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x20bb8887f9e0c79e # load x3 with value 0x20bb8887f9e0c79e
sd x3, 0(x2) # store 0x20bb8887f9e0c79e in memory
fld f7, 0(x2) # load 0x20bb8887f9e0c79e from memory into f7
fcvt.w.d x4, f7 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xe8391407ccd0e566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0a76d26a20a2dd7c # load x3 with value 0x0a76d26a20a2dd7c
sd x3, 0(x2) # store 0x0a76d26a20a2dd7c in memory
fld f15, 0(x2) # load 0x0a76d26a20a2dd7c from memory into f15
fcvt.w.d x5, f15 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf8b89d088c947019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x887c1082bb2473a3 # load x3 with value 0x887c1082bb2473a3
sd x3, 0(x2) # store 0x887c1082bb2473a3 in memory
fld f10, 0(x2) # load 0x887c1082bb2473a3 from memory into f10
fcvt.w.d x6, f10 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x1585b90648929454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x165ba83c28eaa591 # load x3 with value 0x165ba83c28eaa591
sd x3, 0(x2) # store 0x165ba83c28eaa591 in memory
fld f5, 0(x2) # load 0x165ba83c28eaa591 from memory into f5
fcvt.w.d x7, f5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x06007828a88aadf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7bbf4a8e6e8983f4 # load x3 with value 0x7bbf4a8e6e8983f4
sd x3, 0(x2) # store 0x7bbf4a8e6e8983f4 in memory
fld f3, 0(x2) # load 0x7bbf4a8e6e8983f4 from memory into f3
fcvt.w.d x8, f3 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x3517437271621fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99902077d363eecf # load x3 with value 0x99902077d363eecf
sd x3, 0(x2) # store 0x99902077d363eecf in memory
fld f19, 0(x2) # load 0x99902077d363eecf from memory into f19
fcvt.w.d x9, f19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xadd6e0387a1457cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x15a28af223bf6267 # load x3 with value 0x15a28af223bf6267
sd x3, 0(x2) # store 0x15a28af223bf6267 in memory
fld f24, 0(x2) # load 0x15a28af223bf6267 from memory into f24
fcvt.w.d x10, f24 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xa98c952e1cfc44b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe5d5792a010dfc8c # load x3 with value 0xe5d5792a010dfc8c
sd x3, 0(x2) # store 0xe5d5792a010dfc8c in memory
fld f23, 0(x2) # load 0xe5d5792a010dfc8c from memory into f23
fcvt.w.d x11, f23 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x619b30e2def76951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeb1f29a8823aaf14 # load x3 with value 0xeb1f29a8823aaf14
sd x3, 0(x2) # store 0xeb1f29a8823aaf14 in memory
fld f5, 0(x2) # load 0xeb1f29a8823aaf14 from memory into f5
fcvt.w.d x12, f5 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7a06dda28fd6d154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdec49b68e9596bf7 # load x3 with value 0xdec49b68e9596bf7
sd x3, 0(x2) # store 0xdec49b68e9596bf7 in memory
fld f23, 0(x2) # load 0xdec49b68e9596bf7 from memory into f23
fcvt.w.d x13, f23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe81dea1fd065ab25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x831032f2eaec1db5 # load x3 with value 0x831032f2eaec1db5
sd x3, 0(x2) # store 0x831032f2eaec1db5 in memory
fld f1, 0(x2) # load 0x831032f2eaec1db5 from memory into f1
fcvt.w.d x14, f1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x191b2777b9a16e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cd66949ec93dda9 # load x3 with value 0x2cd66949ec93dda9
sd x3, 0(x2) # store 0x2cd66949ec93dda9 in memory
fld f5, 0(x2) # load 0x2cd66949ec93dda9 from memory into f5
fcvt.w.d x15, f5 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3b9ddb9ed1bc9bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe62c0879b2e3a374 # load x3 with value 0xe62c0879b2e3a374
sd x3, 0(x2) # store 0xe62c0879b2e3a374 in memory
fld f11, 0(x2) # load 0xe62c0879b2e3a374 from memory into f11
fcvt.w.d x16, f11 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa0273f87c7860de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfd7965636743a975 # load x3 with value 0xfd7965636743a975
sd x3, 0(x2) # store 0xfd7965636743a975 in memory
fld f19, 0(x2) # load 0xfd7965636743a975 from memory into f19
fcvt.w.d x17, f19 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x93f3a37f9552befd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x35ef3023e7c96bc9 # load x3 with value 0x35ef3023e7c96bc9
sd x3, 0(x2) # store 0x35ef3023e7c96bc9 in memory
fld f21, 0(x2) # load 0x35ef3023e7c96bc9 from memory into f21
fcvt.w.d x18, f21 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x52fe56c6143c7424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0a3ddab953f0facd # load x3 with value 0x0a3ddab953f0facd
sd x3, 0(x2) # store 0x0a3ddab953f0facd in memory
fld f26, 0(x2) # load 0x0a3ddab953f0facd from memory into f26
fcvt.w.d x19, f26 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5f1900fed4d42515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0d1298d45b4a31ca # load x3 with value 0x0d1298d45b4a31ca
sd x3, 0(x2) # store 0x0d1298d45b4a31ca in memory
fld f17, 0(x2) # load 0x0d1298d45b4a31ca from memory into f17
fcvt.w.d x20, f17 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x52b5458f643fdc75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9fb18909012fad47 # load x3 with value 0x9fb18909012fad47
sd x3, 0(x2) # store 0x9fb18909012fad47 in memory
fld f29, 0(x2) # load 0x9fb18909012fad47 from memory into f29
fcvt.w.d x21, f29 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb3d1d7cf078a305f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf52fbb19c98629cb # load x3 with value 0xf52fbb19c98629cb
sd x3, 0(x2) # store 0xf52fbb19c98629cb in memory
fld f23, 0(x2) # load 0xf52fbb19c98629cb from memory into f23
fcvt.w.d x22, f23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x51145c1607701925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41f19603151d2f60 # load x3 with value 0x41f19603151d2f60
sd x3, 0(x2) # store 0x41f19603151d2f60 in memory
fld f22, 0(x2) # load 0x41f19603151d2f60 from memory into f22
fcvt.w.d x23, f22 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc92bfe4d1b3f8226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x183bd247bfb3ac73 # load x3 with value 0x183bd247bfb3ac73
sd x3, 0(x2) # store 0x183bd247bfb3ac73 in memory
fld f26, 0(x2) # load 0x183bd247bfb3ac73 from memory into f26
fcvt.w.d x24, f26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x99bd11b0dce4ec19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6917b72e668e0278 # load x3 with value 0x6917b72e668e0278
sd x3, 0(x2) # store 0x6917b72e668e0278 in memory
fld f11, 0(x2) # load 0x6917b72e668e0278 from memory into f11
fcvt.w.d x25, f11 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa0159467b50f8285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb76426f69d6c58a8 # load x3 with value 0xb76426f69d6c58a8
sd x3, 0(x2) # store 0xb76426f69d6c58a8 in memory
fld f23, 0(x2) # load 0xb76426f69d6c58a8 from memory into f23
fcvt.w.d x26, f23 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xcc13fa8de4faa443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14bd9684941ff996 # load x3 with value 0x14bd9684941ff996
sd x3, 0(x2) # store 0x14bd9684941ff996 in memory
fld f25, 0(x2) # load 0x14bd9684941ff996 from memory into f25
fcvt.w.d x27, f25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf61f410a133a962c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc2c01629055c593c # load x3 with value 0xc2c01629055c593c
sd x3, 0(x2) # store 0xc2c01629055c593c in memory
fld f22, 0(x2) # load 0xc2c01629055c593c from memory into f22
fcvt.w.d x28, f22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x55e796f8680e99d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7d6bbe35628e5ca1 # load x3 with value 0x7d6bbe35628e5ca1
sd x3, 0(x2) # store 0x7d6bbe35628e5ca1 in memory
fld f25, 0(x2) # load 0x7d6bbe35628e5ca1 from memory into f25
fcvt.w.d x29, f25 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xecac00ded6b4914d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd67158e23c647067 # load x3 with value 0xd67158e23c647067
sd x3, 0(x2) # store 0xd67158e23c647067 in memory
fld f31, 0(x2) # load 0xd67158e23c647067 from memory into f31
fcvt.w.d x30, f31 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xc20130dce92c4489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14242c93aff965c2 # load x3 with value 0x14242c93aff965c2
sd x3, 0(x2) # store 0x14242c93aff965c2 in memory
fld f23, 0(x2) # load 0x14242c93aff965c2 from memory into f23
fcvt.w.d x31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x30, 0xfbc4865f57d019f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fcvt.w.d x30, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x11, 0xc9792327227e644d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fcvt.w.d x11, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x13, 0xfbeb3cb09f66be5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fcvt.w.d x13, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x29, 0xd601fba7334497b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fcvt.w.d x29, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x5, 0x0d2c7ddd70c017c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fcvt.w.d x5, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x7, 0xe1bfd1b73d52c329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f14, 0(x2) # load 0xbff8000000000000 from memory into f14
fcvt.w.d x7, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x28, 0x7726ff0f3bec308e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fcvt.w.d x28, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x27, 0x203e061be98edc23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fcvt.w.d x27, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x18, 0x12a9d1f3e3173f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fcvt.w.d x18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x30, 0x9abf9508d67103f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fcvt.w.d x30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x3, 0x3d47ac0383d65203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
fcvt.w.d x3, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x6, 0x6c0ccab80e0c01c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f16, 0(x2) # load 0xffefffffffffffff from memory into f16
fcvt.w.d x6, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x21, 0x8827ccbf51205487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fcvt.w.d x21, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x30, 0x4126b154a9c66728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
fcvt.w.d x30, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x13, 0xecb4bb6785b47e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f29, 0(x2) # load 0x0008000000000000 from memory into f29
fcvt.w.d x13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x25, 0x9985665f4f6f7146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fcvt.w.d x25, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x30, 0xe74f5413f056cd2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fcvt.w.d x30, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x17, 0x457e8d999754a56c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fcvt.w.d x17, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x23, 0xbfc75fb9a414ea0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fcvt.w.d x23, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x5, 0x69fd997d8a4eab9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f8, 0(x2) # load 0xfff0000000000000 from memory into f8
fcvt.w.d x5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x7, 0xb75ebfcd7cbf0c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fcvt.w.d x7, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x16, 0xfe32ab49a4b1bb2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fcvt.w.d x16, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x14, 0x152f5766172b71af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fcvt.w.d x14, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x29, 0xe7393adc5214ecaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fcvt.w.d x29, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x7, 0xc3d9a26d9348fd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fcvt.w.d x7, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x1, 0x2aafa989a39fbf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fcvt.w.d x1, f9 # perform operation

# Testcase cp_frm
li x15, 0xe0194094a3dd20a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x85dbf36e94a80d1f # load x3 with value 0x85dbf36e94a80d1f
sd x3, 0(x2) # store 0x85dbf36e94a80d1f in memory
fld f10, 0(x2) # load 0x85dbf36e94a80d1f from memory into f10
fcvt.w.d x15, f10, dyn # perform operation
fcvt.w.d x15, f10, rdn # perform operation
fcvt.w.d x15, f10, rmm # perform operation
fcvt.w.d x15, f10, rne # perform operation
fcvt.w.d x15, f10, rtz # perform operation
fcvt.w.d x15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x15, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x6, 0x928c699673c81725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x30b888119fed885c # load x3 with value 0x30b888119fed885c
sd x3, 0(x2) # store 0x30b888119fed885c in memory
fld f0, 0(x2) # load 0x30b888119fed885c from memory into f0
fcvt.w.d x6, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0xd1e912399a939f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6a30e61dbe452af1 # load x3 with value 0x6a30e61dbe452af1
sd x3, 0(x2) # store 0x6a30e61dbe452af1 in memory
fld f1, 0(x2) # load 0x6a30e61dbe452af1 from memory into f1
fcvt.w.d x31, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x17, 0x76f47077f5a29a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x09b9c8398c2cbad0 # load x3 with value 0x09b9c8398c2cbad0
sd x3, 0(x2) # store 0x09b9c8398c2cbad0 in memory
fld f2, 0(x2) # load 0x09b9c8398c2cbad0 from memory into f2
fcvt.w.d x17, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x30, 0x07e13c137d8e891b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa2bf1a952efd9121 # load x3 with value 0xa2bf1a952efd9121
sd x3, 0(x2) # store 0xa2bf1a952efd9121 in memory
fld f3, 0(x2) # load 0xa2bf1a952efd9121 from memory into f3
fcvt.w.d x30, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x12, 0x5941973537ba5f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4dbfadec3677651c # load x3 with value 0x4dbfadec3677651c
sd x3, 0(x2) # store 0x4dbfadec3677651c in memory
fld f4, 0(x2) # load 0x4dbfadec3677651c from memory into f4
fcvt.w.d x12, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x29, 0x8c2ed7fee7ea993f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff48130ef23a386d # load x3 with value 0xff48130ef23a386d
sd x3, 0(x2) # store 0xff48130ef23a386d in memory
fld f5, 0(x2) # load 0xff48130ef23a386d from memory into f5
fcvt.w.d x29, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x14, 0x54517c29d0d9eeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd025529895fa902d # load x3 with value 0xd025529895fa902d
sd x3, 0(x2) # store 0xd025529895fa902d in memory
fld f6, 0(x2) # load 0xd025529895fa902d from memory into f6
fcvt.w.d x14, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x21, 0xf372f587e97cc88b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae203fecf728aa44 # load x3 with value 0xae203fecf728aa44
sd x3, 0(x2) # store 0xae203fecf728aa44 in memory
fld f7, 0(x2) # load 0xae203fecf728aa44 from memory into f7
fcvt.w.d x21, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x30, 0x13026261f6d62590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x79e003645e6b1c24 # load x3 with value 0x79e003645e6b1c24
sd x3, 0(x2) # store 0x79e003645e6b1c24 in memory
fld f8, 0(x2) # load 0x79e003645e6b1c24 from memory into f8
fcvt.w.d x30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0x741fbb5bb74c5673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e727d6c03fceb50 # load x3 with value 0x0e727d6c03fceb50
sd x3, 0(x2) # store 0x0e727d6c03fceb50 in memory
fld f9, 0(x2) # load 0x0e727d6c03fceb50 from memory into f9
fcvt.w.d x29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x8, 0x62d539749a8e9b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8f8266cdf7916947 # load x3 with value 0x8f8266cdf7916947
sd x3, 0(x2) # store 0x8f8266cdf7916947 in memory
fld f10, 0(x2) # load 0x8f8266cdf7916947 from memory into f10
fcvt.w.d x8, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x12, 0x78981ce7418b6dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x79bda85114b551c6 # load x3 with value 0x79bda85114b551c6
sd x3, 0(x2) # store 0x79bda85114b551c6 in memory
fld f11, 0(x2) # load 0x79bda85114b551c6 from memory into f11
fcvt.w.d x12, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x13, 0xedfca0f5cad863ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b360d5ee308f9ee # load x3 with value 0x2b360d5ee308f9ee
sd x3, 0(x2) # store 0x2b360d5ee308f9ee in memory
fld f12, 0(x2) # load 0x2b360d5ee308f9ee from memory into f12
fcvt.w.d x13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x22, 0x778c11373f80449a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a355fecfc498217 # load x3 with value 0x8a355fecfc498217
sd x3, 0(x2) # store 0x8a355fecfc498217 in memory
fld f13, 0(x2) # load 0x8a355fecfc498217 from memory into f13
fcvt.w.d x22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x26, 0x0eea0eecba8f1dac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdcc052bfa74bfcc3 # load x3 with value 0xdcc052bfa74bfcc3
sd x3, 0(x2) # store 0xdcc052bfa74bfcc3 in memory
fld f14, 0(x2) # load 0xdcc052bfa74bfcc3 from memory into f14
fcvt.w.d x26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x4, 0x994d5ccb1b7c4384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa94ac425c8a1623e # load x3 with value 0xa94ac425c8a1623e
sd x3, 0(x2) # store 0xa94ac425c8a1623e in memory
fld f15, 0(x2) # load 0xa94ac425c8a1623e from memory into f15
fcvt.w.d x4, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x16, 0xdf7c2e81ac7f596d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4fa40e4a8bd111b5 # load x3 with value 0x4fa40e4a8bd111b5
sd x3, 0(x2) # store 0x4fa40e4a8bd111b5 in memory
fld f16, 0(x2) # load 0x4fa40e4a8bd111b5 from memory into f16
fcvt.w.d x16, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x2, 0x8f539d566c4dec51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39b7811b1e9dd1cf # load x3 with value 0x39b7811b1e9dd1cf
sd x3, 0(x2) # store 0x39b7811b1e9dd1cf in memory
fld f17, 0(x2) # load 0x39b7811b1e9dd1cf from memory into f17
fcvt.w.d x2, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x19, 0x28ffed3aca7eaddc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72eaaf04fa56cd0b # load x3 with value 0x72eaaf04fa56cd0b
sd x3, 0(x2) # store 0x72eaaf04fa56cd0b in memory
fld f18, 0(x2) # load 0x72eaaf04fa56cd0b from memory into f18
fcvt.w.d x19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0x2e8a1e2aa0add679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x95768aa41a0df8e4 # load x3 with value 0x95768aa41a0df8e4
sd x3, 0(x2) # store 0x95768aa41a0df8e4 in memory
fld f19, 0(x2) # load 0x95768aa41a0df8e4 from memory into f19
fcvt.w.d x29, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0x75559a9493604328 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdebbc4058f8d8bc6 # load x3 with value 0xdebbc4058f8d8bc6
sd x3, 0(x2) # store 0xdebbc4058f8d8bc6 in memory
fld f20, 0(x2) # load 0xdebbc4058f8d8bc6 from memory into f20
fcvt.w.d x25, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x22, 0xb4973b46174b1605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x864681515e631623 # load x3 with value 0x864681515e631623
sd x3, 0(x2) # store 0x864681515e631623 in memory
fld f21, 0(x2) # load 0x864681515e631623 from memory into f21
fcvt.w.d x22, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0x1fcb80c9220e1b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8666539de50482eb # load x3 with value 0x8666539de50482eb
sd x3, 0(x2) # store 0x8666539de50482eb in memory
fld f22, 0(x2) # load 0x8666539de50482eb from memory into f22
fcvt.w.d x30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0xd73223e02e614b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a41e4e954b83e8a # load x3 with value 0x5a41e4e954b83e8a
sd x3, 0(x2) # store 0x5a41e4e954b83e8a in memory
fld f23, 0(x2) # load 0x5a41e4e954b83e8a from memory into f23
fcvt.w.d x26, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x20, 0xdbc0720580f3962a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc8484d8573d3080 # load x3 with value 0xdc8484d8573d3080
sd x3, 0(x2) # store 0xdc8484d8573d3080 in memory
fld f24, 0(x2) # load 0xdc8484d8573d3080 from memory into f24
fcvt.w.d x20, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0x3a650b2fb4861e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc48d96e0531c0c66 # load x3 with value 0xc48d96e0531c0c66
sd x3, 0(x2) # store 0xc48d96e0531c0c66 in memory
fld f25, 0(x2) # load 0xc48d96e0531c0c66 from memory into f25
fcvt.w.d x18, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0xcf9f97f0cca14ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e6ea6711f17793f # load x3 with value 0x0e6ea6711f17793f
sd x3, 0(x2) # store 0x0e6ea6711f17793f in memory
fld f26, 0(x2) # load 0x0e6ea6711f17793f from memory into f26
fcvt.w.d x1, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x2, 0x976eddad8158f339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd20e07b5ca39bdda # load x3 with value 0xd20e07b5ca39bdda
sd x3, 0(x2) # store 0xd20e07b5ca39bdda in memory
fld f27, 0(x2) # load 0xd20e07b5ca39bdda from memory into f27
fcvt.w.d x2, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x29, 0x1cf35041c9a7ffe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfae3a26f22723ec1 # load x3 with value 0xfae3a26f22723ec1
sd x3, 0(x2) # store 0xfae3a26f22723ec1 in memory
fld f28, 0(x2) # load 0xfae3a26f22723ec1 from memory into f28
fcvt.w.d x29, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x13, 0x4e3268744d3754ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1db6f793a4971cce # load x3 with value 0x1db6f793a4971cce
sd x3, 0(x2) # store 0x1db6f793a4971cce in memory
fld f29, 0(x2) # load 0x1db6f793a4971cce from memory into f29
fcvt.w.d x13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x3dd88c920dfa0e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc40039778dbde4a # load x3 with value 0xcc40039778dbde4a
sd x3, 0(x2) # store 0xcc40039778dbde4a in memory
fld f30, 0(x2) # load 0xcc40039778dbde4a from memory into f30
fcvt.w.d x19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x2, 0x6747112a4a852f09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa8a415b49d6dba7c # load x3 with value 0xa8a415b49d6dba7c
sd x3, 0(x2) # store 0xa8a415b49d6dba7c in memory
fld f31, 0(x2) # load 0xa8a415b49d6dba7c from memory into f31
fcvt.w.d x2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
