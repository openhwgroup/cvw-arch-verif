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

////////////////////////////
//cp_load_address_misaligned
////////////////////////////

// Test values 0-7 as the LSB for rs1 when lw.x/sc.x is executed

    li   a2, 0         // loop counter
    li   a3, 8         // loop limit
loop:

    // Call the atomic_instr function
    // a0 = misalignment value, No instruction access fault (a1 = 0)
    mv  a0, a2         
    li  a1, 0         
    jal atomic_instr

    // loop update
    addi a2, a2, 1      // Increment loop counter by 1
    blt  a2, a3, loop


//////////////////////////////
//cp_load_address_access_fault
//////////////////////////////
    // Call the atomic_instr function
    // no misalignment a2 = 0, instruction access fault (a1 = 1)
    li  a0, 0        
    li  a1, 1         
    jal atomic_instr

finished:
    j done

// Function: atomic_add
// Purpose: Tests the lr.x and sc.x instructions from the Zalsc extension.
// This function tests misaligned and access fault addresses with lr.x and sc.x. 
//
// The function takes two arguments:
// a0: The misalignment value of rs1.
// a1: A flag indicating whether to load the Access Fault address.
atomic_instr:

    // Initialize scratch memory
    la      t0, scratch

    li      t1, 0xDEADBEEF

    sw      t1, 0(t0)          
    sw      t1, 4(t0)          
    sw      t1, 8(t0)          
    sw      t1, 12(t0)  

    // Update scratch address to be misaligned based on a0 argument
    add t0, a0, t0

    // Load the Access Fault address if enabled
    li t1, 1
    bne a1, t1, skipIAF
    li    t0, ACCESS_FAULT_ADDRESS

 skipIAF: 

    // Attempt an sc.w in reservation range 
    lr.w   t4, (t0)        // Load the current 32-bit value from the memory address in a0,

    addi   t4, t4, 2       // Update loaded value

    sc.w   t2, t4, (t0)    // Attempt to store the value back to the memory address in a0.

    // Attempt a sc.w out of reservation range
    addi    t4, t4, 2     // update value to distinguish from previous sc.w

    // Increment address to be outside of reserved range 
    li t3, 4000
    add t1, t0, t3

    lr.w   t4, (t0)        // Load the current 32-bit value from the memory address in a0,

    sc.w   t2, t4, (t1)   // address in t0 from previous lr.w is significantly different from t1 

    // Test Rv64 AMO instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            // Attempt an sc.d in reservation range 
            lr.d   t4, (t0)  

            addi   t4, t4, 2       // Update loaded value

            sc.d   t2, t4, (t0)    // Attempt to store the value back to the memory address in a0.

            // Attempt a sc.d out of reservation range
            addi    t4, t4, 2     // update value to distinguish from previous sc.d

            // Increment address to be outside of reserved range 
            li t3, 4000
            add t1, t0, t3

            lr.d   t4, (t0)

            sc.d   t2, t4, (t1)   // address in t0 from previous lr.d is significantly different from t1  
        #endif
    #endif



    ret                 