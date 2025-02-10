///////////////////////////////////////////
// EndianS.S
//
// Written: mbellido@hmc.edu 1 February 2025
//
// Purpose: Functional coverage tests for endianness in supervisor mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////
#include "WALLY-init-lib.h"
main:
///////////////////////////////// 
// Endianness testing
// cp_mstatus_sbe_endianness_*
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
//   s8: stored endianess value 
# /////////////////////////////////
  #1ST COVERPOINT:  cp_mstatus_sbe_endianness_* 
    # save mstatus
    # ecall to move to machine mode since we are operating in supervisor mode
    # prep s1 with bits to set/clear SBE for RV32/RV64
    # always do both.  One or the other will trap, but this
    # avoids needing separate code for the two architectures
    # code assumes s registers are saved during these tests
    
    csrr s0, mstatus    # save CSR
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            li s1, 0x1000000000       # 1 in bit 36 for mstatus.SBE 
        #elif __riscv_xlen == 32
            li s1, 0x10               # 1 in bit 4 for mstatush.SBE  
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    la s3, scratch  # s3 = pointer to scratch

    # iterate over each endianness, doing all sizes of stores and loads
    li  s4, 0           # endianness for write
    li  s5, 0           # endianness for read
    jal s6, endiantest  # test little-endian read and write
    li  s4, 1           # endianness for write
    jal s6, endiantest  # test big-endian write, little-endian read
    li  s5, 1           # endianness for read
    jal s6, endiantest  # test big-endian read and write
    li  s4, 0           # endianness for write
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
    mv s8, a0
    # Request to switch to Machine mode
    li a0, 3         # a0 = 3, change to Machine mode
    ecall            # Make a system call to enter Machine mode
    // if a0 = 1, bigendian, otherwise littleendian
    beqz s8, 1f      # little endian
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrs t6, mstatus, s1   # for RV64, set mstatus.SBE
        #elif __riscv_xlen == 32
            csrrs t6, mstatush, s1  # for RV32, set mstatush.SBE
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    // Switch back to Supervisor mode
    j change
1:  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrc t6, mstatus, s1   # for RV64, clear mstatus.SBE
        #elif __riscv_xlen == 32
            csrrc t6, mstatush, s1  # for RV32, clear mstatush.SBE.
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    j change

change: 
    # Switch back to Supervisor mode
    li a0, 1         # a0 = 1, change to Supervisor mode
    ecall            # Make a system call 
    ret

endianaccess:
    // Try all the accesses to make sure they work for the endianness
     mv a0, s5   # setEndianness(read)
    jal setendianness
    lb  t3,  0(s3)
    lb  t3,  1(s3)
    lb  t3,  2(s3)
    lb  t3,  3(s3)
    lb  t3,  4(s3)
    lb  t3,  5(s3)
    lb  t3,  6(s3)
    lb  t3,  7(s3)
    lbu t3,  0(s3)
    lbu t3,  1(s3)
    lbu t3,  2(s3)
    lbu t3,  3(s3)
    lbu t3,  4(s3)
    lbu t3,  5(s3)
    lbu t3,  6(s3)
    lbu t3,  7(s3)
    lh  t3,  0(s3)
    lh  t3,  2(s3)
    lh  t3,  4(s3)
    lh  t3,  6(s3)
    lhu t3,  0(s3)
    lhu t3,  2(s3)
    lhu t3,  4(s3)
    lhu t3,  6(s3)
    lw  t3,  0(s3)
    lw  t3,  4(s3)
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







///////////////////////////////////////////////////////////////////////////////////////////
  #2ND COVERPOINT:  cp_mstatus_mprv_sbe_endianness_*
//////////////////////////////////////////////////////////////////////////////////////////
// Registers added: TO DO: S0,1,3,4,5,6,7,8
//   S2: To store mstatus.MBE
//   s9: To store mstatus.MPRV
//   s10: To store mstatus.MPP bit 12
//   s11: To store mstatus.MPP bit 11
    # ---------------------------------------
    #     XLEN=64        |     XLEN=32
    # --------------------------------------
    #  MBE  0x2000000000 | 0x20
    #  SBE  0x1000000000 | 0x10
    #  MPRV 0x20000      | 0x20000
    #  MPP  0x1800       | 0x1800
    # --------------------------------------
    csrr s0, mstatus    # save CSR
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            li s1,  0x1000000000       # 1 in bit 36 for mstatus.SBE 
            li s2,  0x2000000000       # 1 in bit 37 for mstatus.MBE
            li s9,  0x20000            # 1 in bit 17 for mstatus.MPRV  
            li s10, 0x1000             # 1 in bit 12 for mstatus.MPP
            li s11, 0x800              # 1 in bit 11 for mstatus.MPP    
        #elif __riscv_xlen == 32
            li s1,  0x10               # 1 in bit 4 for mstatush.SBE 
            li s2,  0x20               # 1 in bit 5 for mstatush.MBE 
            li s9,  0x20000            # 1 in bit 17 for mstatus.MPRV   
            li s10, 0x1000             # 1 in bit 12 for mstatus.MPP
            li s11, 0x800              # 1 in bit 11 for mstatus.MPP  
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    la s3, scratch  # s3 = pointer to scratch
    # iterate over each endianness, doing all sizes of stores and loads
    li  s4, 0           # endianness for write
    li  s5, 0           # endianness for read
    jal s6, endiantest2  # test little-endian read and write
    li  s4, 1           # endianness for write
    jal s6, endiantest2  # test big-endian write, little-endian read
    li  s5, 1           # endianness for read
    jal s6, endiantest2  # test big-endian read and write
    li  s4, 0           # endianness for write
    jal s6, endiantest2  # test little-endian write, big-endian read
    j postendian2    

