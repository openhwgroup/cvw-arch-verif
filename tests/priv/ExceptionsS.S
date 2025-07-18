///////////////////////////////////////////
// ExceptionsS.S
//
// Written: Roman De Santos rdesantos@hmc.edu 6 February 2025
// Edited (to include signature logic): Marina Bellido mbellido@hmc.edu July 5th 2025
//
// Purpose: Functional coverage test for Exceptions in S mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#define SKIP_MTVAL  # flags to skip mtval and mepc checks since we an Instruction Access Fault (IAF) test
#define IAF # Instruction Access Fault: logic to adjust mepc to return to ra for instruction access fault

#include "model_test.h"
#include "arch_test.h"
RVTEST_ISA("RV32I_Zicsr, RV64I_Zicsr")
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*I.*Zicsr.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=True; def rvtest_dtrap_routine=True; def TEST_CASE_1=True",ExceptionsS)
    RVTEST_SIGBASE( x3,signature_base)
//BLOCKED.*
	.attribute unaligned_access, 0
	.attribute stack_align, 16
  	.align	2
  	.option norvc

main:


 # set up PMP so user and supervisor mode can access full address space
    csrw pmpcfg0, 0xF   # configure PMP0 to TOR RWX
    LI(t0, 0xFFFFFFFF)
    csrw pmpaddr0, t0   # configure PMP0 top of range to 0xFFFFFFFF to allow all 32-bit addresses
    csrw satp, x0       # turn off satp to disable VM


    RVTEST_GOTO_MMODE
    RVTEST_GOTO_LOWER_MODE Smode

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
    // Covers the supervisor mode coverpoints from cp_stvec and cp_medeleg_msu
    // Call the cp_medeleg function
    //  a0 = 1 (supervisor mode)
    LI(a0, 1)
    jal ra, cp_medeleg

    // Covers the user mode coverpoints from cp_stvec and cp_medeleg_msu
    // Call the cp_medeleg function
    //   a0 = 0 (user mode)
    LI(a0, 0)
    jal ra, cp_medeleg

    // Call the cp_medeleg function
    //   a0 = 3 (machine mode)
    // Covers the machine mode coverpoints from cp_stvec and cp_medeleg_msu
    LI(a0, 3)
    jal ra, cp_medeleg

    // Test the remaining supervisor mode coverpoints that
    // do not require different values of medeleg

    // Restore medeleg to all zeros
    // Enter machine privilege mode
    RVTEST_GOTO_MMODE   # M-mode

    // Write zeros to medeleg
    LI(a4, 0)
    csrw medeleg, a4
    nop

    // Enter supervisor privilege mode
    RVTEST_GOTO_LOWER_MODE Smode


    /////////////////////////////////
    //cp_instr_adr_misaligned_branch
    /////////////////////////////////

    LI(t1, 1)        // load a test value
    .align 2       // align the next instruction to a 4 byte boundary

    // test all six types of taken branches to a misaligned address

    beq x0, x0, .+6  // use .+6 to change PC counter to 6 bytes ahead

    // If the configuration supports compressed instruction a c.nop instruction is executed.
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

    LI(t1, 1)        // load a test value
    .align 2       // align the next instruction to a 4 byte boundary

    beq x0, t1, .+6

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

    // Throws illegal instruction in machine mode and supervisor mode
    csrrs  t1, seed, x0
    nop
    csrrc  t2, seed, x0
    nop
    csrrsi t3, seed, 0
    nop
    csrrci t4, seed, 0
    nop


    /////////////////////////////////
    //cp_illegal_instruction_csr
    /////////////////////////////////

    // Attempt to read from CSR 0x000, which is an invalid CSR address
    lui t2, 1
    csrrs t1, 0, t2
    nop
    csrrc t1, 0, t2
    nop
    csrrsi t1, 0, 1
    nop
    csrrci t1, 0, 1
    nop

    /////////////////////////////////
    //cp_xstatus_ie
    /////////////////////////////////

    // prepare masks
    LI(t0, 8)        // (1 << 3) bit 3 in mstatus is the MIE bit
    LI(t1, 2)        // (1 << 1) bit 1 in sstatus is the SIE bit

    // supervisor_mode:

    // Machine mode setup since other modes cannot modify CSRs
    RVTEST_GOTO_MMODE   # M-mode

    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrc mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode

    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrs mstatus, t0
    nop
    csrc sstatus, t1
    nop

    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode



    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrc mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrs mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode




    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // change medeleg bit 8 (for this and the next supervisor tests)
    LI(a4, 256)        // (1<<8) bit 8 in medeleg is the ecallu delegation bit
    csrs medeleg, a4  // set bit 8 in medeleg
    nop
    // update mie and sie bits
    csrc mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrc mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Smode


    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // User_mode:

    // change medeleg bit 8 (for this and the next user tests)
    LI(a4, 256)        // (1<<8) bit 8 in medeleg is the ecallu delegation bit
    csrc medeleg, a4  // clear bit 8 in medeleg
    nop
    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrc mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested (user mode)
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {0}
    csrs mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested (user mode)
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrc mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {0}
    csrs mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {0}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // change medeleg bit 8 (for the current and following test)
    LI(a4, 256)        //  (1<<8) bit 8 in medeleg is the ecallu delegation bit
    csrs medeleg, a4  //  set bit 8 in medeleg
    nop

    // update mie and sie bits
    csrc mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {0}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    nop
    csrc sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {0}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrc mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


    // mstatus_MIE = {1}, sstatus_SIE = {1}, medeleg_b8 = {1}
    // update mie and sie bits
    csrs mstatus, t0
    nop
    csrs sstatus, t1
    nop
    // enter privilege mode being tested
    RVTEST_GOTO_LOWER_MODE Umode

    // test ecall (enter machine privilege mode)
    RVTEST_GOTO_MMODE   # M-mode


