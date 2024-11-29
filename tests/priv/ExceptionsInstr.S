///////////////////////////////////////////
// ExceptionsInstr.S
//
// Written: David_Harris@hmc.edu 26 November 2024
//
// Purpose: Functional coverage tests for illegal instructions
//          Portion of ExceptionsM_coverage
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////


#include "WALLY-init-lib.h"

main:

    # set up fast trap handler for uncompressed illegal instructions
    # because these tests will throw a huge number of traps
    # This handler just adds 4 to PC and returns.  It cannot
    # handle other functions, so substitute the normal trap handler
    # at the end of the program

    la t0, trap_handler_returnplus4
    csrw mtvec, t0

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

/////////////////////////////////
// cp_reserved
/////////////////////////////////
    .word 0b00010000000000000000000000001111 # fence with reserved fm
    .word 0b10000000000000000000000000001111 # fence.tso with reserved ordering
    .word 0b00001111111100001000000000001111 # fence with reserved rs1
    .word 0b00001111111100000000000010001111 # fence with reserved rd

/////////////////////////////////
// Test illegal uncompressed instructions
/////////////////////////////////
 
    #include "ExceptionInstr-Tests.h"

/////////////////////////////////
// Test illegal compressed instructions
/////////////////////////////////

    la t0, trap_handler_returnplus2
    csrw mtvec, t0

   // #include "ExceptionInstrCompressed-Tests.h"

// Restore trap handler before returning

    la t0, trap_handler
    csrw mtvec, t0

finished:
    j done

