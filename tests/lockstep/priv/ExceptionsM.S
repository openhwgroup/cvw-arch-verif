
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

//Move to  WALLY-init-lib.h eventually
#define ACCESS_FAULT_ADDRESS 0

main:
    // Set up the trap handler
    la t0, trap_handler
    csrw mtvec, t0

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    /////////////////////////////////
    //cp_instr_adr_misaligned_branch
    /////////////////////////////////

    li t1,1        #load a test value
    .align 2       #align the next instruction to a 4 byte boundary 

    //test all six types of taken branches to a misaligned address

    beq x0, x0, .+6  #use .+6 to change PC counter to 6 bytes ahead.

    //ensure a processor that has the compressed extension will execute a c.nop instruction preventing an illegal instruction exception
    //If a processor does not have the compressed extension, there will be a misaligned access exception
    .word 0x00010013 #c.nop when 2 byte accessed, addi x0, x2, 0 when 4 byte accessed

    //follow the template above for all the branches
    bne x0, t1, .+6
    .word 0x00010013

    //blt test
    blt x0, t1, .+6
    .word 0x00010013

    //bge test
    bge t1, x0, .+6
    .word 0x00010013

    //bltu test 
    bltu x0, t1, .+6
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
    .align 2 //Ensure jumps start aligned

    jal   x0,  .+6
    .word 0x00010013

    /////////////////////////////////
    //cp_instr_adr_misaligned_jalr
    /////////////////////////////////   
    //note all the auipc instructions  //////////add on next line (//Ensure jumps start aligned)

    .align 2 //Ensure jumps start aligned

    // test offset[1] = 1, odd multiple of 2, rs1[1:0] = 01
    auipc   t0, 0          # t0 = PC (aligned)
    addi    t0, t0, 9       # 9 mod 4 = 1, so lower two bits become 01
    jalr    t1, t0, 6
    .word   0x00010013

    // test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t0, 0
    addi    t0, t0, 9       # t0 now has lower two bits 01
    jalr    t1, t0, 9
    nop
    .word   0x00010013

    // test offset[1] = 1, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 10      # 10 mod 4 = 2, so lower two bits become 10
    jalr    t1, t1, 6
    .word   0x00010013

    // test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 10      # lower two bits become 10
    jalr    t1, t1, 9
    nop
    .word   0x00010013

    // test offset[1] = 1, odd multiple of 2, rs1[1:0] = 11
    auipc   t2, 0
    addi    t2, t2, 11      # 11 mod 4 = 3, so lower two bits become 11
    jalr    t1, t2, 6
    .word   0x00010013

    // test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t2, 0
    addi    t2, t2, 11      # lower two bits become 11
    jalr    t1, t2, 9
    nop
    .word   0x00010013

    // test offset[1] = 1, odd multiple of 2, rs1[1:0] = 00
    auipc   t3, 0
    addi    t3, t3, 8       # 8 mod 4 = 0, so lower two bits are 00
    jalr    t1, t3, 6
    .word   0x00010013

    // test offset[1] = 0, odd multiple of 2+1, rs1[1:0] = 00
    auipc   t3, 0
    addi    t3, t3, 8       # lower two bits are 00
    jalr    t1, t3, 9
    nop
    .word   0x00010013


    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    # li  t0, ACCESS_FAULT_ADDRESS  // Load the fault address into t0
    # jr  t0                // Jump to the fault address

    /////////////////////////////////
    //cp_illegal_instruction
    /////////////////////////////////

    //ExceptionsInstr.S tests all other illegal instructions exhaustively

    // Attempt to execute illegal instructions
    .word 0x00000000 
    .word 0xFFFFFFFF
 
    /////////////////////////////////
    //cp_illegal_instruction_seed
    /////////////////////////////////

    //throws illegal instruction in machine mode
    csrrs  t1, seed, x0
    csrrc  t2, seed, x0
    csrrsi t3, seed, 0
    csrrci t4, seed, 0

    /////////////////////////////////
    //cp_illegal_instruction_csr
    /////////////////////////////////

    // Attempt to read from CSR 0x000, which is an invalid CSR address
    lui t2, 1
    csrrw t1, 0, t2 //check if needed
    csrrs t1, 0, t2  
    csrrc t1, 0, t2
    csrrwi t1, 0, 1 //check if needed
    csrrsi t1, 0, 1
    csrrci t1, 0, 1


    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

    ebreak

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

    # Get a pointer to scratch data and deliberately misalign it by adding 1
    la      t4, scratch
    addi    t4, t4, 1       # t4 is misaligned

    # Initialize loop counter (offset) from 0 to 7
    li      t0, 0         # t0 = loop index (offset)
    li      t5, 8         # loop limit (we will test offsets 0 through 7)

