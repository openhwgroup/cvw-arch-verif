///////////////////////////////////////////
// ExceptionsS.S
//
// Written: Roman De Santos rdesantos@hmc.edu 6 February 2025
//
// Purpose: Functional coverage test for Exceptions in S mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"                

// program start
main:

// Set up the trap handler
la t0, s_traphandler
csrw stvec, t0

    // Call the cp_medeleg function in the three privilege modes

    // supervisor mode test
    // covers the following coverpoints during medelg = all 0's:   
    //  cp_instr_adr_misaligned_jalr
    //  cp_instr_access_fault
    //  cp_illegal_instruction
    //  cp_breakpoint
    //  cp_load_address_misaligned
    //  cp_load_access_fault
    //  cp_store_address_misaligned
    //  cp_store_access_fault
    //  cp_ecall_s
    //  cp_misaligned_priority
    // Covers the supervisor part of cp_stvec and cp_medeleg_msu
    li a0, 1 // cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

    // user mode test
    // Covers the user part of cp_medeleg_msu and cp_stvec
    li a0, 0 // cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

    // machine mode test
    // Covers the machine part of cp_medeleg_msu and cp_stvec
    li a0, 3 // cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

    // Test the remaining supervisor mode coverpoints that do 
    // not require different values of medeleg

    // restore medeleg to all zeros
    // enter machine privilege mode 
    li a0, 3          
    ecall                 

    li a4, 0                             
    csrw medeleg, a4      // write zeros to medeleg

    // enter supervisor privilege mode
    li a0, 1              // If using m mode trap handler, set a0 to 3 to enter machine mode
    ecall                 // Change privilege

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch
    /////////////////////////////////

    li t1,1        // load a test value
    .align 2       // align the next instruction to a 4 byte boundary 

    // test all six types of taken branches to a misaligned address

    beq x0, x0, .+6  // use .+6 to change PC counter to 6 bytes ahead

    // ensure a processor that has the compressed extension will execute a c.nop instruction preventing an illegal instruction exception
    // If a processor does not have the compressed extension, there will be a misaligned access exception
    .word 0x00010013 // c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed

    // follow the template above for all the branches
    bne x0, t1, .+6
    .word 0x00010013

    // blt test
    blt x0, t1, .+6
    .word 0x00010013

    // bge test
    bge t1, x0, .+6
    .word 0x00010013

    // bltu test 
    bltu x0, t1, .+6
    .word 0x00010013

    // bgeu test
    bgeu x0, x0, .+6
    .word 0x00010013

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch_nottaken
    /////////////////////////////////

    // these branches are not taken so there should be no exception

    beq x0, t1, .+6 // t1 = 1

    bne x0, x0, .+6

    blt t1, x0, .+6

    bge x0, t1, .+6

    bltu t1, x0, .+6

    bgeu x0, t1, .+6

    /////////////////////////////////
    //cp_instr_adr_misaligned_jal
    ///////////////////////////////// 
    .align 2 // Ensure jumps start aligned

    jal   x0,  .+6
    .word 0x00010013
 
    /////////////////////////////////
    //cp_illegal_instruction_seed
    /////////////////////////////////

    // throws illegal instruction in machine mode
    csrrs  t1, seed, x0
    csrrc  t2, seed, x0
    csrrsi t3, seed, 0
    csrrci t4, seed, 0

    /////////////////////////////////
    //cp_illegal_instruction_csr
    /////////////////////////////////

    // Attempt to read from CSR 0x000, which is an invalid CSR address
    lui t2, 1
    csrrs t1, 0, t2  
    csrrc t1, 0, t2
    csrrsi t1, 0, 1
    csrrci t1, 0, 1

    /////////////////////////////////
    //cp_xstatus_ie
    /////////////////////////////////

    // prepare masks
    li   t0, 8        // (1 << 3) bit 3 in mstatus is the MIE bit
    li   t1, 2        // (1 << 1) bit 1 in mstatus is the SIE bit
    
    // supervisor_mode:

    // Machine mode setup since other modes cannot modify CSRs
    li a0, 3  
    ecall


    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrc mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 1 
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrs mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 1 
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3 
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrc mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrs mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // change medeleg bit 8 (for this and the next supervisor tests)
    li a4, 256        // (1<<8) bit 8 in medeleg is the ecallu delegation bit                    
    csrs medeleg, a4  // set bit 8 in medeleg

    // update mie and sie bits
    csrc mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrc mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 1  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // User_mode:

    // change medeleg bit 8 (for this and the next user tests)
    li a4, 256        // (1<<8) bit 8 in medeleg is the ecallu delegation bit                    
    csrc medeleg, a4  // clear bit 8 in medeleg

    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrc mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrs mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrc mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrs mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // change medeleg bit 8 (for this and the next user tests)
    li a4, 256        //  (1<<8) bit 8 in medeleg is the ecallu delegation bit                    
    csrs medeleg, a4  //  set bit 8 in medeleg

    // update mie and sie bits
    csrc mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    csrc mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrc mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    csrs mstatus, t1
    // enter privilege mode being tested
    li a0, 0  
    ecall

    // test ecall (enter machine privilege mode)
    li a0, 3  
    ecall

