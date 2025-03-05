///////////////////////////////////////////
// ExceptionsZc.S
//
// Written: Roman De Santos rdesantos@hmc.edu 28 February 2025
//
// Purpose: Functional coverage test for Exceptions in M mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

 #include "WALLY-init-lib.h"

 main:
     // Set up the trap handler
     la t0, trap_handler
     csrw mtvec, t0

    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

/////////////////////////////////
//cp_load_address_misaligned
/////////////////////////////////

    // Set up a pointers to scratch memory.
    la      a4, scratch

    //Loop over all 3-bit offsets (0..7)
    # These instructions use a base register (a2) plus a register offset.
    li      t0, 0         # loop index (offset 0..7)
    li      t5, 8         # loop limit

load_loop:
    add     a2, a4, t0    # a2 = effective address

    // Test compressed integer load instructions:
    c.lw    a3, 0(a2)     # compressed load word
    c.lh    a3, 0(a2)     # compressed load halfword
    c.lhu   a3, 0(a2)     # compressed load halfword unsigned
    c.lbu   a3, 0(a2)     # compressed load byte unsigned

    //Test shared compressed floating instruction
    c.fld   f8, 0(a2)    # compressed load floating-point doubleword
    
    //Test hardware specific compressed load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.ld    a3, 0(a2)     # compressed load doubleword (RV64 only)
        #elif __riscv_xlen == 32
            c.flw   f8, 0(a2)    # compressed load floating-point word
        #endif
    #endif

    #------------------------
    # Now test the _sp forms.

    addi sp, sp, 1 #increment the sp offset

    c.fldsp f8, 0(sp) # Compressed load floating-point doubleword from sp 
    c.lwsp  a3, 0(sp)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.ldsp  a3, 0(sp)  
        #elif __riscv_xlen == 32
            # Compressed load floating-point word from sp:
            c.flwsp f8, 0(sp)
        #endif
    #endif

    //update loop
    addi    t0, t0, 1
    blt     t0, t5, load_loop

/////////////////////////////////
//cp_load_access_fault
/////////////////////////////////

    // Load the illegal address into registers
    li      a2, ACCESS_FAULT_ADDRESS
    la      sp, ACCESS_FAULT_ADDRESS

    //Compressed load instructions for rv32 and rv64
    c.lbu a3, 0(a2)
    c.lh  a3, 0(a2)
    c.lhu a3, 0(a2)
    c.lw  a3, 0(a2)

    //Test shared compressed floating instruction
    c.fld   f8, 0(a2)    # compressed load floating-point doubleword

    #platform dependent load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.ld a3, 0(a2)   // Load doubleword
        #elif __riscv_xlen == 32
        c.lbu a3, 0(a2) //load byte
        #endif
    #endif

    //Stack pointer variants:
    c.lwsp  a3, 0(sp)       // Compressed load word using stack-pointer offset

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.ldsp  a3, 0(sp)       // Compressed load doubleword using stack-pointer offset
            c.fld   f8, 0(a2)       // Compressed floating-point load doubleword
            c.fldsp f8, 0(sp)       // Compressed floating-point load doubleword from sp
        #elif __riscv_xlen == 32
            c.flw   f8, 0(a2)       // Compressed floating-point load word
            c.flwsp f8, 0(sp)       // Compressed floating-point load word from sp
        #endif
    #endif

/////////////////////////////////
//cp_store_address_misaligned
/////////////////////////////////

    // Set up a pointers to scratch memory.
    la      a3, scratch
    la      sp, scratch

    //Loop over all 3-bit offsets (0..7)
    # These instructions use a base register (a2) plus a register offset.
    li      t0, 0         # loop index (offset 0..7)
    li      t5, 8         # loop limit

store_loop:
    add     a2, a3, t0    # a2 = effective address

    // Test compressed integer load instructions:
    c.sw    a3, 0(a2)     # compressed store word
    c.sh    a3, 0(a2)     # compressed store halfword
    c.sb    a3, 0(a2)

    //Test shared compressed floating instruction
    c.fsd   f8, 0(a2)    # compressed load floating-point doubleword 

    #platform dependent load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.sd    a3, 0(a2)     # compressed load doubleword (RV64 only)
        #elif __riscv_xlen == 32
            c.fsw   f8, 0(a2)    # compressed load floating-point word
        #endif
    #endif 

    #------------------------
    # Now test the _sp forms.

    add     sp, sp, t0    # sp = target address

    c.swsp  a3, 0(sp)
    c.fsdsp f8, 0(sp)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.sdsp  a3, 0(sp)
        #elif __riscv_xlen == 32
            c.fswsp f8, 0(sp)
        #endif
    #endif 

    addi    t0, t0, 1
    blt     t0, t5, store_loop

/////////////////////////////////
//cp_store_access_fault
/////////////////////////////////

    // Load the illegal address into registers
    li      a2, ACCESS_FAULT_ADDRESS
    la      sp, ACCESS_FAULT_ADDRESS

    // Test compressed integer load instructions:
    c.sw    a3, 0(a2)     # compressed store word
    c.sh    a3, 0(a2)     # compressed store halfword
    c.sb    a3, 0(a2)

    //Test shared compressed floating instruction
    c.fsd   f8, 0(a2)    # compressed load floating-point doubleword 

    #platform dependent load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.sd    a3, 0(a2)     # compressed load doubleword (RV64 only)
        #elif __riscv_xlen == 32
            c.fsw   f8, 0(a2)    # compressed load floating-point word
        #endif
    #endif 

    #------------------------
    # Now test the _sp forms.

    add     sp, sp, t0    # sp = target address

    c.swsp  a3, 0(sp)
    c.fsdsp f8, 0(sp)

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            c.sdsp  a3, 0(sp)
        #elif __riscv_xlen == 32
            c.fswsp f8, 0(sp)
        #endif
    #endif 

/////////////////////////////////
//cp_ebreak
/////////////////////////////////
c.ebreak

finished:
    j done