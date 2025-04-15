///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfhD/WALLY-COV-fround.h.S
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
li x3, 0xe9a228db652c8d8c # load x3 with value 0xe9a228db652c8d8c
sd x3, 0(x2) # store 0xe9a228db652c8d8c in memory
flh f14, 0(x2) # load 0xe9a228db652c8d8c from memory into f14
fround.h f1, f14 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x0 in f11)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
flw f11, 0(x2) # load 0x0000000000000000 from memory into f11
fround.h f28, f11 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000fffe8000 # load x3 with value 0x00000000fffe8000
sd x3, 0(x2) # store 0x00000000fffe8000 in memory
flw f19, 0(x2) # load 0x00000000fffe8000 from memory into f19
fround.h f30, f19 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x7fff3c00 in f10)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000007fff3c00 # load x3 with value 0x000000007fff3c00
sd x3, 0(x2) # store 0x000000007fff3c00 in memory
flw f10, 0(x2) # load 0x000000007fff3c00 from memory into f10
fround.h f8, f10 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xbeefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000beefbc00 # load x3 with value 0x00000000beefbc00
sd x3, 0(x2) # store 0x00000000beefbc00 in memory
flw f13, 0(x2) # load 0x00000000beefbc00 from memory into f13
fround.h f26, f13 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeff0400 in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feff0400 # load x3 with value 0x00000000feff0400
sd x3, 0(x2) # store 0x00000000feff0400 in memory
flw f12, 0(x2) # load 0x00000000feff0400 from memory into f12
fround.h f26, f12 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfff8400 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000fff8400 # load x3 with value 0x000000000fff8400
sd x3, 0(x2) # store 0x000000000fff8400 in memory
flw f6, 0(x2) # load 0x000000000fff8400 from memory into f6
fround.h f31, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xefff7bff in f3)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000efff7bff # load x3 with value 0x00000000efff7bff
sd x3, 0(x2) # store 0x00000000efff7bff in memory
flw f3, 0(x2) # load 0x00000000efff7bff from memory into f3
fround.h f16, f3 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xc0defbff in f7)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000c0defbff # load x3 with value 0x00000000c0defbff
sd x3, 0(x2) # store 0x00000000c0defbff in memory
flw f7, 0(x2) # load 0x00000000c0defbff from memory into f7
fround.h f2, f7 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004f1a7c00 # load x3 with value 0x000000004f1a7c00
sd x3, 0(x2) # store 0x000000004f1a7c00 in memory
flw f28, 0(x2) # load 0x000000004f1a7c00 from memory into f28
fround.h f24, f28 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000000ffffc00 # load x3 with value 0x000000000ffffc00
sd x3, 0(x2) # store 0x000000000ffffc00 in memory
flw f6, 0(x2) # load 0x000000000ffffc00 from memory into f6
fround.h f29, f6 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xffef7e00 in f9)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffef7e00 # load x3 with value 0x00000000ffef7e00
sd x3, 0(x2) # store 0x00000000ffef7e00 in memory
flw f9, 0(x2) # load 0x00000000ffef7e00 from memory into f9
fround.h f2, f9 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xfeef7fff in f8)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000feef7fff # load x3 with value 0x00000000feef7fff
sd x3, 0(x2) # store 0x00000000feef7fff in memory
flw f8, 0(x2) # load 0x00000000feef7fff from memory into f8
fround.h f17, f8 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0xa1b27c01 in f18)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000a1b27c01 # load x3 with value 0x00000000a1b27c01
sd x3, 0(x2) # store 0x00000000a1b27c01 in memory
flw f18, 0(x2) # load 0x00000000a1b27c01 from memory into f18
fround.h f14, f18 # perform operation second time to make sure flags don't change

# Testcase Improper NaNBoxed argument test (Value 0x4fd77dff in f12)
fsflagsi 0b00000 # clear all fflags
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000004fd77dff # load x3 with value 0x000000004fd77dff
sd x3, 0(x2) # store 0x000000004fd77dff in memory
flw f12, 0(x2) # load 0x000000004fd77dff from memory into f12
fround.h f9, f12 # perform operation second time to make sure flags don't change

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