load_loop:
    # Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    # t1 = effective address with 3 LSBs = t0

    # The following five load instructions will use the same effective address.
    # Depending on the current offset, some of these accesses are misaligned
    # relative to the load's natural alignment. In such cases, the processor 
    # will trigger a load misaligned exception, caught by trap_handler.
    
    lh      t2, 0(t1)     # load halfword (16 bits)
    lhu     t2, 0(t1)     # load halfword unsigned
    lw      t2, 0(t1)     # load word (32 bits)
    lb      t2, 0(t1)     # load byte (signed)
    lbu     t2, 0(t1)     # load byte (unsigned)
   
   # Attempt to load doubleword for RV64  
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu     t2, 0(t1)     # load word (unsigned)
            ld      t2, 0(t1)     # load doubleword (64 bits)
        #endif
    #endif

    # Increment loop counter and iterate if less than 8.
    addi    t0, t0, 1
    blt     t0, t5, load_loop

    /////////////////////////////////
    //cp_load_access_fault
    /////////////////////////////////

    //load the illegal address into a register
    li    t0, ACCESS_FAULT_ADDRESS

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

    # Get a pointer to scratch data and deliberately misalign it by adding 1.
    la      t4, scratch
    addi    t4, t4, 1       # Now t4 is misaligned

    # Initialize loop counter (offset) from 0 to 7.
    li      t0, 0         # t0 = loop index (offset)
    li      t5, 8         # loop limit (we will test offsets 0 through 7)

store_loop:
    # Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    # t1 = effective address with 3 LSBs = t0

    # Prepare a test value to store.
    li      t2, 0xDECAFCAB

    # Attempt store instructions at the misaligned effective address.
    sb      t2, 0(t1)     # store byte (8 bits)
    sh      t2, 0(t1)     # store halfword (16 bits)
    sw      t2, 0(t1)     # store word (32 bits)

    # Attempt to store doubleword on RV64.
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd      t2, 0(t1)     # store doubleword (64 bits)
        #endif
    #endif

    # Increment loop counter and iterate if less than 8.
    addi    t0, t0, 1
    blt     t0, t5, store_loop

    /////////////////////////////////
    //cp_store_access_fault
    /////////////////////////////////

    # Load the illegal address into a register
    la t0, ACCESS_FAULT_ADDRESS 

    # Attempt to store byte
    li t1, 0xAB
    sb t1, 0(t0)

    # Attempt to store halfword
    li t2, 0xBEAD
    sh t2, 0(t0)

    # Attempt to store word
    li t3, 0xADDEDCAB
    sw t3, 0(t0)

    # #ifdef __riscv_xlen
    #     #if __riscv_xlen == 64
    #         // Attempt to store doubleword
    #         li t4, 0xDEADBEEFDEADBEEF
    #         sd t4, 0(t0)
    #     #endif
    # #endif

    /////////////////////////////////
    //cp_ecall_m
    /////////////////////////////////

    //switch from machine mode to machine mode
    li a0, 3
    ecall     

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////

    //load the illegal address into a register and misalign the address
    la      t0, ACCESS_FAULT_ADDRESS
    addi    t0, t0, 1       
    
    //Attemmpt 

    lw t6, 0(t0)

    li t3, 0xADDEDCAB
    sw t3, 0(t0)
    
    /////////////////////////////////
    //cp_mstatus_ie
    /////////////////////////////////

    # Save the original mstatus in t0.
    csrr    t0, mstatus

    # Prepare the mask for the MIE bit (bit 3).
    li      t1, 0x8         # 0x8 == (1 << 3)

    # Clear the MIE bit in mstatus so that on exception entry MPIE becomes 0.
    csrrc   x0, mstatus, t1

    ecall                     # Execute ecall with MIE = 0; trap entry will set MPIE = 0.

    # Set the MIE bit in mstatus so that on exception entry MPIE becomes 1.
    csrrs   x0, mstatus, t1

    ecall                     # Execute ecall with MIE = 1; trap entry will set MPIE = 1.

    # Restore the original mstatus.
    csrw    mstatus, t0

finished:
    j done