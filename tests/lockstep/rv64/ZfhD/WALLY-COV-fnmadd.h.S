///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fnmadd.h.S
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
li x3, 0xb8a05293a4f82113 # load x3 with value 0xb8a05293a4f82113
sd x3, 0(x2) # store 0xb8a05293a4f82113 in memory
flh f22, 0(x2) # load 0xb8a05293a4f82113 from memory into f22
la x2, scratch
li x3, 0x438809c30a5902fe # load x3 with value 0x438809c30a5902fe
sd x3, 0(x2) # store 0x438809c30a5902fe in memory
flh f19, 0(x2) # load 0x438809c30a5902fe from memory into f19
la x2, scratch
li x3, 0x3529410efaa3dd9e # load x3 with value 0x3529410efaa3dd9e
sd x3, 0(x2) # store 0x3529410efaa3dd9e in memory
flh f18, 0(x2) # load 0x3529410efaa3dd9e from memory into f18
fnmadd.h f3, f22, f19, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0x000a3ca356daf007 # load x3 with value 0x000a3ca356daf007
sd x3, 0(x2) # store 0x000a3ca356daf007 in memory
fld f1, 0(x2) # load 0x000a3ca356daf007 from memory into f1
la x2, scratch
li x3, 0x31395dea21d2f251 # load x3 with value 0x31395dea21d2f251
sd x3, 0(x2) # store 0x31395dea21d2f251 in memory
fld f9, 0(x2) # load 0x31395dea21d2f251 from memory into f9
fnmadd.h f21, f10, f1, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
la x2, scratch
li x3, 0x4e0e8ad93aa19031 # load x3 with value 0x4e0e8ad93aa19031
sd x3, 0(x2) # store 0x4e0e8ad93aa19031 in memory
fld f3, 0(x2) # load 0x4e0e8ad93aa19031 from memory into f3
la x2, scratch
li x3, 0xb39e823e75660dcb # load x3 with value 0xb39e823e75660dcb
sd x3, 0(x2) # store 0xb39e823e75660dcb in memory
fld f24, 0(x2) # load 0xb39e823e75660dcb from memory into f24
fnmadd.h f23, f10, f3, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
la x2, scratch
li x3, 0xf4f54ec45b8ae757 # load x3 with value 0xf4f54ec45b8ae757
sd x3, 0(x2) # store 0xf4f54ec45b8ae757 in memory
fld f7, 0(x2) # load 0xf4f54ec45b8ae757 from memory into f7
la x2, scratch
li x3, 0x56aef7a07c1970ed # load x3 with value 0x56aef7a07c1970ed
sd x3, 0(x2) # store 0x56aef7a07c1970ed in memory
fld f6, 0(x2) # load 0x56aef7a07c1970ed from memory into f6
fnmadd.h f28, f18, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0x18bc762673044991 # load x3 with value 0x18bc762673044991
sd x3, 0(x2) # store 0x18bc762673044991 in memory
fld f11, 0(x2) # load 0x18bc762673044991 from memory into f11
la x2, scratch
li x3, 0x292bb3d127010fd7 # load x3 with value 0x292bb3d127010fd7
sd x3, 0(x2) # store 0x292bb3d127010fd7 in memory
fld f6, 0(x2) # load 0x292bb3d127010fd7 from memory into f6
fnmadd.h f13, f31, f11, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0x61627f29e8f62680 # load x3 with value 0x61627f29e8f62680
sd x3, 0(x2) # store 0x61627f29e8f62680 in memory
fld f17, 0(x2) # load 0x61627f29e8f62680 from memory into f17
la x2, scratch
li x3, 0x88f56eea05bb8953 # load x3 with value 0x88f56eea05bb8953
sd x3, 0(x2) # store 0x88f56eea05bb8953 in memory
fld f25, 0(x2) # load 0x88f56eea05bb8953 from memory into f25
fnmadd.h f31, f3, f17, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f6, 0(x2) # load 0x00000000ffff8400 from memory into f6
la x2, scratch
li x3, 0x39e24b1f072c5127 # load x3 with value 0x39e24b1f072c5127
sd x3, 0(x2) # store 0x39e24b1f072c5127 in memory
fld f20, 0(x2) # load 0x39e24b1f072c5127 from memory into f20
la x2, scratch
li x3, 0xd84b3bbf43ad17ec # load x3 with value 0xd84b3bbf43ad17ec
sd x3, 0(x2) # store 0xd84b3bbf43ad17ec in memory
fld f2, 0(x2) # load 0xd84b3bbf43ad17ec from memory into f2
fnmadd.h f14, f6, f20, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f3, 0(x2) # load 0xefffffffffff7bff from memory into f3
la x2, scratch
li x3, 0xdb0b2548e7dbc582 # load x3 with value 0xdb0b2548e7dbc582
sd x3, 0(x2) # store 0xdb0b2548e7dbc582 in memory
fld f11, 0(x2) # load 0xdb0b2548e7dbc582 from memory into f11
la x2, scratch
li x3, 0x5a47bd8b730fa5f2 # load x3 with value 0x5a47bd8b730fa5f2
sd x3, 0(x2) # store 0x5a47bd8b730fa5f2 in memory
fld f2, 0(x2) # load 0x5a47bd8b730fa5f2 from memory into f2
fnmadd.h f24, f3, f11, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f30, 0(x2) # load 0xc0dec0dec0defbff from memory into f30
la x2, scratch
li x3, 0xe35a80cb0c5332d0 # load x3 with value 0xe35a80cb0c5332d0
sd x3, 0(x2) # store 0xe35a80cb0c5332d0 in memory
fld f29, 0(x2) # load 0xe35a80cb0c5332d0 from memory into f29
la x2, scratch
li x3, 0xe9ffc8b416292ecd # load x3 with value 0xe9ffc8b416292ecd
sd x3, 0(x2) # store 0xe9ffc8b416292ecd in memory
fld f9, 0(x2) # load 0xe9ffc8b416292ecd from memory into f9
fnmadd.h f19, f30, f29, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
la x2, scratch
li x3, 0x7ebbef000ea70c6f # load x3 with value 0x7ebbef000ea70c6f
sd x3, 0(x2) # store 0x7ebbef000ea70c6f in memory
fld f31, 0(x2) # load 0x7ebbef000ea70c6f from memory into f31
la x2, scratch
li x3, 0x64c09c3c26db1479 # load x3 with value 0x64c09c3c26db1479
sd x3, 0(x2) # store 0x64c09c3c26db1479 in memory
fld f23, 0(x2) # load 0x64c09c3c26db1479 from memory into f23
fnmadd.h f19, f13, f31, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f11, 0(x2) # load 0xffffffff0ffffc00 from memory into f11
la x2, scratch
li x3, 0x008a6181b3c9a739 # load x3 with value 0x008a6181b3c9a739
sd x3, 0(x2) # store 0x008a6181b3c9a739 in memory
fld f25, 0(x2) # load 0x008a6181b3c9a739 from memory into f25
la x2, scratch
li x3, 0xa7ccb6607243b94d # load x3 with value 0xa7ccb6607243b94d
sd x3, 0(x2) # store 0xa7ccb6607243b94d in memory
fld f7, 0(x2) # load 0xa7ccb6607243b94d from memory into f7
fnmadd.h f1, f11, f25, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
la x2, scratch
li x3, 0xc9dd8a7333692044 # load x3 with value 0xc9dd8a7333692044
sd x3, 0(x2) # store 0xc9dd8a7333692044 in memory
fld f13, 0(x2) # load 0xc9dd8a7333692044 from memory into f13
la x2, scratch
li x3, 0xa90a67e06c9edaf4 # load x3 with value 0xa90a67e06c9edaf4
sd x3, 0(x2) # store 0xa90a67e06c9edaf4 in memory
fld f31, 0(x2) # load 0xa90a67e06c9edaf4 from memory into f31
fnmadd.h f17, f25, f13, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
la x2, scratch
li x3, 0x9fe2ac60cf61b473 # load x3 with value 0x9fe2ac60cf61b473
sd x3, 0(x2) # store 0x9fe2ac60cf61b473 in memory
fld f11, 0(x2) # load 0x9fe2ac60cf61b473 from memory into f11
la x2, scratch
li x3, 0x840c373753f8481b # load x3 with value 0x840c373753f8481b
sd x3, 0(x2) # store 0x840c373753f8481b in memory
fld f28, 0(x2) # load 0x840c373753f8481b from memory into f28
fnmadd.h f30, f25, f11, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f15, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f15
la x2, scratch
li x3, 0xc3b84455e7f936a4 # load x3 with value 0xc3b84455e7f936a4
sd x3, 0(x2) # store 0xc3b84455e7f936a4 in memory
fld f22, 0(x2) # load 0xc3b84455e7f936a4 from memory into f22
la x2, scratch
li x3, 0xae1af19fa7cf531c # load x3 with value 0xae1af19fa7cf531c
sd x3, 0(x2) # store 0xae1af19fa7cf531c in memory
fld f20, 0(x2) # load 0xae1af19fa7cf531c from memory into f20
fnmadd.h f3, f15, f22, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0x17cba7c23804e487 # load x3 with value 0x17cba7c23804e487
sd x3, 0(x2) # store 0x17cba7c23804e487 in memory
fld f1, 0(x2) # load 0x17cba7c23804e487 from memory into f1
la x2, scratch
li x3, 0x98e6853e579605ef # load x3 with value 0x98e6853e579605ef
sd x3, 0(x2) # store 0x98e6853e579605ef in memory
fld f29, 0(x2) # load 0x98e6853e579605ef from memory into f29
fnmadd.h f17, f7, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x5346d91d40d93686 # load x3 with value 0x5346d91d40d93686
sd x3, 0(x2) # store 0x5346d91d40d93686 in memory
fld f10, 0(x2) # load 0x5346d91d40d93686 from memory into f10
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f19, 0(x2) # load 0xffffffff00000000 from memory into f19
la x2, scratch
li x3, 0xbf669d907b1bdb4f # load x3 with value 0xbf669d907b1bdb4f
sd x3, 0(x2) # store 0xbf669d907b1bdb4f in memory
fld f8, 0(x2) # load 0xbf669d907b1bdb4f from memory into f8
fnmadd.h f2, f10, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xd759308189cd55dd # load x3 with value 0xd759308189cd55dd
sd x3, 0(x2) # store 0xd759308189cd55dd in memory
fld f14, 0(x2) # load 0xd759308189cd55dd from memory into f14
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
la x2, scratch
li x3, 0x3e6c5784aa67750c # load x3 with value 0x3e6c5784aa67750c
sd x3, 0(x2) # store 0x3e6c5784aa67750c in memory
fld f7, 0(x2) # load 0x3e6c5784aa67750c from memory into f7
fnmadd.h f21, f14, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xba0141f26e60e41e # load x3 with value 0xba0141f26e60e41e
sd x3, 0(x2) # store 0xba0141f26e60e41e in memory
fld f21, 0(x2) # load 0xba0141f26e60e41e from memory into f21
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0xc99345f15052a3ce # load x3 with value 0xc99345f15052a3ce
sd x3, 0(x2) # store 0xc99345f15052a3ce in memory
fld f5, 0(x2) # load 0xc99345f15052a3ce from memory into f5
fnmadd.h f13, f21, f16, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x908739503d54e6fd # load x3 with value 0x908739503d54e6fd
sd x3, 0(x2) # store 0x908739503d54e6fd in memory
fld f21, 0(x2) # load 0x908739503d54e6fd from memory into f21
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x0905634410ba25de # load x3 with value 0x0905634410ba25de
sd x3, 0(x2) # store 0x0905634410ba25de in memory
fld f11, 0(x2) # load 0x0905634410ba25de from memory into f11
fnmadd.h f26, f21, f10, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x3bd5c7980ce7147e # load x3 with value 0x3bd5c7980ce7147e
sd x3, 0(x2) # store 0x3bd5c7980ce7147e in memory
fld f17, 0(x2) # load 0x3bd5c7980ce7147e from memory into f17
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
la x2, scratch
li x3, 0x25875c3d984434c8 # load x3 with value 0x25875c3d984434c8
sd x3, 0(x2) # store 0x25875c3d984434c8 in memory
fld f28, 0(x2) # load 0x25875c3d984434c8 from memory into f28
fnmadd.h f29, f17, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xa8e762c0099f9ab2 # load x3 with value 0xa8e762c0099f9ab2
sd x3, 0(x2) # store 0xa8e762c0099f9ab2 in memory
fld f6, 0(x2) # load 0xa8e762c0099f9ab2 from memory into f6
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
la x2, scratch
li x3, 0xe99c6a0aae4c35cf # load x3 with value 0xe99c6a0aae4c35cf
sd x3, 0(x2) # store 0xe99c6a0aae4c35cf in memory
fld f21, 0(x2) # load 0xe99c6a0aae4c35cf from memory into f21
fnmadd.h f12, f6, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x7a6c31a5e3124fc9 # load x3 with value 0x7a6c31a5e3124fc9
sd x3, 0(x2) # store 0x7a6c31a5e3124fc9 in memory
fld f23, 0(x2) # load 0x7a6c31a5e3124fc9 from memory into f23
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
la x2, scratch
li x3, 0x69787cdcfd3e5fef # load x3 with value 0x69787cdcfd3e5fef
sd x3, 0(x2) # store 0x69787cdcfd3e5fef in memory
fld f15, 0(x2) # load 0x69787cdcfd3e5fef from memory into f15
fnmadd.h f29, f23, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x4b58456313466636 # load x3 with value 0x4b58456313466636
sd x3, 0(x2) # store 0x4b58456313466636 in memory
fld f24, 0(x2) # load 0x4b58456313466636 from memory into f24
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0x40aad06ab8354d1b # load x3 with value 0x40aad06ab8354d1b
sd x3, 0(x2) # store 0x40aad06ab8354d1b in memory
fld f31, 0(x2) # load 0x40aad06ab8354d1b from memory into f31
fnmadd.h f25, f24, f11, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x66cd4b4dc1889de9 # load x3 with value 0x66cd4b4dc1889de9
sd x3, 0(x2) # store 0x66cd4b4dc1889de9 in memory
fld f29, 0(x2) # load 0x66cd4b4dc1889de9 from memory into f29
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x233b308869f703ee # load x3 with value 0x233b308869f703ee
sd x3, 0(x2) # store 0x233b308869f703ee in memory
fld f17, 0(x2) # load 0x233b308869f703ee from memory into f17
fnmadd.h f15, f29, f25, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1fa920518ae41884 # load x3 with value 0x1fa920518ae41884
sd x3, 0(x2) # store 0x1fa920518ae41884 in memory
fld f17, 0(x2) # load 0x1fa920518ae41884 from memory into f17
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
la x2, scratch
li x3, 0xd7a90847af22c8f6 # load x3 with value 0xd7a90847af22c8f6
sd x3, 0(x2) # store 0xd7a90847af22c8f6 in memory
fld f20, 0(x2) # load 0xd7a90847af22c8f6 from memory into f20
fnmadd.h f19, f17, f3, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xcdcad91296ee42f3 # load x3 with value 0xcdcad91296ee42f3
sd x3, 0(x2) # store 0xcdcad91296ee42f3 in memory
fld f5, 0(x2) # load 0xcdcad91296ee42f3 from memory into f5
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
la x2, scratch
li x3, 0x606e363d65bb38e7 # load x3 with value 0x606e363d65bb38e7
sd x3, 0(x2) # store 0x606e363d65bb38e7 in memory
fld f21, 0(x2) # load 0x606e363d65bb38e7 from memory into f21
fnmadd.h f16, f5, f8, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x391456f25f1d79ff # load x3 with value 0x391456f25f1d79ff
sd x3, 0(x2) # store 0x391456f25f1d79ff in memory
fld f10, 0(x2) # load 0x391456f25f1d79ff from memory into f10
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0xa47a9e0a2abee765 # load x3 with value 0xa47a9e0a2abee765
sd x3, 0(x2) # store 0xa47a9e0a2abee765 in memory
fld f30, 0(x2) # load 0xa47a9e0a2abee765 from memory into f30
fnmadd.h f20, f10, f19, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7375a5b1913fb623 # load x3 with value 0x7375a5b1913fb623
sd x3, 0(x2) # store 0x7375a5b1913fb623 in memory
fld f12, 0(x2) # load 0x7375a5b1913fb623 from memory into f12
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
la x2, scratch
li x3, 0xb75046c685693d28 # load x3 with value 0xb75046c685693d28
sd x3, 0(x2) # store 0xb75046c685693d28 in memory
fld f21, 0(x2) # load 0xb75046c685693d28 from memory into f21
fnmadd.h f9, f12, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xda52670dce73d5d1 # load x3 with value 0xda52670dce73d5d1
sd x3, 0(x2) # store 0xda52670dce73d5d1 in memory
fld f27, 0(x2) # load 0xda52670dce73d5d1 from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
la x2, scratch
li x3, 0x0aa9d9c7a0750cc7 # load x3 with value 0x0aa9d9c7a0750cc7
sd x3, 0(x2) # store 0x0aa9d9c7a0750cc7 in memory
fld f20, 0(x2) # load 0x0aa9d9c7a0750cc7 from memory into f20
fnmadd.h f13, f27, f12, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x300312e53edf156a # load x3 with value 0x300312e53edf156a
sd x3, 0(x2) # store 0x300312e53edf156a in memory
fld f19, 0(x2) # load 0x300312e53edf156a from memory into f19
la x2, scratch
li x3, 0x5dc216c58c2d2e13 # load x3 with value 0x5dc216c58c2d2e13
sd x3, 0(x2) # store 0x5dc216c58c2d2e13 in memory
fld f7, 0(x2) # load 0x5dc216c58c2d2e13 from memory into f7
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
fnmadd.h f17, f19, f7, f10 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xb366fdd05117021d # load x3 with value 0xb366fdd05117021d
sd x3, 0(x2) # store 0xb366fdd05117021d in memory
fld f3, 0(x2) # load 0xb366fdd05117021d from memory into f3
la x2, scratch
li x3, 0x18e561f18c904ea4 # load x3 with value 0x18e561f18c904ea4
sd x3, 0(x2) # store 0x18e561f18c904ea4 in memory
fld f18, 0(x2) # load 0x18e561f18c904ea4 from memory into f18
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
fnmadd.h f8, f3, f18, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xed62d0a2d0d6fd62 # load x3 with value 0xed62d0a2d0d6fd62
sd x3, 0(x2) # store 0xed62d0a2d0d6fd62 in memory
fld f10, 0(x2) # load 0xed62d0a2d0d6fd62 from memory into f10
la x2, scratch
li x3, 0x4172fe2cfaff69b4 # load x3 with value 0x4172fe2cfaff69b4
sd x3, 0(x2) # store 0x4172fe2cfaff69b4 in memory
fld f17, 0(x2) # load 0x4172fe2cfaff69b4 from memory into f17
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f21, 0(x2) # load 0x7fffffffffff3c00 from memory into f21
fnmadd.h f3, f10, f17, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5bcd449fa7802e2a # load x3 with value 0x5bcd449fa7802e2a
sd x3, 0(x2) # store 0x5bcd449fa7802e2a in memory
fld f28, 0(x2) # load 0x5bcd449fa7802e2a from memory into f28
la x2, scratch
li x3, 0x6f2c2e941870fc4d # load x3 with value 0x6f2c2e941870fc4d
sd x3, 0(x2) # store 0x6f2c2e941870fc4d in memory
fld f7, 0(x2) # load 0x6f2c2e941870fc4d from memory into f7
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f5, 0(x2) # load 0xfeedbee5beefbc00 from memory into f5
fnmadd.h f18, f28, f7, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x118b130732d401e1 # load x3 with value 0x118b130732d401e1
sd x3, 0(x2) # store 0x118b130732d401e1 in memory
fld f9, 0(x2) # load 0x118b130732d401e1 from memory into f9
la x2, scratch
li x3, 0x3a1db5d82bd2b383 # load x3 with value 0x3a1db5d82bd2b383
sd x3, 0(x2) # store 0x3a1db5d82bd2b383 in memory
fld f6, 0(x2) # load 0x3a1db5d82bd2b383 from memory into f6
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f22, 0(x2) # load 0xffffffefffff0400 from memory into f22
fnmadd.h f7, f9, f6, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0x24009f6de10ef3fa # load x3 with value 0x24009f6de10ef3fa
sd x3, 0(x2) # store 0x24009f6de10ef3fa in memory
fld f30, 0(x2) # load 0x24009f6de10ef3fa from memory into f30
la x2, scratch
li x3, 0x4922140e2222619b # load x3 with value 0x4922140e2222619b
sd x3, 0(x2) # store 0x4922140e2222619b in memory
fld f27, 0(x2) # load 0x4922140e2222619b from memory into f27
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
fnmadd.h f22, f30, f27, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xc082b67d81f077bf # load x3 with value 0xc082b67d81f077bf
sd x3, 0(x2) # store 0xc082b67d81f077bf in memory
fld f16, 0(x2) # load 0xc082b67d81f077bf from memory into f16
la x2, scratch
li x3, 0xf3f69264b71d45ca # load x3 with value 0xf3f69264b71d45ca
sd x3, 0(x2) # store 0xf3f69264b71d45ca in memory
fld f31, 0(x2) # load 0xf3f69264b71d45ca from memory into f31
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f18, 0(x2) # load 0xefffffffffff7bff from memory into f18
fnmadd.h f7, f16, f31, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xf589b126c6fa926f # load x3 with value 0xf589b126c6fa926f
sd x3, 0(x2) # store 0xf589b126c6fa926f in memory
fld f15, 0(x2) # load 0xf589b126c6fa926f from memory into f15
la x2, scratch
li x3, 0x04168f44a5f98205 # load x3 with value 0x04168f44a5f98205
sd x3, 0(x2) # store 0x04168f44a5f98205 in memory
fld f13, 0(x2) # load 0x04168f44a5f98205 from memory into f13
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fnmadd.h f31, f15, f13, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x2e6daeedeb4aaf2e # load x3 with value 0x2e6daeedeb4aaf2e
sd x3, 0(x2) # store 0x2e6daeedeb4aaf2e in memory
fld f25, 0(x2) # load 0x2e6daeedeb4aaf2e from memory into f25
la x2, scratch
li x3, 0xddfe52eeedd8691f # load x3 with value 0xddfe52eeedd8691f
sd x3, 0(x2) # store 0xddfe52eeedd8691f in memory
fld f6, 0(x2) # load 0xddfe52eeedd8691f from memory into f6
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f29, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f29
fnmadd.h f8, f25, f6, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x2ec719a29b9095ee # load x3 with value 0x2ec719a29b9095ee
sd x3, 0(x2) # store 0x2ec719a29b9095ee in memory
fld f5, 0(x2) # load 0x2ec719a29b9095ee from memory into f5
la x2, scratch
li x3, 0x0a74aa9ca8fcad80 # load x3 with value 0x0a74aa9ca8fcad80
sd x3, 0(x2) # store 0x0a74aa9ca8fcad80 in memory
fld f22, 0(x2) # load 0x0a74aa9ca8fcad80 from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
fnmadd.h f21, f5, f22, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5f31c9b89050dfd7 # load x3 with value 0x5f31c9b89050dfd7
sd x3, 0(x2) # store 0x5f31c9b89050dfd7 in memory
fld f25, 0(x2) # load 0x5f31c9b89050dfd7 from memory into f25
la x2, scratch
li x3, 0x8c26128e0ab5ccac # load x3 with value 0x8c26128e0ab5ccac
sd x3, 0(x2) # store 0x8c26128e0ab5ccac in memory
fld f13, 0(x2) # load 0x8c26128e0ab5ccac from memory into f13
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
fnmadd.h f30, f25, f13, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xbc8aee1ceeb54d8b # load x3 with value 0xbc8aee1ceeb54d8b
sd x3, 0(x2) # store 0xbc8aee1ceeb54d8b in memory
fld f8, 0(x2) # load 0xbc8aee1ceeb54d8b from memory into f8
la x2, scratch
li x3, 0x89fd7b5d64c7421e # load x3 with value 0x89fd7b5d64c7421e
sd x3, 0(x2) # store 0x89fd7b5d64c7421e in memory
fld f16, 0(x2) # load 0x89fd7b5d64c7421e from memory into f16
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fnmadd.h f7, f8, f16, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x80fe12aba98aa6b0 # load x3 with value 0x80fe12aba98aa6b0
sd x3, 0(x2) # store 0x80fe12aba98aa6b0 in memory
fld f16, 0(x2) # load 0x80fe12aba98aa6b0 from memory into f16
la x2, scratch
li x3, 0x574b86afed898694 # load x3 with value 0x574b86afed898694
sd x3, 0(x2) # store 0x574b86afed898694 in memory
fld f31, 0(x2) # load 0x574b86afed898694 from memory into f31
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
fnmadd.h f12, f16, f31, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x87f27371b5515084 # load x3 with value 0x87f27371b5515084
sd x3, 0(x2) # store 0x87f27371b5515084 in memory
fld f18, 0(x2) # load 0x87f27371b5515084 from memory into f18
la x2, scratch
li x3, 0x6ac1572e4d793a6e # load x3 with value 0x6ac1572e4d793a6e
sd x3, 0(x2) # store 0x6ac1572e4d793a6e in memory
fld f15, 0(x2) # load 0x6ac1572e4d793a6e from memory into f15
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fnmadd.h f10, f18, f15, f11 # perform operation

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
