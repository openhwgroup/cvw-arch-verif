///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfaZfhD/WALLY-COV-fround.h.S
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


# Testcase Random test for cp_NaNBox 
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000026a88930 # load x3 with value 0x0000000026a88930
sw x3, 0(x2) # store 0x0000000026a88930 in memory
flh f14, 0(x2) # load 0x0000000026a88930 from memory into f14
fround.h f16, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flw f11, 0(x2) # load 0x0000000000000000 from memory into f11
fround.h f20, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fffe8000 # load x3 with value 0x00000000fffe8000
sw x3, 0(x2) # store 0x00000000fffe8000 in memory
flw f20, 0(x2) # load 0x00000000fffe8000 from memory into f20
fround.h f19, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f29)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fff3c00 # load x3 with value 0x000000007fff3c00
sw x3, 0(x2) # store 0x000000007fff3c00 in memory
flw f29, 0(x2) # load 0x000000007fff3c00 from memory into f29
fround.h f27, f29 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000beefbc00 # load x3 with value 0x00000000beefbc00
sw x3, 0(x2) # store 0x00000000beefbc00 in memory
flw f22, 0(x2) # load 0x00000000beefbc00 from memory into f22
fround.h f15, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feff0400 # load x3 with value 0x00000000feff0400
sw x3, 0(x2) # store 0x00000000feff0400 in memory
flw f8, 0(x2) # load 0x00000000feff0400 from memory into f8
fround.h f26, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f20)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000fff8400 # load x3 with value 0x000000000fff8400
sw x3, 0(x2) # store 0x000000000fff8400 in memory
flw f20, 0(x2) # load 0x000000000fff8400 from memory into f20
fround.h f16, f20 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000efff7bff # load x3 with value 0x00000000efff7bff
sw x3, 0(x2) # store 0x00000000efff7bff in memory
flw f17, 0(x2) # load 0x00000000efff7bff from memory into f17
fround.h f12, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f22)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0defbff # load x3 with value 0x00000000c0defbff
sw x3, 0(x2) # store 0x00000000c0defbff in memory
flw f22, 0(x2) # load 0x00000000c0defbff from memory into f22
fround.h f21, f22 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004f1a7c00 # load x3 with value 0x000000004f1a7c00
sw x3, 0(x2) # store 0x000000004f1a7c00 in memory
flw f17, 0(x2) # load 0x000000004f1a7c00 from memory into f17
fround.h f13, f17 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f27)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ffffc00 # load x3 with value 0x000000000ffffc00
sw x3, 0(x2) # store 0x000000000ffffc00 in memory
flw f27, 0(x2) # load 0x000000000ffffc00 from memory into f27
fround.h f19, f27 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffef7e00 # load x3 with value 0x00000000ffef7e00
sw x3, 0(x2) # store 0x00000000ffef7e00 in memory
flw f9, 0(x2) # load 0x00000000ffef7e00 from memory into f9
fround.h f15, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feef7fff # load x3 with value 0x00000000feef7fff
sw x3, 0(x2) # store 0x00000000feef7fff in memory
flw f11, 0(x2) # load 0x00000000feef7fff from memory into f11
fround.h f30, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f24)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1b27c01 # load x3 with value 0x00000000a1b27c01
sw x3, 0(x2) # store 0x00000000a1b27c01 in memory
flw f24, 0(x2) # load 0x00000000a1b27c01 from memory into f24
fround.h f18, f24 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004fd77dff # load x3 with value 0x000000004fd77dff
sw x3, 0(x2) # store 0x000000004fd77dff in memory
flw f6, 0(x2) # load 0x000000004fd77dff from memory into f6
fround.h f28, f6 # perform operation second time to make sure flags don't change

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
