///////////////////////////////////////////
// EndianU.S
//
// Written: mbellido@hmc.edu 9 February 2025
//
// Purpose: Functional coverage tests for endianness in user mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"
#include "WALLY-priv-endian.h"

main:

///////////////////////////////// 
// Endianness testing
// cp_mstatus_ube_endianness_*
// cp_mstatus_mprv_ube_endianness isn’t implemented yet.
//
// Goal is to store a pattern to a scratch location in memory
// using each endianness, and stores of every size.  Then
// read back the value using each endianness and loads of
// every size.  Stress that endianness works for every access.
//
// Saving and restoring from the stack is tricky because the
// code must work for both RV32 and RV64, and the endianness
// is constantly changing.  Therefore, we use s6 and s7 for
// return addresses instead.
//
// Registers used:
//   s0: saved value of mstatus
//   s1: a 1 in bit 5 to set/clear mstatush.UBE (RV32) or bit 37 to set/clear mstatus.UBE (RV64)
//   s3: scratch address
//   s4: endianness for write test
//   s5: endianness for read test
//   s6: return address for calls to endiantest
//   s7: return address for calls to endianaccess
/////////////////////////////////
  #1ST COVERPOINT:  cp_mstatus_ube_endianness_*!!!
    # save mstatus
    # prep s1 and s2 with bits to set/clear SBE for RV32/RV64
    # always do both.  One or the other will trap, but this
    # avoids needing separate code for the two architectures
    # code assumes s registers are saved during these tests
    
    csrr s0, mstatus     # save CSR
    li a0, 0             # a0 = 0, change to user mode
    ecall                # Make a system call 
    #ifdef __riscv_xlen
            li s1, 0x40  # 1 in bit 6 for mstatus.UBE 
    #else
        ERROR: __riscv_xlen not defined
    #endif
    la s3, scratch       # s3 = pointer to scratch
       //s9, s10, s11 used in WALLY-priv-endian.h
    li s9,  0   # setendianess function: 0 to branch and run only mstatus
    li s10, 1   # setendianess function: aready branch in s9, but 1 just in case
    li s11, 0   #resseting user mode

    # iterate over each endianness, doing all sizes of stores and loads
    li s4, 0        # endianness for write
    li s5, 0        # endianness for read
    jal s6, endiantest  # test little-endian read and write
    li s4, 1        # endianness for write
    jal s6, endiantest  # test big-endian write, little-endian read
    li s5, 1        # endianness for read
    jal s6, endiantest  # test big-endian read and write
    li s4, 0        # endianness for write
    jal s6, endiantest  # test little-endian write, big-endian read

post_cp_mstatus_ube_endianness:
    csrrw t6, mstatus, s0    # restore CSR

finished:
    j done




