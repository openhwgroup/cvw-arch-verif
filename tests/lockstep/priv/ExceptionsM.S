
///////////////////////////////////////////
// ExceptionsM.S
//
// Written: rdesantos@hmc.edu 6 February 2025
//
// Purpose: Code coverage for the remaining ExceptionsM tests
//          not exercised in ExceptionsInstr.S
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "../../WALLY-init-lib.h" // This path needs to be updated if this file is relocated

main:


    # set up fast trap handler for uncompressed illegal instructions
    # because these tests will throw a huge number of traps
    # This handler just adds 4 to PC and returns.  It cannot
    # handle other functions, so substitute the normal trap handler
    # at the end of the program


    la t0, trap_handler_returnplus4
    csrw mtvec, t0

    # la t0, trap_handler_returnplus2
    # csrw mtvec, t0

    
/// Maybe you can replace with the return plus2 for trap_handler_returnplus4 for the misaligned then restore to plus 4 after

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch
    /////////////////////////////////

    li t1,1        #load a test value
    .align 2

    //test for a misaligned access then realign with a packed c.nop instruction
    //Trap hander returns .+4 bytes (32 bits) later in the PC counter then reads .+2 bytes (16 bits) to execute
    //so use .+6 to ensure the upper portion of the packed c.nop instruction is read by the program
    beq x0, x0, .+6 
    nop
    .word 0x00010000 //pack the c.nop function to the upper 2 bytes and pad with zeros

    //follow the template above for all the branches
    bne x0, t1, .+6 
    nop  
    .word 0x00010000

    //blt test
    blt x0, t1, .+6 
    nop
    .word 0x00010000

    //bge
    bge t1, x0, .+6 
    nop
    .word 0x00010000

    //bltu
    bltu t1, x0, .+6 
    nop
    .word 0x00010000

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch_nottaken
    /////////////////////////////////

    //these branches are not taken so there should be no exception

    beq x0, t1, .+2

    bne x0, x0, .+2

    blt t1, x0, .+2

    bge x0, t1, .+2

    bltu t1, x0, .+2

    bgeu x0, t1, .+2


    /////////////////////////////////
    //cp_instr_adr_misaligned_jal
    /////////////////////////////////


    //test for a misaligned access then realign with a packed c.nop instruction
    //Trap hander returns .+4 bytes (32 bits) later in the PC counter then reads .+2 bytes (16 bits) to execute
    //so use .+6 to ensure the upper portion of the packed c.nop instruction is read by the program
    jal x0, .+6
    nop
    .word 0x00010000 //pack the c.nop function to the upper region and pad with zeros

    /////////////////////////////////
    //cp_instr_adr_misaligned_jalr
    /////////////////////////////////

    t0 =  auipc t0, 0 //save program counter to t0

    jalr  t1,  t0, 6
    nop
    .word 0x00010000

    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    //look at covergroup files to find illegal address use a jar command R
    //`ACCESS_FAULT_ADDRESS

    /////////////////////////////////
    //cp_illegal_instruction
    /////////////////////////////////



    /////////////////////////////////
    //cp_illegal_instruction_seed
    /////////////////////////////////

        //throws illegal instruction in machine mode

        csrrs  x0, seed, x0
        csrrc  x0, seed, x0
        csrrsi x0, seed, 0
        csrrci x0, seed, 0

    /////////////////////////////////
    //cp_illegal_instruction_csr
    /////////////////////////////////

        // Attempt to read from CSR 0x000, which is an invalid CSR address
        csrrw x0, 0x000, x0  # This should trigger an illegal instruction exception

    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

        ebreak

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

        li t2, 0          # Initialize valid address

        # Loop through LSB combinations 000 - 111
        li t1, 0          # Initialize offset
    loop:
        add t2, t0, t1    # Calculate address with current offset

        lh t3, 0(t2)      # Load halfword (signed)
        lhu t4, 0(t2)     # Load halfword (unsigned)
        lw t5, 0(t2)      # Load word (signed)
        lwu t6, 0(t2)     # Load word (unsigned)
        ld t7, 0(t2)      # Load doubleword

        addi t1, t1, 1    # Increment offset
        andi t1, t1, 7    # Keep offset within 3 LSBs (000 - 111)
        bnez t1, loop     # Repeat loop if offset is not zero

    /////////////////////////////////
    //cp_load_access_fault
    /////////////////////////////////

    // Load the illegal address into a register (parameterized)
        li t0, 0xFFFFFFFF  # Replace this with the illegal address you want to test

        // Attempt to load byte (signed)
        lb t1, 0(t0)
        // Attempt to load byte (unsigned)
        lbu t2, 0(t0)
        // Attempt to load halfword (signed)
        lh t3, 0(t0)
        // Attempt to load halfword (unsigned)
        lhu t4, 0(t0)
        // Attempt to load word (signed)
        lw t5, 0(t0)
        // Attempt to load word (unsigned)
        lwu t6, 0(t0)
        // Attempt to load doubleword
        ld t7, 0(t0)

    /////////////////////////////////
    //cp_store_address_misaligned
    /////////////////////////////////

        //CHANGE DATA
        la t0, data       # Load address of data into t0

    # Loop through LSB combinations 000 - 111
        li t1, 0          # Initialize offset
    loop:
        add t2, t0, t1    # Calculate address with current offset

        # Attempt to store halfword
        li t3, 0xABCD
        sh t3, 0(t2)

        # Attempt to store word
        li t4, 0x12345678
        sw t4, 0(t2)

        # Attempt to store doubleword (LI MIGHT NOT WORK FOR THIS )
        li t5, 0x123456789ABCDEF0
        sd t5, 0(t2)

        addi t1, t1, 1    # Increment offset
        andi t1, t1, 7    # Keep offset within 3 LSBs (000 - 111)
        bnez t1, loop     # Repeat loop if offset is not zero

    /////////////////////////////////
    //cp_store_access_fault
    /////////////////////////////////
    
        # Load the illegal address into a register (parameterized)
        li t0, 0xFFFFFFFF  # Replace this with the illegal address you want to test

        # Attempt to store byte
        li t1, 0xAB
        sb t1, 0(t0)

        # Attempt to store halfword
        li t2, 0xABCD
        sh t2, 0(t0)

        # Attempt to store word
        li t3, 0x12345678
        sw t3, 0(t0)

        # Attempt to store doubleword
        li t4, 0x123456789ABCDEF0
        sd t4, 0(t0)

    /////////////////////////////////
    //cp_ecall_m
    /////////////////////////////////

    //switch from machine mode to machine mode
    li a0, 3
    ecall     

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////

    /////////////////////////////////
    //cp_mstatus_ie
    /////////////////////////////////

    //save csr value
    csrr t0,  mie

    csrs mie, 0
    ecall

    csrs mie, 1
    ecall

    //restore csr
    csrw mie, t0




    finish:
        j done
