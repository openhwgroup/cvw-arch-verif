///////////////////////////////////////////
// EndianZalscr.S
//
// Written: mbellido@hmc.edu 27 May 2025
//
// Purpose: Functional coverage tests for endianness in machine mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"
#include "priv-endian.h"
main:

/////////////////////////////////
// Endianness testing
// cp_endianness_lrsc
//
// Goal is to store a pattern to a scratch location in memory
// using each endianness, and stores of every size.  Then
// read back the value using each endianness and loads of
// every size.  Stress that endianness works for every access.
//
// Saving and restoring from the stack is tricky because the
// code must work for both RV32 and RV64, and the endianness
// is constantly changing.  Therefore, we use s6 and s7 (found in priv-endian.h)for
// return addresses instead.
//
// Registers used:
//   s0: saved value of mstatus
//   s1: a 1 in bit 5 to set/clear mstatush.MBE (RV32) or bit 37 to set/clear mstatus.MBE (RV64)
//   s3: scratch address
//   s4: endianness for write test
//   s5: endianness for read test
//   s10: 0 to set/clear sstatus.UBE  (any other value otherwisse )
//   s11: To switch back to running privilege mode once set/clear endianness
/////////////////////////////////
    // save mstatus
    // prep s1 with bits to set/clear MBE for RV32/RV64
    // always do both.  One or the other will trap, but this
    // avoids needing separate code for the two architectures
    // code assumes s registers are saved during these tests
    // saving and restoring mstatus based on endianness.
    // calling WALLY-priv-endian.h to store and load.
    //TODO ADD COMMENTS
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
    li s10, 1
    li s11, 3       #passing privilige mode: machine

    // iterate over each endianness, doing all sizes of stores and loads
    li s4, 0        # endianness for write
    li s5, 0        # endianness for read
    jal s6, endiantest  # test little-endian read and write
    li s4, 1        # endianness for write
    jal s6, endiantest  # test big-endian write, little-endian read
    li s5, 1        # endianness for read
    jal s6, endiantest  # test big-endian read and write
    li s4, 0        # endianness for write
    jal s6, endiantest  # test little-endian write, big-endian read

post_cp_mstatus_mbe_endianness:
    csrrw t6, mstatus, s0    # restore CSR
    j finshed




endiantest: //Write to memory function
    # Try each size of stores with the write endianness, and then the loads with the read endianness
    mv s8, s4       # setEndianness(write)
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
    # Perform lr.w + sc.w test
    lr.w t1, 0(s3)
    li   t2, 0xAABBCCDD
    sc.w t3, t2, 0(s3)  //success if t3 == 0
    # Read endianness and read result
    jal s7, endianaccess
    mv s8, s4       # setEndianness(write)
    jal setendianness
                                 //lw t4, 0(s3) #Check value when reading back
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            mv s8, s4       # setEndianness(write)
            jal setendianness

            li   t0, 0xMMBBRRTTEEDD2255
            sd   t0, 0(s3)

            lr.d t1, 0(s3)
            li   t2, 0xMMBBRRTTEEDD2255
            sc.d t3, t2, 0(s3)

            # Read endianness and read result
            jal s7, endianaccess
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s6   # return (return address was stored in s6)





setendianness:  //function to set/clear the bits depending on the endianness specified in the covergroups
    //beq s10, x0, onlysstatus3 //branch if endianness is given from sstatus (3 bc used by 3rd cp in endianS)

    // if s8 = 1, bigendian, otherwise littleendian
    li a0, 3         # a0 = 3, change to Machine mode
    ecall            # Make a system call to enter Machine mode
    beqz s8, littleendian      # little endian
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrs t6, mstatus, s1   # for RV64, set mstatus
        #elif __riscv_xlen == 32
            csrrs t6, mstatush, s1  # for RV32, set mstatush
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    j change
littleendian:
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrc t6, mstatus, s1   # for RV64, clear mstatus
        #elif __riscv_xlen == 32
            csrrc t6, mstatush, s1  # for RV32, clear mstatush
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    j change

change:
    // Switch privilege mode
    mv a0, s11       # s11 has privilege mode
    ecall            # Make a system call
    ret



endianaccess:
    // Try all the accesses to make sure they work for the endianness
     mv s8, s5   # setEndianness(read) -  # setEndianness(read from memory)
    jal setendianness
    lw  t4, 4(s3)
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            ld t4, 0(s3)
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s7   # return (return address was stored in s7)

finished:
    j done
