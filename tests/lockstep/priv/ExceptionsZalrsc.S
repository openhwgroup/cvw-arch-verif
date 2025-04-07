///////////////////////////////////////////
// ExceptionsZalrsc.S
//
// Written: Roman De Santos rdesantos@hmc.edu 1 April 2025
//
// Purpose: Functional coverage test for Zalrsc extension Exceptions 
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:

/////////////////////////////////////////////////////////////
//cp_load_address_misaligned AND cp_store_address_misaligned
/////////////////////////////////////////////////////////////

// Test values 0-7 as the LSB for rs1 of the AMO instructions

    li   a2, 0         // loop counter
    li   a3, 8         // loop limit
loop:

    // Call the Zaamo_Instructions function
    // a2 = misalignment value, No instruction access fault (a1 = 0)
    mv  a0, a2         
    li  a1, 0         
    jal atomic_instr
    
    addi a2, a2, 1      // Increment loop counter by 1
    blt  a2, a3, atomic_instr   // If a2 is less than 8, branch back to 'loop'

finished:
    j done

// Function: atomic_add
// Purpose: Tests the lr.x and sc.x instructions from the Zalsc extension.
// The function performs an atomic add in Rv32 and Rv64 configurations
// Then it tests misaligned and access fault addresses with lr.x and sc.x. 
//
// The function takes two arguments:
// a0: The misalignment value of rs1.
// a1: A flag indicating whether to load the Access Fault address.
atomic_instr:

    //initialize scratch memory
    la      t0, scratch

    li      t1, 0xDEADBEEF

    sw      t1, 0(t0)          
    sw      t1, 4(t0)          
    sw      t1, 8(t0)          
    sw      t1, 12(t0)  

    // Update scratch address to be misaligned based a0 argument
    add t0, a0, t0

    // load the Access Fault address to the base address
    li t1, 1
    bne a1, t1, skipIAF
    li    t0, ACCESS_FAULT_ADDRESS

 skipIAF: 

    lr.w   t4, (t0)        // Load the current 32-bit value from the memory address in a0,

    addi    t4, t4, 2     // update loaded value

    // attempt a failing store word
    li t3, 4000
    add t1, t0, t3
    sc.w   t2, t4, (t1)    // Attempt to do an sc.w unpaired with an lr.w

    sc.w   t2, t4, (t0)    // Attempt to store the new value back to the memory address in a0.

    // Test Rv64 AMO instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lr.d   t4, (t0)        // Load the current 32-bit value from the memory address in a0,

            addi    t4, t4, 2     // update loaded value

            // attempt a failing store word
            li t3, 4000
            add t1, t0, t3
            sc.d   t2, t4, (t1)    // Attempt to do an sc.w unpaired with an lr.w

            sc.d   t2, t4, (t0)    // Attempt to store the new value back to the memory address in a0.
        #endif
    #endif



    ret                 