endiantest2:
    # Try each size of stores with the write endianness, and then the loads with the read endianness
    mv a0, s4       # setEndianness(write)
    jal setendianness2
    // TO DO: FALTA CÓDIGO AQUÍ !!!!
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
    jal s7, endianaccess2
    mv a0, s4       # setEndianness(write)
    jal setendianness2
    li t0, 0x1112
    sh t0, 0(s3)
    li t0, 0x1314
    sh t0, 2(s3)
    li t0, 0x1516
    sh t0, 4(s3)
    li t0, 0x1718
    sh t0, 6(s3)
    jal s7, endianaccess2
    mv a0, s4       # setEndianness(write)
    jal setendianness2
     li t0, 0x21222324
    sw t0, 0(s3)
    li t0, 0x25262728
    sw t0, 4(s3)
    jal s7, endianaccess2
    mv a0, s4       # setEndianness(write)
    jal setendianness2
    li t0, 0x3132333435363738
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd t0, 0(s3)            # sd only in RV64
            jal s7, endianaccess2
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s6   # return (return address was stored in s6)





setendianness2:
    //TO DO continue here!!!
    and t1, s0, s9      # Check MPRV bit (s9 = 0x20000)
    and t2, s0, s10     # Check MPP bit 12 (s10 = 0x1000)
    and t3, s0, s11     # Check MPP bit 11 (s11 = 0x800)
    # Determine MPP (01 or 11)
    srli t2, t2, 12     # Shift MPP bit 12 to LSB
    srli t3, t3, 11     # Shift MPP bit 11 to LSB
    or   t4, t2, t3     # Combine for full MPP value (01 or 11)
    # Check MPP = 01 Supervisor (01)
    li   t5, 0x1        # MPP should be 01
    beq  t4, t5, is_msup_mode  #MPP=11 is set to machine mode (if = than jumps)
    j not_mprv

not_mprv: # We are MBE=1 and SBE=0
        // if a0 = 1, bigendian, otherwise littleendian
    beqz a0, 1f      # little endian
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrs t6, mstatus, s2   # for RV64, set mstatus.MBE
        #elif __riscv_xlen == 32
            csrrs t6, mstatush, s2  # for RV32, set mstatush.MBE
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
            csrrc t6, mstatush, s2  # for RV32, clear mstatush.MBE.
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    ret

#GOIND HERE IF MPRV= 1 AND MPP= 
is_msup_mode: # This is going to be for when it become supervisor mode: SBE=1
    beqz t1, not_mprv  # If MPRV=0, go to not_mprv path      
    #SBE=1 and MBE=0: So know I believe we use SBE to set endianess
    mv s8, a0
    li a0, 3         # a0 = 3, change to Machine mode
    ecall            # Make a system call to enter Machine mode
    // if a0 = 1, bigendian, otherwise littleendian
    beqz s8, 1f      # little endian
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrs t6, mstatus, s1   # for RV64, set mstatus.SBE
        #elif __riscv_xlen == 32
            csrrs t6, mstatush, s1  # for RV32, set mstatush.SBE
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    # Switch back to Supervisor mode
    j change2
1:  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            csrrc t6, mstatus, s1   # for RV64, clear mstatus.SBE
        #elif __riscv_xlen == 32
            csrrc t6, mstatush, s1  # for RV32, clear mstatush.SBE.
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    j change2
change2: 
    # Switch back to Supervisor mode
    li a0, 1         # a0 = 1, change to Supervisor mode
    ecall            # Make a system call 
    ret


endianaccess2:
    // Try all the accesses to make sure they work for the endianness
     mv a0, s5   # setEndianness(read)
    jal setendianness2
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
//Code shared between coverpoints
postendian2: 
    csrrw t6, mstatus, s0    # restore CSR





