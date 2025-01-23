///////////////////////////////////////////
// EndianM.S
//
// Written: David_Harris@hmc.edu 19 November 2024
//
// Purpose: Functional coverage tests for endianness in machine mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "../WALLY-init-lib.h"

main:

/////////////////////////////////
// Endianness testing
// cp_mstatush_mbe_endianness
// cp_mstatus_mbe_endianness
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
//   s1: a 1 in bit 5 to set/clear mstatush.MBE (RV32) or bit 37 to set/clear mstatus.MBE (RV64)
//   s3: scratch address
//   s4: endianness for write test
//   s5: endianness for read test
//   s6: return address for calls to endiantest
//   s7: return address for calls to endianaccess
/////////////////////////////////
    # save mstatus
    # prep s1 and s2 with bits to set/clear MBE for RV32/RV64
    # always do both.  One or the other will trap, but this
    # avoids needing separate code for the two architectures
    # code assumes s registers are saved during these tests
    csrr s0, mstatus    # save CSR
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            li s1, 0x2000000000     # 1 in bit 37 for mstatus.MBE
        #elif __riscv_xlen == 32
            li s1, 0x20             # 1 in bit 5 for mstatush.MBE
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    la s3, scratch  # s3 = pointer to scratch

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
    j postendian    

endiantest:
    # Try each size of stores with the write endianness, and then the loads with the read endianness
    mv a0, s4       # setEndianness(write)
    jal setendianness
    # Test storing bytes
    li t0, 0x01
    sb t0, 0(s3)
    li t0, 0x02
    sb t0, 1(s3)
    li t0, 0x03
    sb t0, 2(s3)
    li t0, 0x04
    sb t0, 3(s3)
    li t0, 0x05
    sb t0, 4(s3)
    li t0, 0x06
    sb t0, 5(s3)
    li t0, 0x07
    sb t0, 6(s3)
    li t0, 0x08
    sb t0, 7(s3)
    jal s7, endianaccess
    mv a0, s4       # setEndianness(write)
    jal setendianness
    li t0, 0x1112
    sh t0, 0(s3)
    li t0, 0x1314
    sh t0, 2(s3)
    li t0, 0x1516
    sh t0, 4(s3)
    li t0, 0x1718
    sh t0, 6(s3)
    jal s7, endianaccess
    mv a0, s4       # setEndianness(write)
    jal setendianness
     li t0, 0x21222324
    sw t0, 0(s3)
    li t0, 0x25262728
    sw t0, 4(s3)
    jal s7, endianaccess
    mv a0, s4       # setEndianness(write)
    jal setendianness
    li t0, 0x3132333435363738
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd t0, 0(s3)            # sd only in RV64
            jal s7, endianaccess
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s6   # return (return address was stored in s6)

setendianness:
    // if a0 = 1, bigendian, otherwise littleendian
    beqz a0, 1f      # little endian
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrs t6, mstatus, s1   # for RV64, set mstatus.MBE
        #elif __riscv_xlen == 32
            csrrs t6, mstatush, s1  # for RV32, set mstatush.MBE
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    ret
1:  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrc t6, mstatus, s2   # for RV64, clear mstatus.MBE
        #elif __riscv_xlen == 32
            csrrc t6, mstatush, s1  # for RV32, clear mstatush.MBE.
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    ret

endianaccess:
    // Try all the accesses to make sure they work for the endianness
     mv a0, s5   # setEndianness(read)
    jal setendianness
    lb t3, 0(s3)
    lb t3, 1(s3)
    lb t3, 2(s3)
    lb t3, 3(s3)
    lb t3, 4(s3)
    lb t3, 5(s3)
    lb t3, 6(s3)
    lb t3, 7(s3)
    lbu t3, 0(s3)
    lbu t3, 1(s3)
    lbu t3, 2(s3)
    lbu t3, 3(s3)
    lbu t3, 4(s3)
    lbu t3, 5(s3)
    lbu t3, 6(s3)
    lbu t3, 7(s3)
    lh t3, 0(s3)
    lh t3, 2(s3)
    lh t3, 4(s3)
    lh t3, 6(s3)
    lhu t3, 0(s3)
    lhu t3, 2(s3)
    lhu t3, 4(s3)
    lhu t3, 6(s3)
    lw t3, 0(s3)
    lw t3, 4(s3)
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64    
            lwu t3, 0(s3) # long loads for RV64
            lwu t3, 4(s3) 
            ld t3, 0(s3) 
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s7   # return (return address was stored in s7)

postendian: 
    csrrw t6, mstatus, s0    # restore CSR

finished:
    j done

