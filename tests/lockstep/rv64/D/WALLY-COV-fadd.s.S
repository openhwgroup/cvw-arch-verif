///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fadd.s.S
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
li x3, 0x9462030420a1360b # load x3 with value 0x9462030420a1360b
sd x3, 0(x2) # store 0x9462030420a1360b in memory
flw f18, 0(x2) # load 0x9462030420a1360b from memory into f18
la x2, scratch
li x3, 0xfc4073b184353cc5 # load x3 with value 0xfc4073b184353cc5
sd x3, 0(x2) # store 0xfc4073b184353cc5 in memory
flw f27, 0(x2) # load 0xfc4073b184353cc5 from memory into f27
fadd.s f29, f18, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f11, 0(x2) # load 0xffffefff00000000 from memory into f11
la x2, scratch
li x3, 0xd9fff063542ee0d6 # load x3 with value 0xd9fff063542ee0d6
sd x3, 0(x2) # store 0xd9fff063542ee0d6 in memory
fld f8, 0(x2) # load 0xd9fff063542ee0d6 from memory into f8
fadd.s f21, f11, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f25, 0(x2) # load 0xaaaaaaaa80000000 from memory into f25
la x2, scratch
li x3, 0x50d55983196bc53e # load x3 with value 0x50d55983196bc53e
sd x3, 0(x2) # store 0x50d55983196bc53e in memory
fld f28, 0(x2) # load 0x50d55983196bc53e from memory into f28
fadd.s f21, f25, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
la x2, scratch
li x3, 0xf677ee1892e3442c # load x3 with value 0xf677ee1892e3442c
sd x3, 0(x2) # store 0xf677ee1892e3442c in memory
fld f9, 0(x2) # load 0xf677ee1892e3442c from memory into f9
fadd.s f1, f18, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f22, 0(x2) # load 0xdeadbeefbf800000 from memory into f22
la x2, scratch
li x3, 0xf74d9e3cfbbae116 # load x3 with value 0xf74d9e3cfbbae116
sd x3, 0(x2) # store 0xf74d9e3cfbbae116 in memory
fld f20, 0(x2) # load 0xf74d9e3cfbbae116 from memory into f20
fadd.s f24, f22, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f23, 0(x2) # load 0xa1b2c3d400800000 from memory into f23
la x2, scratch
li x3, 0x7af4ab13c9bce3ee # load x3 with value 0x7af4ab13c9bce3ee
sd x3, 0(x2) # store 0x7af4ab13c9bce3ee in memory
fld f13, 0(x2) # load 0x7af4ab13c9bce3ee from memory into f13
fadd.s f15, f23, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f6, 0(x2) # load 0xffffffef80800000 from memory into f6
la x2, scratch
li x3, 0xe10e04116f24de9a # load x3 with value 0xe10e04116f24de9a
sd x3, 0(x2) # store 0xe10e04116f24de9a in memory
fld f14, 0(x2) # load 0xe10e04116f24de9a from memory into f14
fadd.s f21, f6, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f16, 0(x2) # load 0xfeffffef7f7fffff from memory into f16
la x2, scratch
li x3, 0x190f353d0d996887 # load x3 with value 0x190f353d0d996887
sd x3, 0(x2) # store 0x190f353d0d996887 in memory
fld f28, 0(x2) # load 0x190f353d0d996887 from memory into f28
fadd.s f8, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f2, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f2
la x2, scratch
li x3, 0xc77fec51f1c074c2 # load x3 with value 0xc77fec51f1c074c2
sd x3, 0(x2) # store 0xc77fec51f1c074c2 in memory
fld f31, 0(x2) # load 0xc77fec51f1c074c2 from memory into f31
fadd.s f11, f2, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f24, 0(x2) # load 0x7fffffff7f800000 from memory into f24
la x2, scratch
li x3, 0xd9a1064a8bcbf1ae # load x3 with value 0xd9a1064a8bcbf1ae
sd x3, 0(x2) # store 0xd9a1064a8bcbf1ae in memory
fld f31, 0(x2) # load 0xd9a1064a8bcbf1ae from memory into f31
fadd.s f2, f24, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f30, 0(x2) # load 0xfffffffeff800000 from memory into f30
la x2, scratch
li x3, 0xfd6983a16be01eea # load x3 with value 0xfd6983a16be01eea
sd x3, 0(x2) # store 0xfd6983a16be01eea in memory
fld f27, 0(x2) # load 0xfd6983a16be01eea from memory into f27
fadd.s f7, f30, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f28, 0(x2) # load 0xfeedbee57fc00000 from memory into f28
la x2, scratch
li x3, 0x2fc6c8fcef5cba05 # load x3 with value 0x2fc6c8fcef5cba05
sd x3, 0(x2) # store 0x2fc6c8fcef5cba05 in memory
fld f8, 0(x2) # load 0x2fc6c8fcef5cba05 from memory into f8
fadd.s f11, f28, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f14, 0(x2) # load 0xffc0deff7fffffff from memory into f14
la x2, scratch
li x3, 0x3ce22c50e8101627 # load x3 with value 0x3ce22c50e8101627
sd x3, 0(x2) # store 0x3ce22c50e8101627 in memory
fld f16, 0(x2) # load 0x3ce22c50e8101627 from memory into f16
fadd.s f17, f14, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f16, 0(x2) # load 0xfeffffff7f800001 from memory into f16
la x2, scratch
li x3, 0xb1d813f599750814 # load x3 with value 0xb1d813f599750814
sd x3, 0(x2) # store 0xb1d813f599750814 in memory
fld f20, 0(x2) # load 0xb1d813f599750814 from memory into f20
fadd.s f6, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f20, 0(x2) # load 0xfffffeff7fbfffff from memory into f20
la x2, scratch
li x3, 0xb0fae8e907e7807f # load x3 with value 0xb0fae8e907e7807f
sd x3, 0(x2) # store 0xb0fae8e907e7807f in memory
fld f23, 0(x2) # load 0xb0fae8e907e7807f from memory into f23
fadd.s f19, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x900e501e9b89ad1d # load x3 with value 0x900e501e9b89ad1d
sd x3, 0(x2) # store 0x900e501e9b89ad1d in memory
fld f26, 0(x2) # load 0x900e501e9b89ad1d from memory into f26
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f2, 0(x2) # load 0xffffefff00000000 from memory into f2
fadd.s f3, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xbd5f60f3c308ed81 # load x3 with value 0xbd5f60f3c308ed81
sd x3, 0(x2) # store 0xbd5f60f3c308ed81 in memory
fld f20, 0(x2) # load 0xbd5f60f3c308ed81 from memory into f20
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
fadd.s f17, f20, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x5cfdd270d0451b4b # load x3 with value 0x5cfdd270d0451b4b
sd x3, 0(x2) # store 0x5cfdd270d0451b4b in memory
fld f5, 0(x2) # load 0x5cfdd270d0451b4b from memory into f5
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f16, 0(x2) # load 0x000000003f800000 from memory into f16
fadd.s f26, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x5fb6f8c3dc74e703 # load x3 with value 0x5fb6f8c3dc74e703
sd x3, 0(x2) # store 0x5fb6f8c3dc74e703 in memory
fld f14, 0(x2) # load 0x5fb6f8c3dc74e703 from memory into f14
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f13, 0(x2) # load 0xdeadbeefbf800000 from memory into f13
fadd.s f24, f14, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xe78e143d92d3662a # load x3 with value 0xe78e143d92d3662a
sd x3, 0(x2) # store 0xe78e143d92d3662a in memory
fld f9, 0(x2) # load 0xe78e143d92d3662a from memory into f9
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f8, 0(x2) # load 0xa1b2c3d400800000 from memory into f8
fadd.s f12, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x95e59cfd8b21b05d # load x3 with value 0x95e59cfd8b21b05d
sd x3, 0(x2) # store 0x95e59cfd8b21b05d in memory
fld f13, 0(x2) # load 0x95e59cfd8b21b05d from memory into f13
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f10, 0(x2) # load 0xffffffef80800000 from memory into f10
fadd.s f7, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x7768d614f8099dfc # load x3 with value 0x7768d614f8099dfc
sd x3, 0(x2) # store 0x7768d614f8099dfc in memory
fld f16, 0(x2) # load 0x7768d614f8099dfc from memory into f16
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f12, 0(x2) # load 0xfeffffef7f7fffff from memory into f12
fadd.s f31, f16, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x95025f1d49ade217 # load x3 with value 0x95025f1d49ade217
sd x3, 0(x2) # store 0x95025f1d49ade217 in memory
fld f15, 0(x2) # load 0x95025f1d49ade217 from memory into f15
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f24, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f24
fadd.s f16, f15, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x70e4e1f9685b4a9f # load x3 with value 0x70e4e1f9685b4a9f
sd x3, 0(x2) # store 0x70e4e1f9685b4a9f in memory
fld f9, 0(x2) # load 0x70e4e1f9685b4a9f from memory into f9
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f30, 0(x2) # load 0x7fffffff7f800000 from memory into f30
fadd.s f22, f9, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xba225026fa839bdf # load x3 with value 0xba225026fa839bdf
sd x3, 0(x2) # store 0xba225026fa839bdf in memory
fld f17, 0(x2) # load 0xba225026fa839bdf from memory into f17
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f21, 0(x2) # load 0xfffffffeff800000 from memory into f21
fadd.s f26, f17, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x56ac1458cbcf93bb # load x3 with value 0x56ac1458cbcf93bb
sd x3, 0(x2) # store 0x56ac1458cbcf93bb in memory
fld f19, 0(x2) # load 0x56ac1458cbcf93bb from memory into f19
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
fadd.s f3, f19, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xad0a9094c2cf3e33 # load x3 with value 0xad0a9094c2cf3e33
sd x3, 0(x2) # store 0xad0a9094c2cf3e33 in memory
fld f26, 0(x2) # load 0xad0a9094c2cf3e33 from memory into f26
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f20, 0(x2) # load 0xffc0deff7fffffff from memory into f20
fadd.s f22, f26, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x344fdd06b7ccfb45 # load x3 with value 0x344fdd06b7ccfb45
sd x3, 0(x2) # store 0x344fdd06b7ccfb45 in memory
fld f5, 0(x2) # load 0x344fdd06b7ccfb45 from memory into f5
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f2, 0(x2) # load 0xfeffffff7f800001 from memory into f2
fadd.s f16, f5, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xc74fb494269555e9 # load x3 with value 0xc74fb494269555e9
sd x3, 0(x2) # store 0xc74fb494269555e9 in memory
fld f1, 0(x2) # load 0xc74fb494269555e9 from memory into f1
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f16, 0(x2) # load 0xfffffeff7fbfffff from memory into f16
fadd.s f14, f1, f16 # perform operation

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
