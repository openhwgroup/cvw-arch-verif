///////////////////////////////////////////
// ZicsrU.S
//
// Written: vkrishna@hmc.edu 17 February 2024
//
// Purpose: Functional coverage tests for CSRs in user mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc t6, csr, rs1    when modifying a CSR to also check the old value.

#include "model_test.h"
#include "arch_test.h"

RVTEST_ISA("RV32I_Zicsr_Zihintpause, RV64I_Zicsr_Zihintpause")
# Test code region
.section .text.init
.globl rvtest_entry_point
rvtest_entry_point:
RVMODEL_BOOT
RVTEST_CODE_BEGIN

#ifdef TEST_CASE_1
    RVTEST_CASE(1,"//check ISA:=regex(.*I.*Zicsr.*Zihintpause.*); def rvtest_mtrap_routine=True; def rvtest_strap_routine=False; def rvtest_dtrap_routine=True; def TEST_CASE_1=True",ZicsrU)
    RVTEST_SIGBASE(x3,signature_base)

    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .align  2
    .option norvc

main:
    # set up PMP so user and supervisor mode can access full address space
    csrw pmpcfg0, 0xF   # configure PMP0 to TOR RWX
    li t0, 0xFFFFFFFF
    csrw pmpaddr0, t0   # configure PMP0 top of range to 0xFFFFFFFF to allow all 32-bit addresses
    csrw satp, x0       # turn off satp to disable VM
    RVTEST_GOTO_MMODE
    // Turn on floating-point and Vector so these tests can write to user-level floating-point CSRs
    li t4, 0x6600
    csrrs x0, mstatus, t4  #write dirty to mstatus.FS & mstatus.VS
    nop

    # enter user mode
    RVTEST_GOTO_LOWER_MODE Umode
/////////////////////////////////
// cp_uprivinst
/////////////////////////////////
cp_uprivinst:
    #RVTEST_GOTO_LOWER_MODE Umode

    // ebreak
    ebreak       # take a trap, and the trap handler returns
    nop

/////////////////////////////////
// cp_mret
/////////////////////////////////
cp_mret:
    // Executing mret in user mode
    // Should throw an illegal instruction exception
    mret
    nop

/////////////////////////////////
// cp_sret
/////////////////////////////////
cp_sret:
    // Executing sret in user mode
    // Should throw an illegal instruction exception
    sret
    nop

///////////////////////////////////
// walking 1s and 0s for each register
///////////////////////////////////
// fflags, frm, fcsr
///////////////////////////////////

finished:
    // return to machine mode
    RVTEST_GOTO_MMODE


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
.fill 20*(XLEN/32),4,0xb0bacafe
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