finished:
    j done 

// Supervisor Mode Trap Handler
// Please note this is a temporary trap handler and is specific to this program.
// This should be replaced with a more generic trap handler in the future.
//
// Currently s7 is reserved for this traphandler
//
// Provides a simple trap handler that allows for privilege mode changes
// Place argument in a0 and issue ecall:
//  0: change to user mode
//  1: change to supervisor mode
//  3: change to machine mode
//  4: terminate program
// 
// Notes on s_traphandler:
// When medeleg bit 8 is set (medeleg[8] = 1), user-level ecalls are delegated
// to the supervisor trap handler. However, if the user program requests a mode change
// to machine mode via ecall, the supervisor trap handler (using sret)
// cannot directly return to machine mode due to insufficient privileges.
// 
// To resolve this, s_traphandler invokes an additional ecall, encoding (a0 + 5) in a0,
// which escalates the trap to the machine-level trap handler. The machine-level handler
// recognizes the (a0 + 5) signal as indicating that it should use sepc
// rather than mepc upon return. The machine-level handler then completes
// the privilege escalation and returns using mret, resuming execution in the desired privilege mode.
s_traphandler:
    csrr   s7, sepc         // Load faulting instruction address from sepc

    // Check if the exception was caused by an access fault
    bne s7, x0, IAF_skip    
    addi  ra, ra, -4        // handler updates return address so subtract 4 from rd to prevent a double update
    csrw sepc, ra           // save return address to sepc instead if its an IAF
IAF_skip:

    addi   a0, a0, 5        // shifts inputs to new 5, 6, 7, 8 (signals that it was an ecall from the s_traphandler)
    ecall                   // Trap to M-mode, where the privilege change is handled
 
    sret   

// Function: cp_medeleg
// Tests instructions when medeleg = all 1's, all 0's, and walking 1's.
// Only includes cover points that need to be tested with different values of medeleg.
// 
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).

cp_medeleg:
    mv a5, ra                  // Save return address
    mv a3, a0                  // Save test mode

    //--- Test: Loop over all-zero plus 17 walking-1 values in medelegh ---
    // Total iterations = 18:
    //   Iteration 0: medeleg = all zeros (upper 32 bits are 0)
    //   Iterations 1-17: a walking 1 in the upper 32 bits
    li   a1, 0                // Loop counter
    li   a2, 20               // Total iterations (0's + 1's+ 17 walking ones)
    li   a4, 0                // Initialize test value to 0 (all zeros)

