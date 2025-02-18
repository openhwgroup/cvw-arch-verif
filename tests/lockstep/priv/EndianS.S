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
//cp_sstatus_ube_endianness_*
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
# //   s8: stored endianess value 
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






















# ///////////////////////////////////////////////////////////////////////////////////////////
#   #2ND COVERPOINT:  cp_mstatus_mprv_sbe_endianness_*
# //////////////////////////////////////////////////////////////////////////////////////////
# // Registers added: TO DO: S0,1,3,4,5,6,7,8
# //   S2: To store mstatus.MBE
# //   s9: To store mstatus.MPRV
# //   s10: To store mstatus.MPP bit 12
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

    li a0, 3         # a0 = 3, change to Machine mode
    ecall            # Make a system call to enter Machine mode
    
    la s3, scratch  # s3 = pointer to scratch
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            //li s2,  0x2000000000       # 1 in bit 37 for mstatus.MBE
            //li s1,  0x1000000000       # 1 in bit 36 for mstatus.SBE 
            #li s9,  0x20000            # 1 in bit 17 for mstatus.MPRV  
            #li s10, 0x1000             # 1 in bit 12 for mstatus.MPP
            #li s11, 0x800              # 1 in bit 11 for mstatus.MPP 
           
        #16 WRITES:
            #1:  MPRV=0, MPP=01, MBE=0, SBE=0
            li      t3,   0x3000021000    # 0s
            li      t4,   0x800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 #storing address so when you jump you can come back when done
      
        
            #2:  MPRV=0, MPP=01, MBE=0, SBE=1
            li      t3,   0x2000021000    # 0s
            li      t4,   0x1000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
    
     
            #3:  MPRV=0, MPP=01, MBE=1, SBE=0
            li      t3,   0x1000021000    # 0s
            li      t4,   0x2000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
   
            
            #4:  MPRV=0, MPP=01, MBE=1, SBE=1
            li      t3,   0x21000         # 0s
            li      t4,   0x3000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
            
          
            #5:  MPRV=0, MPP=11, MBE=0, SBE=0 
            li      t3,   0x3000020000    # 0s
            li      t4,   0x1800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 


            #6:  MPRV=0, MPP=11, MBE=0, SBE=1
            li      t3,   0x2000020000    # 0s
            li      t4,   0x1000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
        
       
            #7:  MPRV=0, MPP=11, MBE=1, SBE=0
            li      t3,   0x1000020000    # 0s
            li      t4,   0x2000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
     
            #8:  MPRV=0, MPP=11, MBE=1, SBE=1
            li      t3,   0x20000    # 0s
            li      t4,   0x3000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
  

            #9:  MPRV=1, MPP=01, MBE=0, SBE=0
            li      t3,   0x3000001000    # 0s
            li      t4,   0x20800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
            

            #10: MPRV=1, MPP=01, MBE=0, SBE=1
            li      t3,   0x2000001000    # 0s
            li      t4,   0x1000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 


            #11: MPRV=1, MPP=01, MBE=1, SBE=0
            li      t3,   0x1000001000    # 0s
            li      t4,   0x2000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
        
            #12: MPRV=1, MPP=01, MBE=1, SBE=1
            li      t3,   0x1000    # 0s
            li      t4,   0x3000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 


            #13: MPRV=1, MPP=11, MBE=0, SBE=0
            li      t3,   0x3000000000    # 0s
            li      t4,   0x21800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
         
            #14: MPRV=1, MPP=11, MBE=0, SBE=1
            li      t3,   0x2000000000    # 0s
            li      t4,   0x1000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
    
            #15: MPRV=1, MPP=11, MBE=1, SBE=0
            li      t3,   0x1000000000    # 0s
            li      t4,   0x2000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
       
            #16: MPRV=1, MPP=11, MBE=1, SBE=1
            li      t3,   0x0             # 0s
            li      t4,   0x3000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s6, endiantest2 
           
            
        #16 READS:
            #1:  MPRV=0, MPP=01, MBE=0, SBE=0
            li      t3,   0x3000021000    # 0s
            li      t4,   0x800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #2:  MPRV=0, MPP=01, MBE=0, SBE=1
            li      t3,   0x2000021000    # 0s
            li      t4,   0x1000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #3:  MPRV=0, MPP=01, MBE=1, SBE=0
            li      t3,   0x1000021000    # 0s
            li      t4,   0x2000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #4:  MPRV=0, MPP=01, MBE=1, SBE=1
            li      t3,   0x21000         # 0s
            li      t4,   0x3000000800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #5:  MPRV=0, MPP=11, MBE=0, SBE=0 
            li      t3,   0x3000020000    # 0s
            li      t4,   0x1800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #6:  MPRV=0, MPP=11, MBE=0, SBE=1
            li      t3,   0x2000020000    # 0s
            li      t4,   0x1000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #7:  MPRV=0, MPP=11, MBE=1, SBE=0
            li      t3,   0x1000020000    # 0s
            li      t4,   0x2000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #8:  MPRV=0, MPP=11, MBE=1, SBE=1
            li      t3,   0x20000    # 0s
            li      t4,   0x3000001800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #9:  MPRV=1, MPP=01, MBE=0, SBE=0
            li      t3,   0x3000001000    # 0s
            li      t4,   0x20800           # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #10: MPRV=1, MPP=01, MBE=0, SBE=1
            li      t3,   0x2000001000    # 0s
            li      t4,   0x1000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #11: MPRV=1, MPP=01, MBE=1, SBE=0
            li      t3,   0x1000001000    # 0s
            li      t4,   0x2000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #12: MPRV=1, MPP=01, MBE=1, SBE=1
            li      t3,   0x1000    # 0s
            li      t4,   0x3000020800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #13: MPRV=1, MPP=11, MBE=0, SBE=0
            li      t3,   0x3000000000    # 0s
            li      t4,   0x21800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #14: MPRV=1, MPP=11, MBE=0, SBE=1
            li      t3,   0x2000000000    # 0s
            li      t4,   0x1000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #15: MPRV=1, MPP=11, MBE=1, SBE=0
            li      t3,   0x1000000000    # 0s
            li      t4,   0x2000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            #16: MPRV=1, MPP=11, MBE=1, SBE=1
            li      t3,   0x0             # 0s
            li      t4,   0x3000021800    # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            jal s7, endianaccess2
            j postendian2


        #elif __riscv_xlen == 32
        csrr s1, mstatush 
            #li s9,  0x20000            # 1 in bit 17 for mstatus.MPRV   
            #li s10, 0x1000             # 1 in bit 12 for mstatus.MPP
            #li s11, 0x800              # 1 in bit 11 for mstatus.MPP
            #mstatush
            #li s2,  0x20               # 1 in bit 5 for mstatush.MBE 
            #li s1,  0x10               # 1 in bit 4 for mstatush.SBE 
        #16 WRITES:
            #1:  MPRV=0, MPP=01, MBE=0, SBE=0
            li      t3, 0x21000       # 0s -> mstatus
            li      t4, 0x800         # 1s -> mstatus
            csrrc   t6, mstatus, t3  # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x00          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2  # test little-endian read and write
            
            #2:  MPRV=0, MPP=01, MBE=0, SBE=1
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #3:  MPRV=0, MPP=01, MBE=1, SBE=0
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #4:  MPRV=0, MPP=01, MBE=1, SBE=1
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #5:  MPRV=0, MPP=11, MBE=0, SBE=0 
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #6:  MPRV=0, MPP=11, MBE=0, SBE=1
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #7:  MPRV=0, MPP=11, MBE=1, SBE=0
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #8:  MPRV=0, MPP=11, MBE=1, SBE=1
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #9:  MPRV=1, MPP=01, MBE=0, SBE=0
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #10: MPRV=1, MPP=01, MBE=0, SBE=1
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #11: MPRV=1, MPP=01, MBE=1, SBE=0
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #12: MPRV=1, MPP=01, MBE=1, SBE=1
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #13: MPRV=1, MPP=11, MBE=0, SBE=0
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            
            #14: MPRV=1, MPP=11, MBE=0, SBE=1
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #15: MPRV=1, MPP=11, MBE=1, SBE=0
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 
            #16: MPRV=1, MPP=11, MBE=1, SBE=1
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s6, endiantest2 

        
        #16 READS:

            # Request to switch to Machine mode
    # li a0, 3         # a0 = 3, change to Machine mode
    # ecall  
            #1:  MPRV=0, MPP=01, MBE=0, SBE=0
            li      t3, 0x21000       # 0s -> mstatus
            li      t4, 0x800         # 1s -> mstatus
            csrrc   t6, mstatus, t3  # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x00          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #2:  MPRV=0, MPP=01, MBE=0, SBE=1
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #3:  MPRV=0, MPP=01, MBE=1, SBE=0
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #4:  MPRV=0, MPP=01, MBE=1, SBE=1
            li      t3, 0x21000       # 0s
            li      t4, 0x800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #5:  MPRV=0, MPP=11, MBE=0, SBE=0
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s 
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #6:  MPRV=0, MPP=11, MBE=0, SBE=1
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #7:  MPRV=0, MPP=11, MBE=1, SBE=0
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #8:  MPRV=0, MPP=11, MBE=1, SBE=1
            li      t3, 0x20000       # 0s
            li      t4, 0x1800         # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #9:  MPRV=1, MPP=01, MBE=0, SBE=0
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #10: MPRV=1, MPP=01, MBE=0, SBE=1
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            
            #11: MPRV=1, MPP=01, MBE=1, SBE=0
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            
            #12: MPRV=1, MPP=01, MBE=1, SBE=1
            li      t3, 0x1000       # 0s
            li      t4, 0x20800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            
            #13: MPRV=1, MPP=11, MBE=0, SBE=0
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x30          # 0s -> mstatush
            li      t2, 0x0          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #14: MPRV=1, MPP=11, MBE=0, SBE=1
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x20          # 0s -> mstatush
            li      t2, 0x10          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #15: MPRV=1, MPP=11, MBE=1, SBE=0
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x10          # 0s -> mstatush
            li      t2, 0x20          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            #16: MPRV=1, MPP=11, MBE=1, SBE=1
            li      t3, 0x0       # 0s
            li      t4, 0x21800       # 1s
            csrrc   t6, mstatus, t3   # setting the 0s
            csrrs   t6, mstatus, t4   # setting the 1s
            li      t1, 0x0          # 0s -> mstatush
            li      t2, 0x30          # 1s -> mstatush
            csrrc   t6, mstatush, t1  # setting the 0s
            csrrs   t6, mstatush, t2  # setting the 1s
            jal s7, endianaccess2
            j postendian2
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
   

