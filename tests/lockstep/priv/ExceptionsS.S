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

s_traphandler:
    csrr t6, sepc
    bne t6, x0, post_scheck //instruction access fault (assuming access fault address is 0)
    mv t6, ra
post_scheck:
    # andi s1, t6, 2 //check if compressed
    # beq s1, x0, compressed

    addi t6,t6,4 //return to next instruction
    # j post_compressed
# compressed:
#     addi t6,t6,2 //return to next instruction
# post_compressed:
    bne s3, x0, skipecall //skip ecall when bit 9 of mdeleg is 1
    ecall
skipecall:
    jr t6

//program start
main:

// Set up the trap handler
la t0, s_traphandler
csrw stvec, t0

# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0

j cp_medeleg_done           // Skip function until called

// Function: cp_medeleg
// a0 must be preset with the privilege mode you are testing (M/S/U) before calling.
cp_medeleg:
    mv a5, ra                  // Save return address

    //--- Test: Loop over all-zero plus 17 walking-1 values in medelegh ---
    // Total iterations = 18:
    //   Iteration 0: medeleg = all zeros (upper 32 bits are 0)
    //   Iterations 1-17: a walking 1 in the upper 32 bits
    li   a1, 0                // Loop counter
    li   a2, 20               // Total iterations (0's + 1's+ 17 walking ones)
    li   a4, 0                // Initialize test value to 0 (all zeros)

cp_medeleg_loop:
    bge  a1, a2, cp_medeleg_end   // Exit loop when a1 >= 19

    li   a0, 3              // Enter machine mode
    li s3, 0                //do not skip privledge raise (s_trap)
    ecall
        
    csrw medeleg, a4   // write walking 1 to medeleg
    
    
    mv   a0, a3             // load into test privilege mode
    li s3, 0                //do not skip privledge raise (s_trap)
    ecall   

    li s3, 1  //skip over s_trap handler ecall

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

    .align 2 //Ensure jumps start aligned

    // test offset[1:0] = 00, odd multiple of 2, rs1[1:0] = 00
    auipc   t0, 0           
    addi    t0, t0, 8       # 8 mod 4 = 0, so lower two bits become 00
    jalr    t1, t0, 8       #offset 8 mod = 0, so lower two bits become 00
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t0, 0
    addi    t0, t0, 5       # t0 now has lower two bits 01
    jalr    t1, t0, 8       # lower bits of offset 00
    nop
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       # 6 mod 4 = 2, so lower two bits become 10
    jalr    t1, t1, 8
    .word   0x00010013

    // test offset[1:0] = 00, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7       # lower two bits become 11
    jalr    t1, t1, 8       # lower bits of offset 00
    nop
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8      # 8 mod 4 = 0, so lower two bits become 00
    jalr    t1, t1, 5
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5      # lower two bits become 11
    jalr    t1, t1, 5
    nop
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       # 6 mod 4 = 2, so lower two bits are 10
    jalr    t1, t1, 5
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7      # lower two bits are 11
    jalr    t1, t1, 5
    nop
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8       # 8 mod 4 = 0, so rs1[1:0] becomes 00
    jalr    t1, t1, 6     
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5       # rs1[1:0] = 01
    jalr    t1, t1, 6
    nop
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6      # 6 mod 4 = 2, so rs1[1:0] becomes 10
    jalr    t1, t1, 6
    .word   0x00010013

    // test offset[1:0] = 10, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7      # rs1[1:0] = 11
    jalr    t1, t1, 6
    nop
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8      # 8 mod 4 = 0, so rs1[1:0] becomes 00
    jalr    t1, t1, 7
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5      # rs1[1:0] = 01
    jalr    t1, t1, 7
    nop
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       # 6 mod 4 = 2, so rs1[1:0] becomes 10
    jalr    t1, t1, 7
    .word   0x00010013

    // test offset[1:0] = 11, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7       # rs1[1:0] = 11
    jalr    t1, t1, 7
    nop
    .word   0x00010013


    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    li    t1, ACCESS_FAULT_ADDRESS       // Load the fault address into t0
    jalr  ra, t1, 0                      // Jump to the fault address (return address must be in t2)
    nop

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
    csrrs t1, 0, t2  
    csrrc t1, 0, t2
    csrrsi t1, 0, 1
    csrrci t1, 0, 1

    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

    ebreak

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

    # Get a pointer to scratch data
    la      t4, scratch

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

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            // Attempt to store doubleword
            li t4, 0xDEADBEEFDEADBEEF
            sd t4, 0(t0)
        #endif
    #endif

    /////////////////////////////////
    //cp_ecall_s
    /////////////////////////////////

    //skip privledge raise (don't want to change mode)
    //properly executes when bit 9 of medeleg is 1
    li s3, 1 
    ecall     

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////

    //Test misaligned priority for load instructions

  # Get a pointer to an access fault address and deliberately misalign it by adding 1
    la      t4, ACCESS_FAULT_ADDRESS

    # Initialize loop counter (offset) from 0 to 7
    li      t0, 0         # t0 = loop index (offset)
    li      t5, 8         # loop limit (we will test offsets 0 through 7)

load_loop_priority:
    # Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    # t1 = effective address with 3 LSBs = t0

    # The following five load instructions will use the same effective address.
    # Depending on the current offset, these accesses are misaligned and on a fault access
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
    blt     t0, t5, load_loop_priority 

    //store priority misaligned test

    # Initialize loop counter (offset) from 0 to 7
    li      t0, 0         # t0 = loop index (offset)
    li      t5, 8         # loop limit (we will test offsets 0 through 7)


    //Test misaligned priority for store instructions

        # Get a pointer to scratch data and deliberately misalign it by adding 1.
    la      t4, ACCESS_FAULT_ADDRESS

    # Initialize loop counter (offset) from 0 to 7.
    li      t0, 0         # t0 = loop index (offset)
    li      t5, 8         # loop limit (we will test offsets 0 through 7)

store_loop_priority:
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
    blt     t0, t5, store_loop_priority

    // Update test value for the next iteration:
    // For iteration 0 (a1 == 0), a4 remains 0 (all zeros).
    // Then, for iteration 1, initialize a4 to a walking one in the upper 32 bits.
    // For subsequent iterations, shift the walking one left by 1.
    beq  a1, zero, update_first

    //if on 9th iteration increment by 2 to skip setting the reserved bit
    addi a6, a1, -9
    beq  a6, x0, update_9

    //at the end of walks set first 13 writable bits to 1
    addi a6, a1, -18
    beq  a6, x0, ones_update

    slli a4, a4, 1          // For iterations after the first, shift left by 1
    j    update_done
update_first:
            li a4, 1        
    
update_done:
    addi a1, a1, 1         // Increment loop counter
    j    cp_medeleg_loop    // Loop back

update_9: //skip over bit 9 (ecalls) and reserved bit
    slli a4, a4, 3
    addi a1, a1, 3
    j    cp_medeleg_loop    // Loop back

ones_update:
    li  a4, 0xb3ff
    addi a1, a1, 1
    j  cp_medeleg_loop

cp_medeleg_end:
    mv   ra, a5             // Restore return address
    ret                     // Return from function

cp_medeleg_done:

    // Call cp_medeleg in the three modes

    // supervisor mode test
    li a3, 1 //cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

    //user mode test
    li a3, 0 //cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

    //machine mode test
    li a3, 3 //cp_medeleg function expects  desired mode in a3
    jal ra, cp_medeleg

finished:
    j done