cp_medeleg_loop:
    bge  a1, a2, cp_medeleg_end   // Exit loop when a1 >= 19

    mv t0, a3             // save the test mode privilege to a temp variable
    li a0, 3              // set a0 to 3 to enter machine mode
    ecall                 // Change privilege                     
    mv a3, t0             // restore the test mode privilege to a3
        
    csrw medeleg, a4      // write walking 1 to medeleg
    
    
    mv   a0, a3            // load into test privilege mode
    ecall   

    /////////////////////////////////
    //cp_instr_adr_misaligned_jalr AND cp_stvec
    /////////////////////////////////

    .align 2 // Ensure jumps start aligned

    // test offset[1:0] = 00, odd multiple of 2, rs1[1:0] = 00
    auipc   t0, 0           
    addi    t0, t0, 8       // 8 mod 4 = 0, so lower two bits become 00
    jalr    t1, t0, 8       // offset 8 mod = 0, so lower two bits become 00
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t0, 0
    addi    t0, t0, 5       // t0 now has lower two bits 01
    jalr    t1, t0, 8       // lower bits of offset 00
    nop
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       // 6 mod 4 = 2, so lower two bits become 10
    jalr    t1, t1, 8
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7       // lower two bits become 11
    jalr    t1, t1, 8       // lower bits of offset 00
    nop
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8      // 8 mod 4 = 0, so lower two bits become 00
    jalr    t1, t1, 5
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5      // lower two bits become 11
    jalr    t1, t1, 5
    nop
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       // 6 mod 4 = 2, so lower two bits are 10
    jalr    t1, t1, 5
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7      // lower two bits are 11
    jalr    t1, t1, 5
    nop
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8       // 8 mod 4 = 0, so rs1[1:0] becomes 00
    jalr    t1, t1, 6     
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5       // rs1[1:0] = 01
    jalr    t1, t1, 6
    nop
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6      // 6 mod 4 = 2, so rs1[1:0] becomes 10
    jalr    t1, t1, 6
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7      // rs1[1:0] = 11
    jalr    t1, t1, 6
    nop
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8      // 8 mod 4 = 0, so rs1[1:0] becomes 00
    jalr    t1, t1, 7
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5      // rs1[1:0] = 01
    jalr    t1, t1, 7
    nop
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       // 6 mod 4 = 2, so rs1[1:0] becomes 10
    jalr    t1, t1, 7
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7       // rs1[1:0] = 11
    jalr    t1, t1, 7
    nop
    .word   0x00010013


    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    li    t1, ACCESS_FAULT_ADDRESS       // Load the fault address into t0
    jalr  ra, t1, 0                      // Jump to the fault address (return address must be in ra)
    nop

    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

    mv a0, a3 // move stored return priveledge mode to a0
    ebreak

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

    // Get a pointer to scratch data
    la      t4, scratch

    // Initialize loop counter (offset) from 0 to 7
    li      t0, 0         // t0 = loop index (offset)
    li      t5, 8         // loop limit (we will test offsets 0 through 7)

load_loop:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // The following five load instructions will use the same effective address.
    // Depending on the current offset, some of these accesses are misaligned
    // relative to the load's natural alignment. In such cases, the processor 
    // will trigger a load misaligned exception, caught by trap_handler.
    
    lh      t2, 0(t1)     
    lhu     t2, 0(t1)     
    lw      t2, 0(t1)     
    lb      t2, 0(t1)     
    lbu     t2, 0(t1)    
   
   // Attempt to load doubleword for RV64  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu     t2, 0(t1)     
            ld      t2, 0(t1)     
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, load_loop

    /////////////////////////////////
    //cp_load_access_fault
    /////////////////////////////////

    // load the illegal address into a register
    li    t0, ACCESS_FAULT_ADDRESS
   
    lb t1, 0(t0)
    
    lbu t2, 0(t0)
    
    lh t3, 0(t0)
    
    lhu t4, 0(t0)
    
    lw t5, 0(t0)

    // RV64 load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu  t6, 0(t0)   
            ld   t6, 0(t0)   
        #endif
    #endif

    /////////////////////////////////
    //cp_store_address_misaligned
    /////////////////////////////////

    // load scratch data address
    la      t4, scratch

    // Initialize loop counter (offset) from 0 to 7
    li      t0, 0         // t0 = loop index (offset)
    li      t5, 8         // loop limit (we will test offsets 0 through 7)

