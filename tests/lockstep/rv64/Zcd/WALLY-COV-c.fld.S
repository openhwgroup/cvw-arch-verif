///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcd/WALLY-COV-c.fld.S
// David_Harris@hmc.edu

 # testgen_header.S
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

.EQU SIGSIZE,0


 # testgen_footer.S


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