finished:
    j test_end



// Function: cp_medeleg
// Tests instructions when medeleg = all 1's, all 0's, and walking 1's.
// Only includes cover points that need to be tested with different values of medeleg.
//
// a0: Sets the privilege mode to test (0 = user, 1 = supervisor, 3 = machine).

cp_medeleg:
    mv a5, ra                  // Save return address
    mv a3, a0                  // Save test mode

    //--- Test: Loop over all-zero, all-ones, and 17 walking-1 values in medeleg ---
    //   Total iterations = 19 (skips iterations 9-11):
    //   Iteration  0:    medeleg = all zeros
    //   Iterations 1-18: a walking 1 in the upper 32 bits (skips reserved bits 9-11)
    //   Iteration  19:   medeleg = {1011_0001_1111_1111}
    LI(a1, 0)                // Loop counter
    LI(a2, 20)               // Total iterations + 1 (0's + 1's+ 17 walking ones)
    LI(a4, 0)                // Initialize test value to 0 (all zeros test)

cp_medeleg_loop:
    bge  a1, a2, cp_medeleg_end   // Exit loop when a1 >= 19

    // Enter machine mode
    # RVTEST_GOTO_SMODE   # M-mode
    RVTEST_GOTO_SMODE
    nop
    RVTEST_GOTO_MMODE   # M-mode


    // write walking 1 to medeleg
    csrw medeleg, a4
    nop

    // Enter test mode (stored in a3)
    mv   a0, a3
    # ecall
    # nop
    LI(t2, 0)
    beq a0, t2, use_umode
    LI(t2, 1)
    beq a0, t2, use_smode
    LI(t2, 3)
    beq a0, t2, continue_cp_medeleg_loop  // Already in Mmode since we edit medeleg

    use_umode:
        RVTEST_GOTO_LOWER_MODE Umode
        j continue_cp_medeleg_loop
    use_smode:
        RVTEST_GOTO_LOWER_MODE Smode
        j continue_cp_medeleg_loop

    continue_cp_medeleg_loop:


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
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 00
    auipc   t1, 0
    addi    t1, t1, 8      // 8 mod 4 = 0, so lower two bits become 00
    jalr    t1, t1, 5
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 01
    auipc   t1, 0
    addi    t1, t1, 5      // lower two bits become 01
    jalr    t1, t1, 9
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2, rs1[1:0] = 10
    auipc   t1, 0
    addi    t1, t1, 6       // 6 mod 4 = 2, so lower two bits are 10
    jalr    t1, t1, 9
    .word   0x00010013

    // test offset[1:0] = 01, odd multiple of 2+1, rs1[1:0] = 11
    auipc   t1, 0
    addi    t1, t1, 7      // lower two bits are 11
    jalr    t1, t1, 5
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
    .word   0x00010013


    /////////////////////////////////
    //cp_instr_access_fault
    /////////////////////////////////

    LI(t1, ACCESS_FAULT_ADDRESS)       // Load the fault address into t0
    jalr  ra, t1, 0                      // Jump to the fault address (return address must be in ra)
    nop

    /////////////////////////////////
    //cp_breakpoint
    /////////////////////////////////

    mv a0, a3 // Move stored return priveledge mode to a0
    ebreak
    nop

    /////////////////////////////////
    //cp_load_address_misaligned
    /////////////////////////////////

    // Load scratch address
    LA(t4, scratch)

    // Initialize loop counter (offset) from 0 to 7
    LI(t0, 0)         // t0 = loop index (offset)
    LI(t5, 8)         // loop limit (offsets 0 through 7)

