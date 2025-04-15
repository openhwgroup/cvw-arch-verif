///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-feq.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
la x2, scratch
li x3, 0xc967556dde0c47fd # load x3 with value 0xc967556dde0c47fd
sd x3, 0(x2) # store 0xc967556dde0c47fd in memory
fld f6, 0(x2) # load 0xc967556dde0c47fd from memory into f6
feq.h x7, f3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0x536f023705044f2f # load x3 with value 0x536f023705044f2f
sd x3, 0(x2) # store 0x536f023705044f2f in memory
fld f27, 0(x2) # load 0x536f023705044f2f from memory into f27
feq.h x24, f12, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0xe4b86decb0e0f779 # load x3 with value 0xe4b86decb0e0f779
sd x3, 0(x2) # store 0xe4b86decb0e0f779 in memory
fld f22, 0(x2) # load 0xe4b86decb0e0f779 from memory into f22
feq.h x30, f13, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
la x2, scratch
li x3, 0xe12405549be7db6e # load x3 with value 0xe12405549be7db6e
sd x3, 0(x2) # store 0xe12405549be7db6e in memory
fld f5, 0(x2) # load 0xe12405549be7db6e from memory into f5
feq.h x25, f13, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
la x2, scratch
li x3, 0xe6b650872bdb0e87 # load x3 with value 0xe6b650872bdb0e87
sd x3, 0(x2) # store 0xe6b650872bdb0e87 in memory
fld f11, 0(x2) # load 0xe6b650872bdb0e87 from memory into f11
feq.h x3, f25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f3, 0(x2) # load 0x00000000ffff8400 from memory into f3
la x2, scratch
li x3, 0x707020661d2d8dd6 # load x3 with value 0x707020661d2d8dd6
sd x3, 0(x2) # store 0x707020661d2d8dd6 in memory
fld f16, 0(x2) # load 0x707020661d2d8dd6 from memory into f16
feq.h x15, f3, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
la x2, scratch
li x3, 0xff456e4a1ebabfce # load x3 with value 0xff456e4a1ebabfce
sd x3, 0(x2) # store 0xff456e4a1ebabfce in memory
fld f1, 0(x2) # load 0xff456e4a1ebabfce from memory into f1
feq.h x19, f6, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
la x2, scratch
li x3, 0x309c019f4afb0435 # load x3 with value 0x309c019f4afb0435
sd x3, 0(x2) # store 0x309c019f4afb0435 in memory
fld f16, 0(x2) # load 0x309c019f4afb0435 from memory into f16
feq.h x1, f6, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
la x2, scratch
li x3, 0xfd6f2bd04997667a # load x3 with value 0xfd6f2bd04997667a
sd x3, 0(x2) # store 0xfd6f2bd04997667a in memory
fld f28, 0(x2) # load 0xfd6f2bd04997667a from memory into f28
feq.h x29, f2, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
la x2, scratch
li x3, 0x056541d8bc0d92ad # load x3 with value 0x056541d8bc0d92ad
sd x3, 0(x2) # store 0x056541d8bc0d92ad in memory
fld f6, 0(x2) # load 0x056541d8bc0d92ad from memory into f6
feq.h x21, f29, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f11, 0(x2) # load 0xfffeffffffff7e00 from memory into f11
la x2, scratch
li x3, 0x23f16337510eac0c # load x3 with value 0x23f16337510eac0c
sd x3, 0(x2) # store 0x23f16337510eac0c in memory
fld f5, 0(x2) # load 0x23f16337510eac0c from memory into f5
feq.h x10, f11, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
la x2, scratch
li x3, 0x1ab11447e0765c04 # load x3 with value 0x1ab11447e0765c04
sd x3, 0(x2) # store 0x1ab11447e0765c04 in memory
fld f12, 0(x2) # load 0x1ab11447e0765c04 from memory into f12
feq.h x1, f9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
la x2, scratch
li x3, 0x70c9a1814a597f2f # load x3 with value 0x70c9a1814a597f2f
sd x3, 0(x2) # store 0x70c9a1814a597f2f in memory
fld f23, 0(x2) # load 0x70c9a1814a597f2f from memory into f23
feq.h x12, f10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0xeed85e680542065b # load x3 with value 0xeed85e680542065b
sd x3, 0(x2) # store 0xeed85e680542065b in memory
fld f9, 0(x2) # load 0xeed85e680542065b from memory into f9
feq.h x16, f26, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd2b3e7bb8c89f7f9 # load x3 with value 0xd2b3e7bb8c89f7f9
sd x3, 0(x2) # store 0xd2b3e7bb8c89f7f9 in memory
fld f16, 0(x2) # load 0xd2b3e7bb8c89f7f9 from memory into f16
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
feq.h x2, f16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xa84dcc2aacc24900 # load x3 with value 0xa84dcc2aacc24900
sd x3, 0(x2) # store 0xa84dcc2aacc24900 in memory
fld f17, 0(x2) # load 0xa84dcc2aacc24900 from memory into f17
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
feq.h x28, f17, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb15f06ac0cb653c6 # load x3 with value 0xb15f06ac0cb653c6
sd x3, 0(x2) # store 0xb15f06ac0cb653c6 in memory
fld f27, 0(x2) # load 0xb15f06ac0cb653c6 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
feq.h x16, f27, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x19893f700e3e6ea3 # load x3 with value 0x19893f700e3e6ea3
sd x3, 0(x2) # store 0x19893f700e3e6ea3 in memory
fld f15, 0(x2) # load 0x19893f700e3e6ea3 from memory into f15
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
feq.h x10, f15, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x4200e33ebdf28721 # load x3 with value 0x4200e33ebdf28721
sd x3, 0(x2) # store 0x4200e33ebdf28721 in memory
fld f18, 0(x2) # load 0x4200e33ebdf28721 from memory into f18
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
feq.h x27, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x83d056f1baf9a526 # load x3 with value 0x83d056f1baf9a526
sd x3, 0(x2) # store 0x83d056f1baf9a526 in memory
fld f29, 0(x2) # load 0x83d056f1baf9a526 from memory into f29
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f25, 0(x2) # load 0x00000000ffff8400 from memory into f25
feq.h x22, f29, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x0456d90b2632448b # load x3 with value 0x0456d90b2632448b
sd x3, 0(x2) # store 0x0456d90b2632448b in memory
fld f3, 0(x2) # load 0x0456d90b2632448b from memory into f3
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
feq.h x31, f3, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xead2de4c60e746ca # load x3 with value 0xead2de4c60e746ca
sd x3, 0(x2) # store 0xead2de4c60e746ca in memory
fld f22, 0(x2) # load 0xead2de4c60e746ca from memory into f22
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f9, 0(x2) # load 0xc0dec0dec0defbff from memory into f9
feq.h x24, f22, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x6f889f15b871dbf1 # load x3 with value 0x6f889f15b871dbf1
sd x3, 0(x2) # store 0x6f889f15b871dbf1 in memory
fld f15, 0(x2) # load 0x6f889f15b871dbf1 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
feq.h x24, f15, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0736a5aad7fff465 # load x3 with value 0x0736a5aad7fff465
sd x3, 0(x2) # store 0x0736a5aad7fff465 in memory
fld f6, 0(x2) # load 0x0736a5aad7fff465 from memory into f6
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
feq.h x20, f6, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xf8acb52d77e42b15 # load x3 with value 0xf8acb52d77e42b15
sd x3, 0(x2) # store 0xf8acb52d77e42b15 in memory
fld f9, 0(x2) # load 0xf8acb52d77e42b15 from memory into f9
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
feq.h x27, f9, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd8e98ceec31787f0 # load x3 with value 0xd8e98ceec31787f0
sd x3, 0(x2) # store 0xd8e98ceec31787f0 in memory
fld f14, 0(x2) # load 0xd8e98ceec31787f0 from memory into f14
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
feq.h x30, f14, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x61596881cb78f083 # load x3 with value 0x61596881cb78f083
sd x3, 0(x2) # store 0x61596881cb78f083 in memory
fld f31, 0(x2) # load 0x61596881cb78f083 from memory into f31
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
feq.h x12, f31, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x3735c823321e5a54 # load x3 with value 0x3735c823321e5a54
sd x3, 0(x2) # store 0x3735c823321e5a54 in memory
fld f12, 0(x2) # load 0x3735c823321e5a54 from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
feq.h x2, f12, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

.EQU SIGSIZE,224


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
