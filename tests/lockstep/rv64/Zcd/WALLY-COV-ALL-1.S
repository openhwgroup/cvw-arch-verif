//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    

// ******************
// Tests from: WALLY-COV-c.fld.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 184
li x9, 0x20cebeaf74f892d6 # load x9 with value 0x20cebeaf74f892d6
sd x9, 184(x8) # store 0x20cebeaf74f892d6 in memory
c.fld f15, 184(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 56
li x8, 0x606311041ef66579 # load x8 with value 0x606311041ef66579
sd x8, 56(x9) # store 0x606311041ef66579 in memory
c.fld f15, 56(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 152
li x11, 0xdcbc5a986b856028 # load x11 with value 0xdcbc5a986b856028
sd x11, 152(x10) # store 0xdcbc5a986b856028 in memory
c.fld f11, 152(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 88
li x8, 0x7f515881d6d1b6a9 # load x8 with value 0x7f515881d6d1b6a9
sd x8, 88(x11) # store 0x7f515881d6d1b6a9 in memory
c.fld f8, 88(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 8
li x8, 0x09a76bf8ac3427d3 # load x8 with value 0x09a76bf8ac3427d3
sd x8, 8(x12) # store 0x09a76bf8ac3427d3 in memory
c.fld f14, 8(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 32
li x8, 0xa337e728a517f46d # load x8 with value 0xa337e728a517f46d
sd x8, 32(x13) # store 0xa337e728a517f46d in memory
c.fld f10, 32(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, 184
li x8, 0x0909e2ad31de8953 # load x8 with value 0x0909e2ad31de8953
sd x8, 184(x14) # store 0x0909e2ad31de8953 in memory
c.fld f11, 184(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 96
li x9, 0xfe8c148391a39482 # load x9 with value 0xfe8c148391a39482
sd x9, 96(x15) # store 0xfe8c148391a39482 in memory
c.fld f13, 96(x15) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x11, scratch # base address 
addi x11, x11, 112
li x8, 0x0ceeab9e9e84cd09 # load x8 with value 0x0ceeab9e9e84cd09
sd x8, 112(x11) # store 0x0ceeab9e9e84cd09 in memory
c.fld f8, 112(x11) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x10, scratch # base address 
addi x10, x10, 72
li x8, 0x3da6ae31c317043f # load x8 with value 0x3da6ae31c317043f
sd x8, 72(x10) # store 0x3da6ae31c317043f in memory
c.fld f9, 72(x10) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x12, scratch # base address 
addi x12, x12, 88
li x8, 0x6230a04adc518aff # load x8 with value 0x6230a04adc518aff
sd x8, 88(x12) # store 0x6230a04adc518aff in memory
c.fld f10, 88(x12) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x15, scratch # base address 
addi x15, x15, 136
li x8, 0x2e2250372c6689c9 # load x8 with value 0x2e2250372c6689c9
sd x8, 136(x15) # store 0x2e2250372c6689c9 in memory
c.fld f11, 136(x15) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x8, scratch # base address 
addi x8, x8, 40
li x13, 0x6531381bbaed7098 # load x13 with value 0x6531381bbaed7098
sd x13, 40(x8) # store 0x6531381bbaed7098 in memory
c.fld f12, 40(x8) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x11, scratch # base address 
addi x11, x11, 16
li x8, 0x2a6dabe9429cdca4 # load x8 with value 0x2a6dabe9429cdca4
sd x8, 16(x11) # store 0x2a6dabe9429cdca4 in memory
c.fld f13, 16(x11) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x8, scratch # base address 
addi x8, x8, 184
li x13, 0x29f41c28b5792ee3 # load x13 with value 0x29f41c28b5792ee3
sd x13, 184(x8) # store 0x29f41c28b5792ee3 in memory
c.fld f14, 184(x8) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x10, scratch # base address 
addi x10, x10, 128
li x8, 0x15018f8d30b82b33 # load x8 with value 0x15018f8d30b82b33
sd x8, 128(x10) # store 0x15018f8d30b82b33 in memory
c.fld f15, 128(x10) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 0
li x8, 0x9bb32583bc7cc525 # load x8 with value 0x9bb32583bc7cc525
sd x8, 0(x10) # store 0x9bb32583bc7cc525 in memory
c.fld f8, 0(x10) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 8
li x8, 0x0cb983745805144f # load x8 with value 0x0cb983745805144f
sd x8, 8(x9) # store 0x0cb983745805144f in memory
c.fld f15, 8(x9) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 16
li x8, 0x59bc1d23204d35f7 # load x8 with value 0x59bc1d23204d35f7
sd x8, 16(x13) # store 0x59bc1d23204d35f7 in memory
c.fld f9, 16(x13) # perform operation

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, 24
li x14, 0xd30ac1b5e6f34f08 # load x14 with value 0xd30ac1b5e6f34f08
sd x14, 24(x12) # store 0xd30ac1b5e6f34f08 in memory
c.fld f10, 24(x12) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 32
li x8, 0x985caabb787f391b # load x8 with value 0x985caabb787f391b
sd x8, 32(x11) # store 0x985caabb787f391b in memory
c.fld f10, 32(x11) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 40
li x13, 0x7542c22740eeb731 # load x13 with value 0x7542c22740eeb731
sd x13, 40(x8) # store 0x7542c22740eeb731 in memory
c.fld f12, 40(x8) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 48
li x8, 0xdd32e943b439332b # load x8 with value 0xdd32e943b439332b
sd x8, 48(x11) # store 0xdd32e943b439332b in memory
c.fld f15, 48(x11) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 56
li x8, 0x7a0c702d75dcaf19 # load x8 with value 0x7a0c702d75dcaf19
sd x8, 56(x15) # store 0x7a0c702d75dcaf19 in memory
c.fld f13, 56(x15) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 64
li x8, 0xe855402ceb347b5f # load x8 with value 0xe855402ceb347b5f
sd x8, 64(x13) # store 0xe855402ceb347b5f in memory
c.fld f10, 64(x13) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 72
li x8, 0x6a655bd83f54ee69 # load x8 with value 0x6a655bd83f54ee69
sd x8, 72(x13) # store 0x6a655bd83f54ee69 in memory
c.fld f8, 72(x13) # perform operation

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, 80
li x8, 0xbcd2c54837a745d6 # load x8 with value 0xbcd2c54837a745d6
sd x8, 80(x12) # store 0xbcd2c54837a745d6 in memory
c.fld f9, 80(x12) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 88
li x8, 0xd197d8fdcd7c676f # load x8 with value 0xd197d8fdcd7c676f
sd x8, 88(x15) # store 0xd197d8fdcd7c676f in memory
c.fld f8, 88(x15) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 96
li x14, 0xe2bd6f30a0d52875 # load x14 with value 0xe2bd6f30a0d52875
sd x14, 96(x10) # store 0xe2bd6f30a0d52875 in memory
c.fld f11, 96(x10) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 104
li x8, 0x6565a476685cc3a9 # load x8 with value 0x6565a476685cc3a9
sd x8, 104(x13) # store 0x6565a476685cc3a9 in memory
c.fld f15, 104(x13) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 112
li x8, 0xba030619b2020a8d # load x8 with value 0xba030619b2020a8d
sd x8, 112(x13) # store 0xba030619b2020a8d in memory
c.fld f14, 112(x13) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 120
li x8, 0x2d23a826615c088c # load x8 with value 0x2d23a826615c088c
sd x8, 120(x15) # store 0x2d23a826615c088c in memory
c.fld f10, 120(x15) # perform operation

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, 128
li x8, 0x3de7bb63e1ce6861 # load x8 with value 0x3de7bb63e1ce6861
sd x8, 128(x14) # store 0x3de7bb63e1ce6861 in memory
c.fld f12, 128(x14) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 136
li x8, 0x1c6c28d29c39515d # load x8 with value 0x1c6c28d29c39515d
sd x8, 136(x11) # store 0x1c6c28d29c39515d in memory
c.fld f8, 136(x11) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 144
li x8, 0xcaff6de933ae3aee # load x8 with value 0xcaff6de933ae3aee
sd x8, 144(x13) # store 0xcaff6de933ae3aee in memory
c.fld f11, 144(x13) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 152
li x8, 0x4e3900ef5ad55721 # load x8 with value 0x4e3900ef5ad55721
sd x8, 152(x9) # store 0x4e3900ef5ad55721 in memory
c.fld f14, 152(x9) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 160
li x8, 0x37462b557ca0a91e # load x8 with value 0x37462b557ca0a91e
sd x8, 160(x9) # store 0x37462b557ca0a91e in memory
c.fld f12, 160(x9) # perform operation

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, 168
li x8, 0xeee505cfcb6dacdc # load x8 with value 0xeee505cfcb6dacdc
sd x8, 168(x14) # store 0xeee505cfcb6dacdc in memory
c.fld f12, 168(x14) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 176
li x8, 0xbdeb662c860b6e06 # load x8 with value 0xbdeb662c860b6e06
sd x8, 176(x13) # store 0xbdeb662c860b6e06 in memory
c.fld f9, 176(x13) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 184
li x8, 0xd1d0669888b10113 # load x8 with value 0xd1d0669888b10113
sd x8, 184(x9) # store 0xd1d0669888b10113 in memory
c.fld f14, 184(x9) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 192
li x8, 0x8ce3cc0abe0ebbdd # load x8 with value 0x8ce3cc0abe0ebbdd
sd x8, 192(x10) # store 0x8ce3cc0abe0ebbdd in memory
c.fld f13, 192(x10) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 200
li x8, 0x28d9af82569c29a4 # load x8 with value 0x28d9af82569c29a4
sd x8, 200(x13) # store 0x28d9af82569c29a4 in memory
c.fld f11, 200(x13) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 208
li x8, 0xeff905408ccfada5 # load x8 with value 0xeff905408ccfada5
sd x8, 208(x11) # store 0xeff905408ccfada5 in memory
c.fld f13, 208(x11) # perform operation

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, 216
li x9, 0x721a371e2e847b67 # load x9 with value 0x721a371e2e847b67
sd x9, 216(x14) # store 0x721a371e2e847b67 in memory
c.fld f12, 216(x14) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 224
li x8, 0xc187f120cc56a4d6 # load x8 with value 0xc187f120cc56a4d6
sd x8, 224(x11) # store 0xc187f120cc56a4d6 in memory
c.fld f15, 224(x11) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 232
li x8, 0x59135deb43e13dc1 # load x8 with value 0x59135deb43e13dc1
sd x8, 232(x13) # store 0x59135deb43e13dc1 in memory
c.fld f15, 232(x13) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 240
li x8, 0x159bf4ecee61f71f # load x8 with value 0x159bf4ecee61f71f
sd x8, 240(x11) # store 0x159bf4ecee61f71f in memory
c.fld f12, 240(x11) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 248
li x8, 0xa83ae36f5369ae83 # load x8 with value 0xa83ae36f5369ae83
sd x8, 248(x10) # store 0xa83ae36f5369ae83 in memory
c.fld f9, 248(x10) # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fsdsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_imm_mul
li x10, 0x84929a36d501c9cc # initialize rs2
fmv.d.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f10, 256(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xe397623c60ba390d # initialize rs2
fmv.d.x f31, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.fsdsp f31, 264(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x3faaefbb0a4ea679 # initialize rs2
fmv.d.x f30, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.fsdsp f30, 272(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x0f8d6b8c281ad254 # initialize rs2
fmv.d.x f7, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.fsdsp f7, 280(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xcb415d520aab592c # initialize rs2
fmv.d.x f14, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f14, 288(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x45d4b101fcd1585a # initialize rs2
fmv.d.x f3, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f3, 296(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf33585c0bf6ecc3d # initialize rs2
fmv.d.x f3, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.fsdsp f3, 304(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x672b6bd5b3ce7bc2 # initialize rs2
fmv.d.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f10, 312(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x7d47f673c62837c8 # initialize rs2
fmv.d.x f21, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.fsdsp f21, 320(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xd05f1aafd683b97b # initialize rs2
fmv.d.x f18, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.fsdsp f18, 328(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xafa30d2f26654d21 # initialize rs2
fmv.d.x f14, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.fsdsp f14, 336(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xab4ae304954f5840 # initialize rs2
fmv.d.x f18, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f18, 344(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x5612c311b0b66b4d # initialize rs2
fmv.d.x f31, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f31, 352(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x008d78f475217628 # initialize rs2
fmv.d.x f31, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f31, 360(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xcc6776de53d69d91 # initialize rs2
fmv.d.x f26, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f26, 368(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x012ba1febd106d57 # initialize rs2
fmv.d.x f29, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f29, 376(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x9c9471f43b70a507 # initialize rs2
fmv.d.x f27, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f27, 384(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xb72baa8348a48632 # initialize rs2
fmv.d.x f16, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f16, 392(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xa34edeb0310bbaf5 # initialize rs2
fmv.d.x f30, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f30, 400(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x85fff751c97466ca # initialize rs2
fmv.d.x f25, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.fsdsp f25, 408(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x1fe1ad4c3ed74bd9 # initialize rs2
fmv.d.x f31, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f31, 416(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x26c03232cecc9e4c # initialize rs2
fmv.d.x f6, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.fsdsp f6, 424(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xb5a9a2f67373e557 # initialize rs2
fmv.d.x f15, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.fsdsp f15, 432(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x8970b6c6c3da6ffa # initialize rs2
fmv.d.x f14, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.fsdsp f14, 440(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x588fbf0218fd5939 # initialize rs2
fmv.d.x f15, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f15, 448(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x0809501c6d975acb # initialize rs2
fmv.d.x f19, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.fsdsp f19, 456(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x48bee01dcff244a5 # initialize rs2
fmv.d.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f16, 464(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3e50330902a3119f # initialize rs2
fmv.d.x f10, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f10, 472(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x929ab969d0ef3fc8 # initialize rs2
fmv.d.x f7, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.fsdsp f7, 480(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xc1e6f5209d9ffc4d # initialize rs2
fmv.d.x f28, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.fsdsp f28, 488(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x04713b564d422392 # initialize rs2
fmv.d.x f18, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f18, 496(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf2adee2d62bc4fb8 # initialize rs2
fmv.d.x f3, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f3, 504(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x1a1a764a9027cdde # initialize rs2
fmv.d.x f2, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f2, 0(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xf75518c7d025caae # initialize rs2
fmv.d.x f2, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.fsdsp f2, 8(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xe3c952d8aeb94937 # initialize rs2
fmv.d.x f31, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f31, 16(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xbc9557efe90a8ac3 # initialize rs2
fmv.d.x f22, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f22, 24(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x8f98682dc71ed4ca # initialize rs2
fmv.d.x f5, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fsdsp f5, 32(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x0b0b032c68207823 # initialize rs2
fmv.d.x f9, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fsdsp f9, 40(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x1146f6262f213c99 # initialize rs2
fmv.d.x f8, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f8, 48(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x913baea730370ccc # initialize rs2
fmv.d.x f18, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.fsdsp f18, 56(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x8e97f44292843d65 # initialize rs2
fmv.d.x f20, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f20, 64(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x7f0dc95b8f7d8c72 # initialize rs2
fmv.d.x f23, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f23, 72(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x41b2a3ba9dbb333a # initialize rs2
fmv.d.x f20, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f20, 80(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x0bc3f8258e2c81a6 # initialize rs2
fmv.d.x f5, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.fsdsp f5, 88(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x87c1f197f2bbd29a # initialize rs2
fmv.d.x f30, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f30, 96(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x893f27c8e668a432 # initialize rs2
fmv.d.x f31, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f31, 104(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf131a12818d05852 # initialize rs2
fmv.d.x f12, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f12, 112(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xfc072b44f5b62818 # initialize rs2
fmv.d.x f14, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f14, 120(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x0233fbfde2f10957 # initialize rs2
fmv.d.x f12, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fsdsp f12, 128(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x56657d00c0f35a68 # initialize rs2
fmv.d.x f26, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f26, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd26c5db228b7ce76 # initialize rs2
fmv.d.x f27, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f27, 144(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x86eec2b90899cb06 # initialize rs2
fmv.d.x f10, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.fsdsp f10, 152(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xa80017057e9800d2 # initialize rs2
fmv.d.x f9, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f9, 160(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xb8325f2e585c83f8 # initialize rs2
fmv.d.x f3, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.fsdsp f3, 168(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x86067b1ce4b464e9 # initialize rs2
fmv.d.x f26, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f26, 176(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xadb0865483e3d3f0 # initialize rs2
fmv.d.x f15, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f15, 184(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x85720faf117c3c58 # initialize rs2
fmv.d.x f27, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f27, 192(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x58e755b0fc45a7f0 # initialize rs2
fmv.d.x f9, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f9, 200(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x7e1600fa09e0d0ed # initialize rs2
fmv.d.x f11, x5 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fsdsp f11, 208(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x45f0a78412834d6d # initialize rs2
fmv.d.x f25, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f25, 216(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf69f7ba82e6f8ccb # initialize rs2
fmv.d.x f3, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fsdsp f3, 224(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x2259c211f1c0e8fe # initialize rs2
fmv.d.x f25, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fsdsp f25, 232(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x9ac3bb015c83d7ea # initialize rs2
fmv.d.x f2, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.fsdsp f2, 240(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x3f050ebef19e9188 # initialize rs2
fmv.d.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f24, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x0, 0x08a9a24a09068c74 # initialize rs2
fmv.d.x f0, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f0, 400(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0xcd46ca8d7cfd9acb # initialize rs2
fmv.d.x f1, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f1, 368(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x2, 0x39e5e522178ca32e # initialize rs2
fmv.d.x f2, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f2, 496(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0x0e782d7d4a1c1b57 # initialize rs2
fmv.d.x f3, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f3, 112(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc144dbe96b1bed41 # initialize rs2
fmv.d.x f4, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f4, 464(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7d33a6d25761d11f # initialize rs2
fmv.d.x f5, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f5, 416(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x114f6647ae4b6ccc # initialize rs2
fmv.d.x f6, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f6, 112(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xebfec1929e4413a9 # initialize rs2
fmv.d.x f7, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f7, 288(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0xaa3f0f4e5f30a20e # initialize rs2
fmv.d.x f8, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f8, 216(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0xbab5a05bba71c6f9 # initialize rs2
fmv.d.x f9, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f9, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x6417e30f4d691b1f # initialize rs2
fmv.d.x f10, x4 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f10, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x79b91849892855af # initialize rs2
fmv.d.x f11, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f11, 392(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0x66f096bc7007341e # initialize rs2
fmv.d.x f12, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f12, 96(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x27fd107151ee8774 # initialize rs2
fmv.d.x f13, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f13, 288(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x6760d8a5dbe70193 # initialize rs2
fmv.d.x f14, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f14, 72(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x4cc2114403c8c47f # initialize rs2
fmv.d.x f15, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f15, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x16, 0x54cb6d9773907ed4 # initialize rs2
fmv.d.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f16, 184(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x17, 0x9ce046e4e50ff456 # initialize rs2
fmv.d.x f17, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f17, 472(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0xcfc7a9fc4a86ed9f # initialize rs2
fmv.d.x f18, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f18, 384(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0x4ef567a3828be9fc # initialize rs2
fmv.d.x f19, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f19, 448(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0xd5a7f4716a65d2c4 # initialize rs2
fmv.d.x f20, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f20, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x3f30326da24e740a # initialize rs2
fmv.d.x f21, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f21, 136(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x3baca468ae5dc300 # initialize rs2
fmv.d.x f22, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f22, 216(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x23, 0x009d15168bc628e7 # initialize rs2
fmv.d.x f23, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f23, 120(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0x73d643a19ebb4a3b # initialize rs2
fmv.d.x f24, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f24, 16(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x66e06d43e0ca004c # initialize rs2
fmv.d.x f25, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f25, 104(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0xd75225fa07cd5040 # initialize rs2
fmv.d.x f26, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f26, 200(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0xa04dd3d092e927a2 # initialize rs2
fmv.d.x f27, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f27, 48(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0x06a91e38dc0b9226 # initialize rs2
fmv.d.x f28, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f28, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0xd7c228da05253f06 # initialize rs2
fmv.d.x f29, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f29, 256(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x637f08a1037fbe86 # initialize rs2
fmv.d.x f30, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f30, 352(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0xf30672752ddc8195 # initialize rs2
fmv.d.x f31, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f31, 192(sp)# perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fsd.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x13, 0x4ff9aa9fb8e0c885 # initialize rs2 with random value
sd x13, 0(x8) # store 0x4ff9aa9fb8e0c885 in memory
fld f13, 0(x8) # load 0x4ff9aa9fb8e0c885 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.fsd f13, 16(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x11, 0x7a7665449eab03ae # initialize rs2 with random value
sd x11, 0(x9) # store 0x7a7665449eab03ae in memory
fld f11, 0(x9) # load 0x7a7665449eab03ae from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -72 # sub immediate from rs1 to counter offset
c.fsd f11, 72(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x8, 0x7cd3d5eeb7821219 # initialize rs2 with random value
sd x8, 0(x10) # store 0x7cd3d5eeb7821219 in memory
fld f8, 0(x10) # load 0x7cd3d5eeb7821219 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.fsd f8, 72(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x13, 0x0d00f81c54738f01 # initialize rs2 with random value
sd x13, 0(x11) # store 0xd00f81c54738f01 in memory
fld f13, 0(x11) # load 0xd00f81c54738f01 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -152 # sub immediate from rs1 to counter offset
c.fsd f13, 152(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x15, 0x1ddec25225f5bde9 # initialize rs2 with random value
sd x15, 0(x12) # store 0x1ddec25225f5bde9 in memory
fld f15, 0(x12) # load 0x1ddec25225f5bde9 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.fsd f15, 72(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x14, 0xc3adadd3a0593e73 # initialize rs2 with random value
sd x14, 0(x13) # store 0xc3adadd3a0593e73 in memory
fld f14, 0(x13) # load 0xc3adadd3a0593e73 from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -136 # sub immediate from rs1 to counter offset
c.fsd f14, 136(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x12, 0x81936c6826070b6b # initialize rs2 with random value
sd x12, 0(x14) # store 0x81936c6826070b6b in memory
fld f12, 0(x14) # load 0x81936c6826070b6b from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.fsd f12, 32(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0x503842e39d7c3c8c # initialize rs2 with random value
sd x9, 0(x15) # store 0x503842e39d7c3c8c in memory
fld f9, 0(x15) # load 0x503842e39d7c3c8c from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.fsd f9, 168(x15) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f8)
la x11, scratch # base address
li x8, 0xbdbdf568f978594b # initialize rs2 with random value
sd x8, 0(x11) # store 0xbdbdf568f978594b in memory
fld f8, 0(x11) # load 0xbdbdf568f978594b from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -192 # sub immediate from rs1 to counter offset
c.fsd f8, 192(x11) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f9)
la x8, scratch # base address
li x9, 0xaa42b9176e220a3f # initialize rs2 with random value
sd x9, 0(x8) # store 0xaa42b9176e220a3f in memory
fld f9, 0(x8) # load 0xaa42b9176e220a3f from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.fsd f9, 8(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f10)
la x12, scratch # base address
li x10, 0x93e4c164cb018792 # initialize rs2 with random value
sd x10, 0(x12) # store 0x93e4c164cb018792 in memory
fld f10, 0(x12) # load 0x93e4c164cb018792 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -224 # sub immediate from rs1 to counter offset
c.fsd f10, 224(x12) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f11)
la x14, scratch # base address
li x11, 0xa8a3bed0640b1ae7 # initialize rs2 with random value
sd x11, 0(x14) # store 0xa8a3bed0640b1ae7 in memory
fld f11, 0(x14) # load 0xa8a3bed0640b1ae7 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -208 # sub immediate from rs1 to counter offset
c.fsd f11, 208(x14) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f12)
la x8, scratch # base address
li x12, 0x6f73fa6f9d96b555 # initialize rs2 with random value
sd x12, 0(x8) # store 0x6f73fa6f9d96b555 in memory
fld f12, 0(x8) # load 0x6f73fa6f9d96b555 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f12, 80(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f13)
la x12, scratch # base address
li x13, 0xfa9a03b37145a788 # initialize rs2 with random value
sd x13, 0(x12) # store 0xfa9a03b37145a788 in memory
fld f13, 0(x12) # load 0xfa9a03b37145a788 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -152 # sub immediate from rs1 to counter offset
c.fsd f13, 152(x12) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f14)
la x9, scratch # base address
li x14, 0xd5b58af1dbcdab92 # initialize rs2 with random value
sd x14, 0(x9) # store 0xd5b58af1dbcdab92 in memory
fld f14, 0(x9) # load 0xd5b58af1dbcdab92 from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.fsd f14, 200(x9) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f15)
la x14, scratch # base address
li x15, 0xd7add635b0e04469 # initialize rs2 with random value
sd x15, 0(x14) # store 0xd7add635b0e04469 in memory
fld f15, 0(x14) # load 0xd7add635b0e04469 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f15, 80(x14) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x3b5595edae3020b9 # initialize rs2 with random value
sd x9, 0(x15) # store 0x3b5595edae3020b9 in memory
fld f9, 0(x15) # load 0x3b5595edae3020b9 from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0x72df8a33ba6451cc # initialize rs2 with random value
sd x10, 0(x13) # store 0x72df8a33ba6451cc in memory
fld f10, 0(x13) # load 0x72df8a33ba6451cc from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.fsd f10, 8(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x8ff5c78696acf65a # initialize rs2 with random value
sd x10, 0(x9) # store 0x8ff5c78696acf65a in memory
fld f10, 0(x9) # load 0x8ff5c78696acf65a from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.fsd f10, 16(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x48f14e7624c6733c # initialize rs2 with random value
sd x12, 0(x13) # store 0x48f14e7624c6733c in memory
fld f12, 0(x13) # load 0x48f14e7624c6733c from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsd f12, 24(x13) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xc454369588ecd07b # initialize rs2 with random value
sd x15, 0(x10) # store 0xc454369588ecd07b in memory
fld f15, 0(x10) # load 0xc454369588ecd07b from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.fsd f15, 32(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x85dedbe7f538a8e9 # initialize rs2 with random value
sd x13, 0(x10) # store 0x85dedbe7f538a8e9 in memory
fld f13, 0(x10) # load 0x85dedbe7f538a8e9 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.fsd f13, 40(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0x8fff180ad84f1492 # initialize rs2 with random value
sd x8, 0(x9) # store 0x8fff180ad84f1492 in memory
fld f8, 0(x9) # load 0x8fff180ad84f1492 from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.fsd f8, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x04d8a63625152bcc # initialize rs2 with random value
sd x12, 0(x10) # store 0x4d8a63625152bcc in memory
fld f12, 0(x10) # load 0x4d8a63625152bcc from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.fsd f12, 56(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x8d4bf659f4d6c0c9 # initialize rs2 with random value
sd x15, 0(x8) # store 0x8d4bf659f4d6c0c9 in memory
fld f15, 0(x8) # load 0x8d4bf659f4d6c0c9 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsd f15, 64(x8) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xc0a816d3fee4296f # initialize rs2 with random value
sd x14, 0(x13) # store 0xc0a816d3fee4296f in memory
fld f14, 0(x13) # load 0xc0a816d3fee4296f from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.fsd f14, 72(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x953eb4a0b97d4865 # initialize rs2 with random value
sd x8, 0(x14) # store 0x953eb4a0b97d4865 in memory
fld f8, 0(x14) # load 0x953eb4a0b97d4865 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f8, 80(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x8d2a64ef28c14d04 # initialize rs2 with random value
sd x15, 0(x11) # store 0x8d2a64ef28c14d04 in memory
fld f15, 0(x11) # load 0x8d2a64ef28c14d04 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.fsd f15, 88(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0x604be1f1cd264cf6 # initialize rs2 with random value
sd x9, 0(x11) # store 0x604be1f1cd264cf6 in memory
fld f9, 0(x11) # load 0x604be1f1cd264cf6 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.fsd f9, 96(x11) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0x7003a5fade83352f # initialize rs2 with random value
sd x13, 0(x15) # store 0x7003a5fade83352f in memory
fld f13, 0(x15) # load 0x7003a5fade83352f from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.fsd f13, 104(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xb0736505fe6d6c4a # initialize rs2 with random value
sd x14, 0(x13) # store 0xb0736505fe6d6c4a in memory
fld f14, 0(x13) # load 0xb0736505fe6d6c4a from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.fsd f14, 112(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0x4a197ed2d01c72cf # initialize rs2 with random value
sd x13, 0(x8) # store 0x4a197ed2d01c72cf in memory
fld f13, 0(x8) # load 0x4a197ed2d01c72cf from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -120 # sub immediate from rs1 to counter offset
c.fsd f13, 120(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x5cb35081a3feb824 # initialize rs2 with random value
sd x12, 0(x10) # store 0x5cb35081a3feb824 in memory
fld f12, 0(x10) # load 0x5cb35081a3feb824 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -128 # sub immediate from rs1 to counter offset
c.fsd f12, 128(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0xa34a97b119d17e75 # initialize rs2 with random value
sd x13, 0(x10) # store 0xa34a97b119d17e75 in memory
fld f13, 0(x10) # load 0xa34a97b119d17e75 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.fsd f13, 136(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x285e4c3ad8a4ca1f # initialize rs2 with random value
sd x12, 0(x10) # store 0x285e4c3ad8a4ca1f in memory
fld f12, 0(x10) # load 0x285e4c3ad8a4ca1f from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -144 # sub immediate from rs1 to counter offset
c.fsd f12, 144(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x11, 0xfc98ebac3f1ee7d3 # initialize rs2 with random value
sd x11, 0(x8) # store 0xfc98ebac3f1ee7d3 in memory
fld f11, 0(x8) # load 0xfc98ebac3f1ee7d3 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -152 # sub immediate from rs1 to counter offset
c.fsd f11, 152(x8) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0x5b0b77183199f84a # initialize rs2 with random value
sd x10, 0(x14) # store 0x5b0b77183199f84a in memory
fld f10, 0(x14) # load 0x5b0b77183199f84a from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -160 # sub immediate from rs1 to counter offset
c.fsd f10, 160(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x10, 0x1a15f3af5a0cb295 # initialize rs2 with random value
sd x10, 0(x8) # store 0x1a15f3af5a0cb295 in memory
fld f10, 0(x8) # load 0x1a15f3af5a0cb295 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.fsd f10, 168(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x11, 0x9cf7fe64851f9add # initialize rs2 with random value
sd x11, 0(x12) # store 0x9cf7fe64851f9add in memory
fld f11, 0(x12) # load 0x9cf7fe64851f9add from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.fsd f11, 176(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x1198f3718e5813d5 # initialize rs2 with random value
sd x9, 0(x12) # store 0x1198f3718e5813d5 in memory
fld f9, 0(x12) # load 0x1198f3718e5813d5 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -184 # sub immediate from rs1 to counter offset
c.fsd f9, 184(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x644064ccb215a226 # initialize rs2 with random value
sd x13, 0(x10) # store 0x644064ccb215a226 in memory
fld f13, 0(x10) # load 0x644064ccb215a226 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -192 # sub immediate from rs1 to counter offset
c.fsd f13, 192(x10) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x13, 0x02acf6ce35da9f46 # initialize rs2 with random value
sd x13, 0(x14) # store 0x2acf6ce35da9f46 in memory
fld f13, 0(x14) # load 0x2acf6ce35da9f46 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -200 # sub immediate from rs1 to counter offset
c.fsd f13, 200(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x12, 0xe643845c8cfb7b62 # initialize rs2 with random value
sd x12, 0(x11) # store 0xe643845c8cfb7b62 in memory
fld f12, 0(x11) # load 0xe643845c8cfb7b62 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.fsd f12, 208(x11) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0xd2862fa0a1158171 # initialize rs2 with random value
sd x11, 0(x10) # store 0xd2862fa0a1158171 in memory
fld f11, 0(x10) # load 0xd2862fa0a1158171 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -216 # sub immediate from rs1 to counter offset
c.fsd f11, 216(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x11, 0xa2e7d140a19427e1 # initialize rs2 with random value
sd x11, 0(x8) # store 0xa2e7d140a19427e1 in memory
fld f11, 0(x8) # load 0xa2e7d140a19427e1 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.fsd f11, 224(x8) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0xc4da3ecd8d8d771c # initialize rs2 with random value
sd x8, 0(x9) # store 0xc4da3ecd8d8d771c in memory
fld f8, 0(x9) # load 0xc4da3ecd8d8d771c from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -232 # sub immediate from rs1 to counter offset
c.fsd f8, 232(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0xc4bd51a6bd6e10ca # initialize rs2 with random value
sd x9, 0(x8) # store 0xc4bd51a6bd6e10ca in memory
fld f9, 0(x8) # load 0xc4bd51a6bd6e10ca from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -240 # sub immediate from rs1 to counter offset
c.fsd f9, 240(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0xbb786ef2f77c474f # initialize rs2 with random value
sd x9, 0(x11) # store 0xbb786ef2f77c474f in memory
fld f9, 0(x11) # load 0xbb786ef2f77c474f from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.fsd f9, 248(x11) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fldsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_imm_mul
li x22, 0x011509641209b656 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sd x15, 0(sp)   # store value to put something in memory
c.fldsp f22, 0(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xc5cebb4a26f9ebd4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sd x20, 8(sp)   # store value to put something in memory
c.fldsp f17, 8(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x0d7569d522dd13e0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
sd x3, 16(sp)   # store value to put something in memory
c.fldsp f23, 16(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x827c1e6ae164aee9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
sd x13, 24(sp)   # store value to put something in memory
c.fldsp f25, 24(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x66c0c5d717cc8f68 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sd x29, 32(sp)   # store value to put something in memory
c.fldsp f18, 32(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0xdc6ec28a7b43e8b2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sd x15, 40(sp)   # store value to put something in memory
c.fldsp f28, 40(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xaf35d4b2bcc4a0e7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sd x23, 48(sp)   # store value to put something in memory
c.fldsp f16, 48(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x2f681f7f3638ff67 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
sd x3, 56(sp)   # store value to put something in memory
c.fldsp f31, 56(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x1cf6d7f4c9412373 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
sd x15, 64(sp)   # store value to put something in memory
c.fldsp f12, 64(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x152964cabc7d191c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sd x30, 72(sp)   # store value to put something in memory
c.fldsp f31, 72(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0xaddc2d5f9d1af773 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sd x11, 80(sp)   # store value to put something in memory
c.fldsp f23, 80(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x2a2b93bee1b1a2a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sd x30, 88(sp)   # store value to put something in memory
c.fldsp f18, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x3a35e6c17fbd28b4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sd x29, 96(sp)   # store value to put something in memory
c.fldsp f16, 96(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xd9cfaa758bf60fa8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sd x23, 104(sp)   # store value to put something in memory
c.fldsp f10, 104(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x55480be75ef58436 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
sd x7, 112(sp)   # store value to put something in memory
c.fldsp f29, 112(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x7bde4b5d57a6779b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
sd x10, 120(sp)   # store value to put something in memory
c.fldsp f19, 120(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x6c464d75b4adfcff # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sd x24, 128(sp)   # store value to put something in memory
c.fldsp f29, 128(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xb6ca574e3b07a099 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
sd x17, 136(sp)   # store value to put something in memory
c.fldsp f10, 136(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x58deb9693ccc274d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sd x30, 144(sp)   # store value to put something in memory
c.fldsp f25, 144(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf228740d96c72f32 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sd x26, 152(sp)   # store value to put something in memory
c.fldsp f2, 152(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xfbccbef882ee7f7d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sd x10, 160(sp)   # store value to put something in memory
c.fldsp f6, 160(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x0270c4252700eadf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sd x13, 168(sp)   # store value to put something in memory
c.fldsp f28, 168(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xf1cabca0e6317fe8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sd x26, 176(sp)   # store value to put something in memory
c.fldsp f22, 176(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xd2f225d6880a58a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sd x21, 184(sp)   # store value to put something in memory
c.fldsp f17, 184(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xd9031525a5956735 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
sd x12, 192(sp)   # store value to put something in memory
c.fldsp f10, 192(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x5df6864078c18690 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
sd x28, 200(sp)   # store value to put something in memory
c.fldsp f9, 200(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x6516244f1eea3e4d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sd x6, 208(sp)   # store value to put something in memory
c.fldsp f12, 208(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x3703ff3d4634f191 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sd x12, 216(sp)   # store value to put something in memory
c.fldsp f11, 216(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x462fd959150ca198 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sd x23, 224(sp)   # store value to put something in memory
c.fldsp f24, 224(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x7dc9b5adc6aa7b31 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sd x13, 232(sp)   # store value to put something in memory
c.fldsp f19, 232(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xe33f0219bf5b6e3b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sd x11, 240(sp)   # store value to put something in memory
c.fldsp f5, 240(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x3708480f795acb3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
sd x25, 248(sp)   # store value to put something in memory
c.fldsp f29, 248(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x367e50434d383342 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sd x2, 256(sp)   # store value to put something in memory
c.fldsp f12, 256(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xf872a5a6447e2b61 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
sd x22, 264(sp)   # store value to put something in memory
c.fldsp f15, 264(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x07fb0d7f1b4d6192 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
sd x17, 272(sp)   # store value to put something in memory
c.fldsp f30, 272(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x99feb1a9fea72447 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sd x29, 280(sp)   # store value to put something in memory
c.fldsp f12, 280(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x4e880035c6f7b5d0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x11, 288(sp)   # store value to put something in memory
c.fldsp f2, 288(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x8b5e50b4864b731f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x7, 296(sp)   # store value to put something in memory
c.fldsp f25, 296(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xd7eb7de0f23b92cd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x26, 304(sp)   # store value to put something in memory
c.fldsp f27, 304(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x99018a074bf9fc90 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sd x9, 312(sp)   # store value to put something in memory
c.fldsp f26, 312(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x72a13b16a369a20c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sd x27, 320(sp)   # store value to put something in memory
c.fldsp f17, 320(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x2c5fbce52f803537 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x27, 328(sp)   # store value to put something in memory
c.fldsp f31, 328(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x585d353076d0c7d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
sd x11, 336(sp)   # store value to put something in memory
c.fldsp f14, 336(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xcba3f2a8236f5008 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
sd x18, 344(sp)   # store value to put something in memory
c.fldsp f12, 344(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x64d96f62a022ee7e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x29, 352(sp)   # store value to put something in memory
c.fldsp f24, 352(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd80e3ba898726d71 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sd x12, 360(sp)   # store value to put something in memory
c.fldsp f16, 360(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x94fdefb0ad23d20a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sd x15, 368(sp)   # store value to put something in memory
c.fldsp f26, 368(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x18eb8c09d66d850b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
sd x20, 376(sp)   # store value to put something in memory
c.fldsp f15, 376(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xe3792835ec74af1e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sd x19, 384(sp)   # store value to put something in memory
c.fldsp f18, 384(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x6ea3a59c83c1dd37 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sd x24, 392(sp)   # store value to put something in memory
c.fldsp f28, 392(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf1796ba5a2b2f131 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sd x3, 400(sp)   # store value to put something in memory
c.fldsp f18, 400(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x7fa03f638e217b77 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x17, 408(sp)   # store value to put something in memory
c.fldsp f5, 408(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xc9fe1745a1b8f481 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
sd x7, 416(sp)   # store value to put something in memory
c.fldsp f29, 416(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x576e0e7f68c7b71c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sd x3, 424(sp)   # store value to put something in memory
c.fldsp f27, 424(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x44c12629395c08b0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sd x29, 432(sp)   # store value to put something in memory
c.fldsp f14, 432(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf6addb48fc3be275 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
sd x24, 440(sp)   # store value to put something in memory
c.fldsp f18, 440(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x96dfd40af4a87aa5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sd x15, 448(sp)   # store value to put something in memory
c.fldsp f8, 448(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x82aa00c5dba905bf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sd x31, 456(sp)   # store value to put something in memory
c.fldsp f5, 456(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x0834b6d5a55e9523 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
sd x7, 464(sp)   # store value to put something in memory
c.fldsp f16, 464(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x139c59f9dabc7f26 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
sd x9, 472(sp)   # store value to put something in memory
c.fldsp f15, 472(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x7feaac9765a8e6fc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
sd x11, 480(sp)   # store value to put something in memory
c.fldsp f3, 480(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x66e61df046350c8d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sd x29, 488(sp)   # store value to put something in memory
c.fldsp f24, 488(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x18b9f6b43d4663b2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sd x28, 496(sp)   # store value to put something in memory
c.fldsp f30, 496(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x20b85b7a9b88d107 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
sd x9, 504(sp)   # store value to put something in memory
c.fldsp f13, 504(sp) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x64225d271efb8bb0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x22, 296(sp)   # store value to put something in memory
c.fldsp f0, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xd18ae11a83937455 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sd x13, 32(sp)   # store value to put something in memory
c.fldsp f1, 32(sp) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe0101b46ceda3ebf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x14, 304(sp)   # store value to put something in memory
c.fldsp f2, 304(sp) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd61f1e4014cc7e7e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x31, 352(sp)   # store value to put something in memory
c.fldsp f3, 352(sp) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1b8488a75c8b3fd8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sd x1, 360(sp)   # store value to put something in memory
c.fldsp f4, 360(sp) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8b2b7cd003f1a3aa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sd x24, 208(sp)   # store value to put something in memory
c.fldsp f5, 208(sp) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf05f44ee6f13c2c1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x23, 408(sp)   # store value to put something in memory
c.fldsp f6, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x93ec57051f85d841 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x23, 352(sp)   # store value to put something in memory
c.fldsp f7, 352(sp) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xc5cf0c90374ac0b6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x10, 408(sp)   # store value to put something in memory
c.fldsp f8, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xba2ef1ab0e338b19 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x9, 288(sp)   # store value to put something in memory
c.fldsp f9, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x1922232d57ea1f4a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x8, 328(sp)   # store value to put something in memory
c.fldsp f10, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xd0e1ef8b4bec1ff8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sd x8, 48(sp)   # store value to put something in memory
c.fldsp f11, 48(sp) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xabd44f2c90ad4324 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sd x17, 224(sp)   # store value to put something in memory
c.fldsp f12, 224(sp) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xea792f717dcb11e7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x29, 328(sp)   # store value to put something in memory
c.fldsp f13, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x7a2c2e846e05098f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sd x23, 152(sp)   # store value to put something in memory
c.fldsp f14, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4d52421785c50d2b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sd x14, 232(sp)   # store value to put something in memory
c.fldsp f15, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2b682a055eceafed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sd x20, 144(sp)   # store value to put something in memory
c.fldsp f16, 144(sp) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x6a66d7c5445bf22d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sd x3, 488(sp)   # store value to put something in memory
c.fldsp f17, 488(sp) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x62ef9b39b39d1600 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x30, 328(sp)   # store value to put something in memory
c.fldsp f18, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe900b354ab24843a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sd x19, 176(sp)   # store value to put something in memory
c.fldsp f19, 176(sp) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x925405a279814c39 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sd x31, 424(sp)   # store value to put something in memory
c.fldsp f20, 424(sp) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x20cebc0429fd0f1c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sd x28, 432(sp)   # store value to put something in memory
c.fldsp f21, 432(sp) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xed4c8bca1c5acbba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sd x30, 368(sp)   # store value to put something in memory
c.fldsp f22, 368(sp) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6fe4469d73f6ca9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sd x1, 0(sp)   # store value to put something in memory
c.fldsp f23, 0(sp) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xeb6d9a41ec2b3d78 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sd x7, 216(sp)   # store value to put something in memory
c.fldsp f24, 216(sp) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc72d21bebaae283b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sd x6, 40(sp)   # store value to put something in memory
c.fldsp f25, 40(sp) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x8153f73f7e696ffb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x25, 296(sp)   # store value to put something in memory
c.fldsp f26, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x0877a5fdbb0f86d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sd x22, 256(sp)   # store value to put something in memory
c.fldsp f27, 256(sp) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa7065f950730d612 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x23, 288(sp)   # store value to put something in memory
c.fldsp f28, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xf635561db28e0e81 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sd x2, 88(sp)   # store value to put something in memory
c.fldsp f29, 88(sp) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe7ab54538c7cc2f9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sd x20, 456(sp)   # store value to put something in memory
c.fldsp f30, 456(sp) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xeaccecd2ae4f0b04 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x9, 304(sp)   # store value to put something in memory
c.fldsp f31, 304(sp) # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,0 #combined


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
