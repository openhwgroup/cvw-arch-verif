
///////////////////////////////////////////
// ExceptionsM.S
//
// Written: Roman De Santos rdesantos@hmc.edu 6 February 2025
//
// Purpose: Functional coverage test for Exceptions in M mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "../../WALLY-init-lib.h" // This path needs to be updated if this file is relocated

main:
    // Set up the trap handler
    la t0, trap_handler
    csrw mtvec, t0
    
/// Maybe you can replace with the return plus2 for trap_handler_returnplus4 for the misaligned then restore to plus 4 after

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch
    /////////////////////////////////

    li t1,1        #load a test value
    .align 4       #align the next instruction to a 4 byte boundary 

    //test for a misaligned access

    beq x0, x0, .+6  #use .+6 to change PC counter to 6 bytes ahead.

    //ensure a processor that has the compressed extension will execute a c.nop instruction preventing an illegal instruction exception
    //If a processor does not have the compressed extension, there will be a misaligned access exception
    .word 0x00010013 #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed

    //follow the template above for all the branches
    bne x0, t1, .+6
    .word 0x00010013

    .word 0x00010013
    nop

    //blt test
    blt x0, t1, .+6
    .word 0x00010013

    //bge test
    bge t1, x0, .+6
    .word 0x00010013

    //bltu test 
    bltu t1, x0, .+6
    .word 0x00010013

    //bgeu test
    bgeu x0, x0, .+6
    .word 0x00010013

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch_nottaken
    /////////////////////////////////

    //these branches are not taken so there should be no exception

    beq x0, t1, .+6 #t1 = 1

    bne x0, x0, .+6

    blt t1, x0, .+6

    bge x0, t1, .+6

    bltu t1, x0, .+6

    bgeu x0, t1, .+6

    /////////////////////////////////
    //cp_instr_adr_misaligned_jal
    /////////////////////////////////

    //note all the auipc instructions 

    //test offset[1] = 1, odd multiple of 2, rs1[1:0] = 01 (t0 -> x5)
    auipc t0, 0 //save program counter to t0
    addi t0, t0, 8     #update PC to align after jalr
    jalr  t1, t0, 6
    .word 0x00010013

    //test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 01 (t0 -> x5)
    auipc t0, 0        #update program counter stored in t0
    addi t0, t0, 8     #update PC to align after jalr
    jalr  t1, t0, 9
    nop                #nop to take up 8 bytes
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)

    //test offset[1] = 1, odd multiple of 2, rs1[1:0] = 10 (t1 -> x6)
    auipc t1, 0        #save program counter to t1 (need to test new rs1)
    addi t1, t1, 8     #update PC to align after jalr  
    jalr  t1, t1, 6   
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)

    //test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 10 (t1 -> x6)
    auipc t1, 0        #save program counter to t1 (need to reset since t1 was changed in the previous test)
    addi t1, t1, 8     #update PC to align after jalr
    jalr  t1, t1, 9
    nop                #nop to take up 8 bytes
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)

    //test offset[1] = 1, odd multiple of 2, rs1[1:0] = 11 (t2 -> x7)
    auipc t2, 0        #save program counter to t2 (need to test new rs1)
    addi t2, t2, 8     #update PC to align after jalr
    jalr  t1, t2, 6      
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed

    //test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 11 (t2 -> x7)
    auipc t2, 0        # Reset t2 since t2 was changed in the previous test
    addi t2, t2, 8     #update PC to align after jalr
    jalr  t1, t2, 9
    nop                #nop to take up 8 bytes
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)

    //test offset[1] = 1, odd multiple of 2, rs1[1:0] = 00 (t3 -> x8)
    auipc t3, 0        #save program counter to t1 (need to test new rs1)  
    addi t3, t3, 8     #update PC to align after jalr
    jalr  t1, t3, 6   
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)

    //test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 00 (t3 -> x8)
    auipc t3, 0        #save program counter to t1 (need to reset since t1 was changed in the previous test)
    addi t3, t3, 8     #update PC to align after jalr
    jalr  t1, t3, 9
    nop                #nop to take up 8 bytes
    .word 0x00010013   #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed (Currently throws illegal access with or without compressed extension)


    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    //look at covergroup files to find illegal address use a jar command R
    //`ACCESS_FAULT_ADDRESS

    /////////////////////////////////
    //cp_illegal_instruction
    /////////////////////////////////



    //Unused op codes padded with zeros
    .word 00000000000000000000000000011111 
    .word 00000000000000000000000000111111
    .word 00000000000000000000000001010111
    .word 00000000000000000000000001011011 #Seems like cover group has redundant bin
    .word 00000000000000000000000001011111
    .word 00000000000000000000000001101011
    .word 00000000000000000000000001110111
    .word 00000000000000000000000001111011
    .word 00000000000000000000000001111111


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
    csrrw x0, 0, x0  # This should trigger an illegal instruction exception

    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

    ebreak

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

    li   t0, 0x1000      # Base address (aligned to 4 bytes) (CHANGE THIS TO TEST DIFFERENT ADDRESSES)
    li   t1, 0           # Offset = 0 (will vary from 0 to 7)
    li   t6, 8           # Loop counter for 8 iterations

    load_loop:
        add  t2, t0, t1      # Compute effective address = base + offset

        # Attempt misaligned loads for the effective address (t2)
        lh   t3, 0(t2)       # Load halfword (signed)
        lhu  t3, 0(t2)       # Load halfword (unsigned)
        lw   t3, 0(t2)       # Load word (signed)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu  t3, 0(t2)   # Load word (unsigned)
            ld   t3, 0(t2)   # Load doubleword
        #endif
    #endif

        addi t1, t1, 1          # Increment offset (0 to 7)
        blt t1, t6, load_loop   # Loop until all 8 offsets have been tested

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

    // Attempt to load doubleword for RV64
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu  t6, 0(t0)   # Load word (unsigned)
            ld   t6, 0(t0)   # Load doubleword
        #endif
    #endif

    /////////////////////////////////
    //cp_store_address_misaligned
    /////////////////////////////////

    li   t0, 0x1000       # Base address (aligned to 4 bytes)
    li   t1, 0            # Offset: start at 0 (will take on values 0-7)
    li   t6, 8            # Loop counter: 8 iterations for offsets 0 through 7

store_loop:
    add  t2, t0, t1       # Compute effective address = base + offset

    # Attempt misaligned store: halfword
    li   t3, 0xABCD       # Sample halfword data
    sh   t3, 0(t2)        # Store halfword at address in t2

    # Attempt misaligned store: word
    li   t4, 0x12345678   # Sample word data
    sw   t4, 0(t2)        # Store word at address in t2

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            # For 64-bit implementations: attempt misaligned store: doubleword
            li   t5, 0x123456789ABCDEF0  # Sample doubleword data
            sd   t5, 0(t2)        # Store doubleword at address in t2
        #endif
    #endif

    addi t1, t1, 1        # Increment offset (0 to 7)
    addi t6, t6, -1       # Decrement loop counter
    bnez t6, store_loop   # Loop until all 8 offsets have been tested

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

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            // Attempt to store doubleword
            li t4, 0x123456789ABCDEF0
            sd t4, 0(t0)
        #endif
    #endif

    /////////////////////////////////
    //cp_ecall_m
    /////////////////////////////////

    //switch from machine mode to machine mode
    li a0, 3
    ecall     

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////
        // how do I use like in coverage.svh`ACCESS_FAULT_ADDRESS
    

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

finished:
    j done