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
    jal atomic_add
    
    addi a2, a2, 1      // Increment loop counter by 1
    blt  a2, a3, loop   // If a2 is less than 8, branch back to 'loop'

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
atomic_add:

    //initialize scratch memory
    la      t0, scratch

    li      t1, 0xDEADBEEF

    sw      t1, 0(t0)          
    sw      t1, 4(t0)          
    sw      t1, 8(t0)          
    sw      t1, 12(t0)  

    // Update scratch address to be misaligned based a0 argument
    add t0, a0, t0

    // If testing for an instruction
    // load the Access Fault address to the base address
    li t1, 1
    bne a1, t1, skipIAF
    li    t0, ACCESS_FAULT_ADDRESS

 skipIAF: 

atomic_add_word_loop:
    lr.w   t0, (a0)        // Load the current 32-bit value from the memory address in a0,

    add    t0, t0, a1      // Add the value in a1 to the loaded value in t0.
    sc.w   t2, t0, (a0)    // Attempt to store the new value back to the memory address in a0.

    bnez   t2, atomic_add_word_loop  // If sc.w failed (t2 is not zero), retry the atomic add.

    // Test Rv64 AMO instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            atomic_add_double_loop:
                lr.d   t0, (a0)        // Load the current 32-bit value from the memory address in a0,

                add    t0, t0, a1      // Add the value in a1 to the loaded value in t0.
                sc.d   t2, t0, (a0)    // Attempt to store the new value back to the memory address in a0.
                
                bnez   t2, atomic_add_double_loop  // If sc.w failed (t2 is not zero), retry the atomic add.
        #endif
    #endif



    ret                 