endiantest2:
    # Try each size of stores with the write endianness, and then the loads with the read endianness
  //  mv a0, t6       # setEndianness(write)
    // jal setendianness2                -> TO DO PROF HARRIS SAID WE DON'T NEED THIS
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
// jal s7, endianaccess2 # hear is jumps to do the reading but we want to do this after
//mv a0, s4       # setEndianness(write)
//jal setendianness2
    li t0, 0x1112
    sh t0, 0(s3)
    li t0, 0x1314
    sh t0, 2(s3)
    li t0, 0x1516
    sh t0, 4(s3)
    li t0, 0x1718
    sh t0, 6(s3)
// jal s7, endianaccess2
// mv a0, s4       # setEndianness(write)
// jal setendianness2
    li t0, 0x21222324
    sw t0, 0(s3)
    li t0, 0x25262728
    sw t0, 4(s3)
// jal s7, endianaccess2
//  mv a0, s4       # setEndianness(write)
//   jal setendianness2
    #moved here.
    li t0, 0x3132333435363738
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd t0, 0(s3)            # sd only in RV64
            //jal s7, endianaccess2
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s6   # return (return address was stored in s6)



endianaccess2:
    // Try all the accesses to make sure they work for the endianness
 //    mv a0, s5   # setEndianness(read)
 //   jal setendianness2
    
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
    #//////
    lb  t0, 0(s3)
    lb  t0, 1(s3)
    lb  t0, 2(s3)
    lb  t0, 3(s3)
    lb  t0, 4(s3)
    lb  t0, 5(s3)
    lb  t0, 6(s3)
    lb  t0, 7(s3)
    lbu t0, 0(s3)
    lbu t0, 1(s3)
    lbu t0, 2(s3)
    lbu t0, 3(s3)
    lbu t0, 4(s3)
    lbu t0, 5(s3)
    lbu t0, 6(s3)
    lbu t0, 7(s3)
    lh  t3, 0(s3)
    lh  t3, 2(s3)
    lh  t3, 4(s3)
    lh  t3, 6(s3)
    lhu t3, 0(s3)
    lhu t3, 2(s3)
    lhu t3, 4(s3)
    lhu t3, 6(s3)
    lw  t3, 0(s3)
    lw  t3, 4(s3)
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64    
            lwu t3, 0(s3) # long loads for RV64
            lwu t3, 4(s3) 
            ld  t3, 0(s3) 
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif
    jr s7   # return (return address was stored in s7)

//Code shared between coverpoints
postendian2: 
    csrrw t6, mstatus, s0    # restore CSR
    #restoring mstatush if rv32 
    #ifdef __riscv_xlen
        #if __riscv_xlen == 32    
            csrrw t5, mstatush, s1  
        #endif
    #else
        ERROR: __riscv_xlen not defined
    #endif



///////////////////////////////////////////////////////////////////
# 3RD COVERPOINT: cp_sstatus_ube_endianness_*
///////////////////////////////////////////////////////////////////

    csrr s0, sstatus    # save CSR
    li a0, 1         # a0 = 3, change to user mode
    ecall            # Make a system call to enter Machine mode
    #ifdef __riscv_xlen
        li s1, 0x40       # 1 in bit 6 for mstatus.SBE  
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
        csrrs t6, sstatus, s1   # set sstatus.UBE
    #else
        ERROR: __riscv_xlen not defined
    #endif
    // Switch back to Supervisor mode
    j change3
1:  
    #ifdef __riscv_xlen
        csrrc t6, sstatus, s1   # clear sstatus.UBE
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