store_loop:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // Prepare a test value to store
    li      t2, 0xDECAFCAB

    // Attempt store instructions at the misaligned effective address
    sb      t2, 0(t1)     
    sh      t2, 0(t1)     
    sw      t2, 0(t1)     

    // RV64 store instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd      t2, 0(t1)     
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, store_loop

    /////////////////////////////////
    //cp_store_access_fault
    /////////////////////////////////

    // Load the illegal address into a register
    la t0, ACCESS_FAULT_ADDRESS 

    // Attempt to store byte
    li t1, 0xAB
    sb t1, 0(t0)

    // Attempt to store halfword
    li t2, 0xBEAD
    sh t2, 0(t0)

    // Attempt to store word
    li t3, 0xADDEDCAB
    sw t3, 0(t0)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            
            li t4, 0xDEADBEEFDEADBEEF
            sd t4, 0(t0)
        #endif
    #endif

    /////////////////////////////////
    //cp_ecall_s
    /////////////////////////////////

    // test an ecall
    mv a0, a3 // move stored return priveledge mode to a0
    ecall    

    /////////////////////////////////
    //cp_illegal_instruction
    /////////////////////////////////

    // ExceptionsInstr.S tests all other illegal instructions exhaustively

    // Attempt to execute illegal instructions
    .word 0x00000000 
    .word 0xFFFFFFFF 

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////

    // Test misaligned priority for load instructions

    // load Instruction fault address
    la      t4, ACCESS_FAULT_ADDRESS

    // Initialize loop counter (offset) from 0 to 7
    li      t0, 0         // t0 = loop index (offset)
    li      t5, 8         // loop limit (we will test offsets 0 through 7)

load_loop_priority:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // The following five load instructions will use the same base address.
    // Depending on the current offset, these accesses are misaligned and on a fault access
    // In such cases, the processor will trigger a load misaligned exception.
    
    lh      t2, 0(t1)     
    lhu     t2, 0(t1)     
    lw      t2, 0(t1)     
    lb      t2, 0(t1)     
    lbu     t2, 0(t1)     
   
   // Attempt to load doubleword for RV64  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu     t2, 0(t1)     
            ld      t2, 0(t1)     
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, load_loop_priority 

    // store priority misaligned test

    // Initialize loop counter (offset) from 0 to 7
    li      t0, 0         // t0 = loop index (offset)
    li      t5, 8         // loop limit (we will test offsets 0 through 7)


    // Test misaligned priority for store instructions

    // Load access fault address
    la      t4, ACCESS_FAULT_ADDRESS

    // Initialize loop counter (offset) from 0 to 7
    li      t0, 0         // t0 = loop index (offset)
    li      t5, 8         // loop limit (we will test offsets 0 through 7)

store_loop_priority:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // Prepare a test value to store
    li      t2, 0xDECAFCAB

    // Attempt store instructions at the misaligned effective address
    sb      t2, 0(t1)     
    sh      t2, 0(t1)     
    sw      t2, 0(t1)     

    // Attempt to store doubleword on RV64
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd      t2, 0(t1)    
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, store_loop_priority

    // Update test value for the next iteration:
    // For iteration  0,     medeleg is all zeros
    // For iteration  1,     initialize walking 1
    // For iterations 2-7,   shift left by 1
    // For iteration  8,     shift by 4 to skip bits 9-11
    // For iterations 12-16, shift left by 1
    // For iteration 17,     set all bits to 1

    // Check if program is at iteration 0
    beq  a1, zero, update_first

    // Check if program's next iteration is 9
    addi a6, a1, -9
    beq  a6, x0, update_9

    // at the end of walks set first 13 writable bits to 1
    addi a6, a1, -18
    beq  a6, x0, ones_update

    // For iterations after the first, shift left by 1
    slli a4, a4, 1          
    j    update_done

    // Initialize walking 1 after testing all zeros in medeleg
update_first:
            li a4, 1        
    
update_done:
    addi a1, a1, 1          // Increment loop counter
    j    cp_medeleg_loop    // Loop back

//skip over bits 9 (s ecall trap), 10 (reserved), and 11 (reserved) of medeleg
update_9: 
    slli a4, a4, 4
    addi a1, a1, 4
    j    cp_medeleg_loop    // Loop back

ones_update:
    li  a4, 0b1011000111111110
    addi a1, a1, 1
    j  cp_medeleg_loop

cp_medeleg_end:
    mv   ra, a5             // Restore return address
    ret