///////////////////////////////////////////////////////////////////
# 3RD COVERPOINT: cp_sstatus_ube_endianness_*
///////////////////////////////////////////////////////////////////

    csrr s0, sstatus    # save CSR
    #ifdef __riscv_xlen
        li s1, 0x40       # 1 in bit 6 for mstatus.SBE  
        # #if __riscv_xlen == 64
        #     li s1, 0x40       # 1 in bit 6 for mstatus.SBE  
        # #elif __riscv_xlen == 32
        #     li s1, 0x40               # 1 in bit 6 for mstatush.SBE  
        # #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    la s3, scratch  # s3 = pointer to scratch
    # iterate over each endianness, doing all sizes of stores and loads
    li  s4, 0           # endianness for write
    li  s5, 0           # endianness for read
    jal s6, endiantest3  # test little-endian read and write
    li  s4, 1           # endianness for write
    jal s6, endiantest3  # test big-endian write, little-endian read
    li  s5, 1           # endianness for read
    jal s6, endiantest3  # test big-endian read and write
    li  s4, 0           # endianness for write
    jal s6, endiantest3  # test little-endian write, big-endian read
    j postendian3    
endiantest3:
    # Try each size of stores with the write endianness, and then the loads with the read endianness
    mv a0, s4       # setEndianness(write)
    jal setendianness3
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
    jal s7, endianaccess3
    mv a0, s4       # setEndianness(write)
    jal setendianness3
    li t0, 0x1112
    sh t0, 0(s3)
    li t0, 0x1314
    sh t0, 2(s3)
    li t0, 0x1516
    sh t0, 4(s3)
    li t0, 0x1718
    sh t0, 6(s3)
    jal s7, endianaccess3
    mv a0, s4       # setEndianness(write)
    jal setendianness3
     li t0, 0x21222324
    sw t0, 0(s3)
    li t0, 0x25262728
    sw t0, 4(s3)
    jal s7, endianaccess3
    mv a0, s4       # setEndianness(write)
    jal setendianness3
    li t0, 0x3132333435363738
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd t0, 0(s3)            # sd only in RV64
            jal s7, endianaccess3
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s6   # return (return address was stored in s6)

setendianness3:
    mv s8, a0
    # Request to switch to Machine mode
    li a0, 3         # a0 = 3, change to Machine mode
    ecall            # Make a system call to enter Machine mode
    // if a0 = 1, bigendian, otherwise littleendian
    beqz s8, 1f      # little endian
    #ifdef __riscv_xlen
        csrrs t6, sstatus, s1   # for RV64, set sstatus.UBE
        # #if __riscv_xlen == 64
        #     csrrs t6, sstatus, s1   # for RV64, set sstatus.UBE
        # #elif __riscv_xlen == 32
        #     csrrs t6, sstatus, s1  # for RV32, set sstatus.UBE
        # #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    // Switch back to Supervisor mode
    j change3
1:  
    #ifdef __riscv_xlen
        csrrc t6, sstatus, s1   # for RV64, clear sstatus.UBE
        # #if __riscv_xlen == 64
        #     csrrc t6, sstatus, s1   # for RV64, clear sstatus.UBE
        # #elif __riscv_xlen == 32
        #     csrrc t6, sstatus, s1  # for RV32, clear sstatus.UBE
        # #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    j change3

change3: 
    # Switch back to Supervisor mode
    li a0, 0         # a0 = 0, change to USER mode
    ecall            # Make a system call 
    ret

endianaccess3:
    // Try all the accesses to make sure they work for the endianness
     mv a0, s5   # setEndianness(read)
    jal setendianness3
    lb  t3,  0(s3)
    lb  t3,  1(s3)
    lb  t3,  2(s3)
    lb  t3,  3(s3)
    lb  t3,  4(s3)
    lb  t3,  5(s3)
    lb  t3,  6(s3)
    lb  t3,  7(s3)
    lbu t3,  0(s3)
    lbu t3,  1(s3)
    lbu t3,  2(s3)
    lbu t3,  3(s3)
    lbu t3,  4(s3)
    lbu t3,  5(s3)
    lbu t3,  6(s3)
    lbu t3,  7(s3)
    lh  t3,  0(s3)
    lh  t3,  2(s3)
    lh  t3,  4(s3)
    lh  t3,  6(s3)
    lhu t3,  0(s3)
    lhu t3,  2(s3)
    lhu t3,  4(s3)
    lhu t3,  6(s3)
    lw  t3,  0(s3)
    lw  t3,  4(s3)
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
postendian3: 
    csrrw t6, sstatus, s0    # restore CSR








finished:
    j done
