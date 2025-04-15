///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaD/WALLY-COV-fmaxm.s.S
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
la x2, scratch
li x3, 0xe47d79189992acc9 # load x3 with value 0xe47d79189992acc9
sd x3, 0(x2) # store 0xe47d79189992acc9 in memory
flw f13, 0(x2) # load 0xe47d79189992acc9 from memory into f13
la x2, scratch
li x3, 0x81c04b1db222ff93 # load x3 with value 0x81c04b1db222ff93
sd x3, 0(x2) # store 0x81c04b1db222ff93 in memory
flw f15, 0(x2) # load 0x81c04b1db222ff93 from memory into f15
fmaxm.s f3, f13, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f2, 0(x2) # load 0xffffefff00000000 from memory into f2
la x2, scratch
li x3, 0x8f752114046f714b # load x3 with value 0x8f752114046f714b
sd x3, 0(x2) # store 0x8f752114046f714b in memory
fld f17, 0(x2) # load 0x8f752114046f714b from memory into f17
fmaxm.s f6, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f20, 0(x2) # load 0xaaaaaaaa80000000 from memory into f20
la x2, scratch
li x3, 0x12f1f5cc09838340 # load x3 with value 0x12f1f5cc09838340
sd x3, 0(x2) # store 0x12f1f5cc09838340 in memory
fld f21, 0(x2) # load 0x12f1f5cc09838340 from memory into f21
fmaxm.s f19, f20, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x2, scratch
li x3, 0x8e245d5c08c4c12e # load x3 with value 0x8e245d5c08c4c12e
sd x3, 0(x2) # store 0x8e245d5c08c4c12e in memory
fld f1, 0(x2) # load 0x8e245d5c08c4c12e from memory into f1
fmaxm.s f14, f29, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f3, 0(x2) # load 0xdeadbeefbf800000 from memory into f3
la x2, scratch
li x3, 0x7cc8cde6ccf1e321 # load x3 with value 0x7cc8cde6ccf1e321
sd x3, 0(x2) # store 0x7cc8cde6ccf1e321 in memory
fld f26, 0(x2) # load 0x7cc8cde6ccf1e321 from memory into f26
fmaxm.s f24, f3, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f26, 0(x2) # load 0xa1b2c3d400800000 from memory into f26
la x2, scratch
li x3, 0x6f6e06c89904f809 # load x3 with value 0x6f6e06c89904f809
sd x3, 0(x2) # store 0x6f6e06c89904f809 in memory
fld f5, 0(x2) # load 0x6f6e06c89904f809 from memory into f5
fmaxm.s f29, f26, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f25, 0(x2) # load 0xffffffef80800000 from memory into f25
la x2, scratch
li x3, 0xb6d66b75460a0e0e # load x3 with value 0xb6d66b75460a0e0e
sd x3, 0(x2) # store 0xb6d66b75460a0e0e in memory
fld f20, 0(x2) # load 0xb6d66b75460a0e0e from memory into f20
fmaxm.s f24, f25, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
la x2, scratch
li x3, 0xc796adda4a3426a4 # load x3 with value 0xc796adda4a3426a4
sd x3, 0(x2) # store 0xc796adda4a3426a4 in memory
fld f31, 0(x2) # load 0xc796adda4a3426a4 from memory into f31
fmaxm.s f17, f25, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f7, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f7
la x2, scratch
li x3, 0x6b42c7286e152f67 # load x3 with value 0x6b42c7286e152f67
sd x3, 0(x2) # store 0x6b42c7286e152f67 in memory
fld f15, 0(x2) # load 0x6b42c7286e152f67 from memory into f15
fmaxm.s f8, f7, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f29, 0(x2) # load 0x7fffffff7f800000 from memory into f29
la x2, scratch
li x3, 0xb5f97d20b169d04b # load x3 with value 0xb5f97d20b169d04b
sd x3, 0(x2) # store 0xb5f97d20b169d04b in memory
fld f12, 0(x2) # load 0xb5f97d20b169d04b from memory into f12
fmaxm.s f24, f29, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f15, 0(x2) # load 0xfffffffeff800000 from memory into f15
la x2, scratch
li x3, 0xc2fbc552d768fbb4 # load x3 with value 0xc2fbc552d768fbb4
sd x3, 0(x2) # store 0xc2fbc552d768fbb4 in memory
fld f31, 0(x2) # load 0xc2fbc552d768fbb4 from memory into f31
fmaxm.s f25, f15, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f7, 0(x2) # load 0xfeedbee57fc00000 from memory into f7
la x2, scratch
li x3, 0x58df105345791670 # load x3 with value 0x58df105345791670
sd x3, 0(x2) # store 0x58df105345791670 in memory
fld f29, 0(x2) # load 0x58df105345791670 from memory into f29
fmaxm.s f2, f7, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f1, 0(x2) # load 0xffc0deff7fffffff from memory into f1
la x2, scratch
li x3, 0xda7824c2758be7ab # load x3 with value 0xda7824c2758be7ab
sd x3, 0(x2) # store 0xda7824c2758be7ab in memory
fld f12, 0(x2) # load 0xda7824c2758be7ab from memory into f12
fmaxm.s f22, f1, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f20, 0(x2) # load 0xfeffffff7f800001 from memory into f20
la x2, scratch
li x3, 0x9ad5a723ccf73f54 # load x3 with value 0x9ad5a723ccf73f54
sd x3, 0(x2) # store 0x9ad5a723ccf73f54 in memory
fld f26, 0(x2) # load 0x9ad5a723ccf73f54 from memory into f26
fmaxm.s f28, f20, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f17, 0(x2) # load 0xfffffeff7fbfffff from memory into f17
la x2, scratch
li x3, 0x23281b774fa83cd5 # load x3 with value 0x23281b774fa83cd5
sd x3, 0(x2) # store 0x23281b774fa83cd5 in memory
fld f29, 0(x2) # load 0x23281b774fa83cd5 from memory into f29
fmaxm.s f21, f17, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x7e5aa0c1806b824e # load x3 with value 0x7e5aa0c1806b824e
sd x3, 0(x2) # store 0x7e5aa0c1806b824e in memory
fld f22, 0(x2) # load 0x7e5aa0c1806b824e from memory into f22
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f31, 0(x2) # load 0xffffefff00000000 from memory into f31
fmaxm.s f16, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xc93bcc706342a0b2 # load x3 with value 0xc93bcc706342a0b2
sd x3, 0(x2) # store 0xc93bcc706342a0b2 in memory
fld f5, 0(x2) # load 0xc93bcc706342a0b2 from memory into f5
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f16, 0(x2) # load 0xaaaaaaaa80000000 from memory into f16
fmaxm.s f26, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x1e9f85116e778a0f # load x3 with value 0x1e9f85116e778a0f
sd x3, 0(x2) # store 0x1e9f85116e778a0f in memory
fld f22, 0(x2) # load 0x1e9f85116e778a0f from memory into f22
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f5, 0(x2) # load 0x000000003f800000 from memory into f5
fmaxm.s f26, f22, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x330dffb079cd518e # load x3 with value 0x330dffb079cd518e
sd x3, 0(x2) # store 0x330dffb079cd518e in memory
fld f10, 0(x2) # load 0x330dffb079cd518e from memory into f10
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f1, 0(x2) # load 0xdeadbeefbf800000 from memory into f1
fmaxm.s f12, f10, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x120fd8fa45477a1e # load x3 with value 0x120fd8fa45477a1e
sd x3, 0(x2) # store 0x120fd8fa45477a1e in memory
fld f16, 0(x2) # load 0x120fd8fa45477a1e from memory into f16
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f24, 0(x2) # load 0xa1b2c3d400800000 from memory into f24
fmaxm.s f17, f16, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x455cb7aa8c033060 # load x3 with value 0x455cb7aa8c033060
sd x3, 0(x2) # store 0x455cb7aa8c033060 in memory
fld f22, 0(x2) # load 0x455cb7aa8c033060 from memory into f22
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f14, 0(x2) # load 0xffffffef80800000 from memory into f14
fmaxm.s f25, f22, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x0b81fa8f88182728 # load x3 with value 0x0b81fa8f88182728
sd x3, 0(x2) # store 0x0b81fa8f88182728 in memory
fld f15, 0(x2) # load 0x0b81fa8f88182728 from memory into f15
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f28, 0(x2) # load 0xfeffffef7f7fffff from memory into f28
fmaxm.s f20, f15, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xc85dc870845ef63a # load x3 with value 0xc85dc870845ef63a
sd x3, 0(x2) # store 0xc85dc870845ef63a in memory
fld f27, 0(x2) # load 0xc85dc870845ef63a from memory into f27
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f28, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f28
fmaxm.s f22, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xd492ac93cf3bbdfd # load x3 with value 0xd492ac93cf3bbdfd
sd x3, 0(x2) # store 0xd492ac93cf3bbdfd in memory
fld f28, 0(x2) # load 0xd492ac93cf3bbdfd from memory into f28
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f31, 0(x2) # load 0x7fffffff7f800000 from memory into f31
fmaxm.s f25, f28, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xde874256f5c2abe6 # load x3 with value 0xde874256f5c2abe6
sd x3, 0(x2) # store 0xde874256f5c2abe6 in memory
fld f5, 0(x2) # load 0xde874256f5c2abe6 from memory into f5
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f8, 0(x2) # load 0xfffffffeff800000 from memory into f8
fmaxm.s f31, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xc92c7522d6b0717a # load x3 with value 0xc92c7522d6b0717a
sd x3, 0(x2) # store 0xc92c7522d6b0717a in memory
fld f3, 0(x2) # load 0xc92c7522d6b0717a from memory into f3
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f18, 0(x2) # load 0xfeedbee57fc00000 from memory into f18
fmaxm.s f26, f3, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x9fa4fee653cbad04 # load x3 with value 0x9fa4fee653cbad04
sd x3, 0(x2) # store 0x9fa4fee653cbad04 in memory
fld f1, 0(x2) # load 0x9fa4fee653cbad04 from memory into f1
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f9, 0(x2) # load 0xffc0deff7fffffff from memory into f9
fmaxm.s f17, f1, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x2bfa7fcd361a6554 # load x3 with value 0x2bfa7fcd361a6554
sd x3, 0(x2) # store 0x2bfa7fcd361a6554 in memory
fld f5, 0(x2) # load 0x2bfa7fcd361a6554 from memory into f5
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f13, 0(x2) # load 0xfeffffff7f800001 from memory into f13
fmaxm.s f2, f5, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x390460b2f33f835e # load x3 with value 0x390460b2f33f835e
sd x3, 0(x2) # store 0x390460b2f33f835e in memory
fld f15, 0(x2) # load 0x390460b2f33f835e from memory into f15
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
fmaxm.s f31, f15, f28 # perform operation

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