load_loop:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // The following five load instructions will use the same effective address.
    // Depending on the current offset, some of these accesses are misaligned
    // relative to the load's natural alignment. In such cases, the processor
    // will trigger a load misaligned exception, caught by trap_handler.

    lh      t2, 0(t1)
    nop
    lhu     t2, 0(t1)
    nop
    lw      t2, 0(t1)
    nop
    lb      t2, 0(t1)
    nop
    lbu     t2, 0(t1)
    nop
   // Attempt to load doubleword for RV64
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu     t2, 0(t1)
            nop
            ld      t2, 0(t1)
            nop
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, load_loop

    /////////////////////////////////
    //cp_load_access_fault
    /////////////////////////////////

    // load the illegal address into a register
    LI(t0, ACCESS_FAULT_ADDRESS)

    lb t1, 0(t0)
    nop
    lbu t2, 0(t0)
    nop
    lh t3, 0(t0)
    nop
    lhu t4, 0(t0)
    nop
    lw t5, 0(t0)
    nop
    // RV64 load instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu  t6, 0(t0)
            nop
            ld   t6, 0(t0)
            nop
        #endif
    #endif

    /////////////////////////////////
    //cp_store_address_misaligned
    /////////////////////////////////

    // load scratch data address
    LA(t4, scratch)

    // Initialize loop counter (offset) from 0 to 7
    LI(t0, 0)         // t0 = loop index (offset)
    LI(t5, 8)         // loop limit (we will test offsets 0 through 7)

store_loop:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // Prepare a test value to store
    LI(t2, 0xDECAFCAB)

    // Attempt store instructions at the misaligned effective address
    sb      t2, 0(t1)
    nop
    sh      t2, 0(t1)
    nop
    sw      t2, 0(t1)
    nop

    // RV64 store instructions
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd      t2, 0(t1)
            nop
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, store_loop

    /////////////////////////////////
    //cp_store_access_fault
    /////////////////////////////////

    // Load the illegal address into a register
    LA(t0, ACCESS_FAULT_ADDRESS)

    // Attempt to store byte
    LI(t1, 0xAB)
    sb t1, 0(t0)
    nop

    // Attempt to store halfword
    LI(t2, 0xBEAD)
    sh t2, 0(t0)
    nop

    // Attempt to store word
    LI(t3, 0xADDEDCAB)
    sw t3, 0(t0)
    nop

    #ifdef __riscv_xlen
        #if __riscv_xlen == 64

            LI(t4, 0xDEADBEEFDEADBEEF)
            sd t4, 0(t0)
            nop
        #endif
    #endif

    /////////////////////////////////
    //cp_ecall_s
    /////////////////////////////////

    // test an ecall
    mv a0, a3 // move stored return priveledge mode to a0
    ecall
    nop

    /////////////////////////////////
    //cp_illegal_instruction
    /////////////////////////////////

    // ExceptionsInstr.S tests all other illegal instructions exhaustively

    // Attempt to execute illegal instructions
    .word 0x00000000
    nop
    .word 0xFFFFFFFF
    nop

    /////////////////////////////////
    //cp_misaligned_priority
    /////////////////////////////////

    // Test misaligned priority for load instructions

    // load Instruction fault address
    LA(t4, ACCESS_FAULT_ADDRESS)

    // Initialize loop counter (offset) from 0 to 7
    LI(t0, 0)         // t0 = loop index (offset)
    LI(t5, 8)         // loop limit (we will test offsets 0 through 7)

load_loop_priority:
    // Compute effective address = base (t4) + current offset (t0)
    add     t1, t4, t0    // t1 = effective address with 3 LSBs = t0

    // The following five load instructions will use the same base address.
    // Depending on the current offset, these accesses are misaligned and on a fault access
    // In such cases, the processor will trigger a load misaligned exception.

    lh      t2, 0(t1)
    nop
    lhu     t2, 0(t1)
    nop
    lw      t2, 0(t1)
    nop
    lb      t2, 0(t1)
    nop
    lbu     t2, 0(t1)
    nop

   // Attempt to load doubleword for RV64
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            lwu     t2, 0(t1)
            nop
            ld      t2, 0(t1)
            nop
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, load_loop_priority

    // store priority misaligned test

    // Initialize loop counter (offset) from 0 to 7
    LI(t0, 0)         // t0 = loop index (offset)
    LI(t5, 8)         // loop limit (we will test offsets 0 through 7)


    // Test misaligned priority for store instructions

    // Load access fault address
    LA(t4, ACCESS_FAULT_ADDRESS)

    // Initialize loop counter (offset) from 0 to 7
    LI(t0, 0)         // t0 = loop index (offset)
    LI(t5, 8)         // loop limit (we will test offsets 0 through 7)

store_loop_priority:
    // Compute misaligned address
    add     t1, t4, t0    // t1 = base address with 3 LSBs = t0

    // Prepare a test value to store
    LI(t2, 0xDECAFCAB)

    // Attempt store instructions at the misaligned effective address
    sb      t2, 0(t1)
    nop
    sh      t2, 0(t1)
    nop
    sw      t2, 0(t1)
    nop

    // Attempt to store doubleword on RV64
    #ifdef __riscv_xlen
        #if __riscv_xlen == 64
            sd      t2, 0(t1)
            nop
        #endif
    #endif

    // Increment loop counter and iterate if less than 8
    addi    t0, t0, 1
    blt     t0, t5, store_loop_priority

    // Update the medeleg value for the next iteration:
    // For iteration  0,     medeleg is all zeros
    // For iteration  1,     initialize walking 1 in medeleg
    // For iterations 2-7,   shift medeleg value left by 1
    // For iteration  8,     shift medeleg left by 4 to skip bits 9-11
    // For iterations 12-17, shift medeleg value left by 1
    // For iteration 18,     set all applicable medeleg bits to 1

    // Check if program is at iteration 0
    beq  a1, zero, update_first

    // Check if program's iteration is 9 (skip reserved medeleg bits)
    LI(a6, 9)
    beq  a6, a1, update_9
    nop

    // At the end of walks set applicable bits to 1 (first 11 writable bits)
    LI(a6, 18)
    beq  a6, a1, ones_update
    nop

    // For iterations after the first, shift medeleg's value left by 1
    slli a4, a4, 1
    j    update_done

    // Initialize walking 1 in medeleg after testing all zeros in medeleg
update_first:
    LI(a4, 1)

update_done:
    addi a1, a1, 1          // Increment loop counter
    j    cp_medeleg_loop    // Loop back

//skip over bits 9 (s ecall trap), 10 (reserved), and 11 (reserved) of medeleg
update_9:
    slli a4, a4, 4
    addi a1, a1, 4
    j    cp_medeleg_loop    // Loop back

ones_update:
    // Delegating ecalls is excluded since this would make
    // it impossible to raise privilege level to machine mode.
    // All reserved Medeleg bits are excluded.
    // The LSB is excluded since it is only writable
    // when extension ZCA is enabled.
    LI(a4, 0b1011000111111111)
    addi a1, a1, 1
    j  cp_medeleg_loop



cp_medeleg_end:
    mv   ra, a5             // Restore return address
    ret



test_end:



#endif

 # ---------------------------------------------------------------------------------------------
    # HALT

RVTEST_CODE_END
RVMODEL_HALT

# Allocate scratch memory in .bss section
.section .bss
.align 4
scratch:
    .space 136  # Reserve 136 bytes of uninitialized memory


RVTEST_DATA_BEGIN
# Input data section.
.data
.align 4
rvtest_data:
.word 0xb0bacafe
.word 0xb0bacafe
RVTEST_DATA_END

# Output data section.
RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;
signature_base:
    .fill 20*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine
tsig_begin_canary:
CANARY;
mtrap_sigptr:
.fill 22000*(XLEN/32),4,0xb0bacafe


#Prof Harris mentioned we should probably start with 10000
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save
gpr_save:
  .fill 32*(XLEN/32), 4, 0xdeadbeef
#endif



sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END
