///////////////////////////////////////////
// ZicsrS.S
//
// Written: vkrishna@hmc.edu 4 November 2024
//
// Purpose: Functional coverage tests for CSRs in supervisor mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc t6, csr, rs1    when modifying a CSR to also check the old value.

// included from $WALLY/tests/coverage
#include "WALLY-init-lib.h"

main:

    # set up fast trap handler for uncompressed illegal instructions
    # because Zicsr tests will throw a lot of illegal instruction traps while attempting to access CSRs
    # This cuts the instruction count and runtime by nearly 2x
    # However, don't blindly use this handler in other privileged tests
    la t0, trap_handler_fastuncompressedillegalinstr
    csrw mtvec, t0

    # entering supervisor mode
    li a0, 1
    ecall

/////////////////////////////////
// cp_scause_write
/////////////////////////////////
    csrr s0, scause     # save CSR
// with interrupt = 0: 0-64, walking 1s in bits 6-(XLEN-2)
    // with interrupt = 0: write scause with 0-64 (0 already done)
    li t1, 64           # upper bound
    mv t0, x0           # initialize loop counter 
1:  csrrw t6, scause, t0     # write CSR 
    beq t0, t1, cp_scause_walking1s_noint
    addi t0, t0, 1      # increment test value
    j   1b
   // with interrupt = 0: write scause with walking 1s in bits 6-(XLEN-2)"
cp_scause_walking1s_noint: 
    slli t0, t0, 1      # walk 1s
    csrrw t6, scause, t0     # write CSR
    bnez t0, cp_scause_walking1s_noint  # until all 1s are gone
// with interrupt = 1: 0-15, walking 1s in bits 4-(XLEN-2)
// Now set interrupt = 1 as msb of register
    jal setmsb          # put a 1 in the msb of a0
    li t1, 16           # upper bound
    mv t0, x0           # initialize loop counter
1: or t2, t0, a0       # set interrupt = 1 with msb
    csrrw t6, scause, t2    # write CSR 
    beq t0, t1, cp_scause_walking1s_int
    addi t0, t0, 1      # increment test value
    j   1b
   // with interrupt = 0: write scause with walking 1s in bits 6-(XLEN-2)"
cp_scause_walking1s_int: 
    slli t0, t0, 1      # walk 1s
    or t0, t0, a0       # set 1 in msb for interrupts
    csrrw t6, scause, t0     # write CSR
    bne t0, a0, cp_scause_walking1s_int  # until all 1s are gone and only interrupt bit remains
    csrrw t6, scause, s0      # restore CSR

/////////////////////////////////
// cp_stvec_mode_write
/////////////////////////////////
cp_stvec_mode_write:
    csrr s0, stvec      # save CSR
    li t0, 0            # mode = 0
    csrrw t6, stvec, t0     # write CSR
    li t0, 1            # mode = 1
    csrrw t6, stvec, t0     # write CSR
    li t0, 2            # mode = 2
    csrrw t6, stvec, t0     # write CSR
    li t0, 3            # mode = 3
    csrrw t6, stvec, t0     # write CSR
    csrrw t6, stvec, s0      # restore CSR

/////////////////////////////////
// cp_sstatus_sd_write
// TODO: Chaange this to work for both 32 and 64 bit
/////////////////////////////////
cp_sstatus_sd_write:
    csrr s0, sstatus    # save CSR
    li t1, 0xFFFE19FF   # mask for FS/VS/XS
    and t1, s0, t1      # clear FS/VS/XS
    csrrw t6, sstatus, t1  # write clear FS/VS/XS
    andi t1, t1, 0x7FFFFFFF # clear SD
    csrrw t6, sstatus, t1   # write CSR
    ori t1, t1, 0x80000000 # set SD
    csrrw t6, sstatus, t1   # write CSR
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_mxr_write
/////////////////////////////////
cp_sstatus_mxr_write:
    csrr s0, sstatus    # save CSR
    li t1, 0xFFF7FFFF   # mask to clear MXR
    and t1, s0, t1      # clear MXR
    csrrw t6, sstatus, t1  # write clear MXR
    ori t1, t1, 0x00080000 # set MXR
    csrrw t6, sstatus, t1   # write CSR
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_sum_write
/////////////////////////////////
cp_sstatus_sum_write:
    csrr s0, sstatus    # save CSR
    li t1, 0xFFFBFFFF   # mask to clear SUM
    and t1, s0, t1      # clear SUM
    csrrw t6, sstatus, t1  # write clear SUM
    ori t1, t1, 0x00040000 # set SUM
    csrrw t6, sstatus, t1   # write CSR
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_wpri17_write
/////////////////////////////////
cp_sstatus_wpri17_write:
    csrr s0, sstatus    # save CSR
    li t1, 0xFFFDFFFF   # mask to clear WPRI17
    and t1, s0, t1      # clear WPRI17
    csrrw t6, sstatus, t1  # write clear WPRI17
    ori t1, t1, 0x00020000 # set WPRI17
    csrrw t6, sstatus, t1   # write CSR
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_xs_write
/////////////////////////////////
cp_sstatus_xs_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFE7FFF   # mask to clear XS
    and t0, s0, t0      # clear XS
    csrrw t6, sstatus, t0  # write clear XS
    ori t1, t0, 0x00008000 # set XS = 1
    ori t2, t0, 0x00010000 # set XS = 2
    ori t3, t0, 0x00018000 # set XS = 3
    csrrw t6, sstatus, t1   # write XS = 1
    csrrw t6, sstatus, t2   # write XS = 2
    csrrw t6, sstatus, t3   # write XS = 3
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_fs_write
/////////////////////////////////
cp_sstatus_fs_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFF9FFF   # mask to clear FS
    and t0, s0, t0      # clear FS
    csrrw t6, sstatus, t0  # write clear FS
    ori t1, t0, 0x00002000 # set FS = 1
    ori t2, t0, 0x00004000 # set FS = 2
    ori t3, t0, 0x00006000 # set FS = 3
    csrrw t6, sstatus, t1   # write FS = 1
    csrrw t6, sstatus, t2   # write FS = 2
    csrrw t6, sstatus, t3   # write FS = 3
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_wpri1211_write
/////////////////////////////////
cp_sstatus_wpri1211_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFE7FF   # mask to clear WPRI12-11
    and t0, s0, t0      # clear WPRI12-11
    csrrw t6, sstatus, t0  # write clear WPRI12-11
    ori t1, t0, 0x00000800 # set WPRI11
    ori t2, t0, 0x00001000 # set WPRI12
    ori t3, t0, 0x00001800 # set WPRI11-12
    csrrw t6, sstatus, t1   # write WPRI11
    csrrw t6, sstatus, t2   # write WPRI12
    csrrw t6, sstatus, t3   # write WPRI11-12
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_vs_write
/////////////////////////////////
cp_sstatus_vs_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFF9FF   # mask to clear VS
    and t0, s0, t0      # clear VS
    csrrw t6, sstatus, t0  # write clear VS
    ori t1, t0, 0x00000200 # set VS = 1
    ori t2, t0, 0x00000400 # set VS = 2
    ori t3, t0, 0x00000600 # set VS = 3
    csrrw t6, sstatus, t1   # write VS = 1
    csrrw t6, sstatus, t2   # write VS = 2
    csrrw t6, sstatus, t3   # write VS = 3
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_spp_write
/////////////////////////////////
cp_sstatus_spp_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFEFF   # mask to clear SPP
    and t0, s0, t0      # clear SPP
    csrrw t6, sstatus, t0  # write clear SPP
    ori t1, t0, 0x00000100 # set SPP = 1
    csrrw t6, sstatus, t1   # write SPP = 1
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_wpri7_write
/////////////////////////////////
cp_sstatus_wpri7_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFF7F   # mask to clear WPRI7
    and t0, s0, t0      # clear WPRI7
    csrrw t6, sstatus, t0  # write clear WPRI7
    ori t1, t0, 0x00000080 # set WPRI7
    csrrw t6, sstatus, t1   # write WPRI7
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_ube_write
/////////////////////////////////
cp_sstatus_ube_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFFBF   # mask to clear UBE
    and t0, s0, t0      # clear UBE
    csrrw t6, sstatus, t0  # write clear UBE
    ori t1, t0, 0x00000040 # set UBE
    csrrw t6, sstatus, t1   # write UBE
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_spie_write
/////////////////////////////////
cp_sstatus_spie_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFFDF   # mask to clear SPIE
    and t0, s0, t0      # clear SPIE
    csrrw t6, sstatus, t0  # write clear SPIE
    ori t1, t0, 0x00000020 # set SPIE
    csrrw t6, sstatus, t1   # write SPIE
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatuswpri42_write
/////////////////////////////////
cp_sstatuswpri42_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFFE3   # mask to clear WPRI4:2
    and t0, s0, t0      # clear WPRI4-2
    csrrw t6, sstatus, t0  # write clear WPRI4:2
    ori t1, t0, 0x00000004 # set WPRI2
    ori t2, t0, 0x00000008 # set WPRI3
    ori t3, t0, 0x00000010 # set WPRI4
    csrrw t6, sstatus, t1   # write WPRI2
    csrrw t6, sstatus, t2   # write WPRI3
    csrrw t6, sstatus, t3   # write WPRI4
    ori t1, t0, 0x0000000C # set WPRI3:2
    ori t2, t0, 0x00000018 # set WPRI4:3
    ori t3, t0, 0x00000014 # set WPRI4,2
    csrrw t6, sstatus, t1   # write WPRI3:2
    csrrw t6, sstatus, t2   # write WPRI4:3
    csrrw t6, sstatus, t3   # write WPRI4,2
    ori t1, t0, 0x0000001C # set WPRI4:2
    csrrw t6, sstatus, t1   # write WPRI4:2
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_sie_write
/////////////////////////////////
cp_sstatus_sie_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFFFD   # mask to clear SIE
    and t0, s0, t0      # clear SIE
    csrrw t6, sstatus, t0  # write clear SIE
    ori t1, t0, 0x00000002 # set SIE
    csrrw t6, sstatus, t1   # write SIE
    csrrw t6, sstatus, s0   # restore CSR

/////////////////////////////////
// cp_sstatus_wpri0_write
/////////////////////////////////
cp_sstatus_wpri0_write:
    csrr s0, sstatus    # save CSR
    li t0, 0xFFFFFFFE   # mask to clear WPRI0
    and t0, s0, t0      # clear WPRI0
    csrrw t6, sstatus, t0  # write clear WPRI0
    ori t1, t0, 0x00000001 # set WPRI0
    csrrw t6, sstatus, t1   # write WPRI0
    csrrw t6, sstatus, s0   # restore CSR

sretsetup:

/////////////////////////////////
// cp_sret
/////////////////////////////////
// Sweep executing sret in supervisor mode across cross-product of spp, mprv, tsr, spie, sie

    csrr s0, mstatus    # save mstatus

    li a0, 0x00000000   # tsr = 0, mprv = 0, spp = 0  spie = 0 sie = 0
    jal srettest
    li a0, 0x00000002   # tsr = 0, mprv = 0, spp = 0  spie = 0 sie = 1
    jal srettest
    li a0, 0x00000020   # tsr = 0, mprv = 0, spp = 0  spie = 1 sie = 0
    jal srettest
    li a0, 0x00000022   # tsr = 0, mprv = 0, spp = 0  spie = 1 sie = 1
    jal srettest
    li a0, 0x00000100   # tsr = 0, mprv = 0, spp = 1  spie = 0 sie = 0
    jal srettest
    li a0, 0x00000102   # tsr = 0, mprv = 0, spp = 1  spie = 0 sie = 1
    jal srettest
    li a0, 0x00000120   # tsr = 0, mprv = 0, spp = 1  spie = 1 sie = 0
    jal srettest
    li a0, 0x00000122   # tsr = 0, mprv = 0, spp = 1  spie = 1 sie = 1
    jal srettest
    li a0, 0x00020000   # tsr = 0, mprv = 1, spp = 0  spie = 0 sie = 0
    jal srettest
    li a0, 0x00020002   # tsr = 0, mprv = 1, spp = 0  spie = 0 sie = 1
    jal srettest
    li a0, 0x00020020   # tsr = 0, mprv = 1, spp = 0  spie = 1 sie = 0
    jal srettest
    li a0, 0x00020022   # tsr = 0, mprv = 1, spp = 0  spie = 1 sie = 1
    jal srettest
    li a0, 0x00020100   # tsr = 0, mprv = 1, spp = 1  spie = 0 sie = 0
    jal srettest
    li a0, 0x00020102   # tsr = 0, mprv = 1, spp = 1  spie = 0 sie = 1
    jal srettest
    li a0, 0x00020120   # tsr = 0, mprv = 1, spp = 1  spie = 1 sie = 0
    jal srettest
    li a0, 0x00020122   # tsr = 0, mprv = 1, spp = 1  spie = 1 sie = 1
    jal srettest
    li a0, 0x00400000   # tsr = 1, mprv = 0, spp = 0  spie = 0 sie = 0
    jal srettest
    li a0, 0x00400002   # tsr = 1, mprv = 0, spp = 0  spie = 0 sie = 1
    jal srettest
    li a0, 0x00400020   # tsr = 1, mprv = 0, spp = 0  spie = 1 sie = 0
    jal srettest
    li a0, 0x00400022   # tsr = 1, mprv = 0, spp = 0  spie = 1 sie = 1
    jal srettest
    li a0, 0x00400100   # tsr = 1, mprv = 0, spp = 1  spie = 0 sie = 0
    jal srettest
    li a0, 0x00400102   # tsr = 1, mprv = 0, spp = 1  spie = 0 sie = 1
    jal srettest
    li a0, 0x00400120   # tsr = 1, mprv = 0, spp = 1  spie = 1 sie = 0
    jal srettest
    li a0, 0x00400122   # tsr = 1, mprv = 0, spp = 1  spie = 1 sie = 1
    jal srettest
    li a0, 0x00420000   # tsr = 1, mprv = 1, spp = 0  spie = 0 sie = 0
    jal srettest
    li a0, 0x00420002   # tsr = 1, mprv = 1, spp = 0  spie = 0 sie = 1
    jal srettest
    li a0, 0x00420020   # tsr = 1, mprv = 1, spp = 0  spie = 1 sie = 0
    jal srettest
    li a0, 0x00420022   # tsr = 1, mprv = 1, spp = 0  spie = 1 sie = 1
    jal srettest
    li a0, 0x00420100   # tsr = 1, mprv = 1, spp = 1  spie = 0 sie = 0
    jal srettest
    li a0, 0x00420102   # tsr = 1, mprv = 1, spp = 1  spie = 0 sie = 1
    jal srettest
    li a0, 0x00420120   # tsr = 1, mprv = 1, spp = 1  spie = 1 sie = 0
    jal srettest
    li a0, 0x00420122   # tsr = 1, mprv = 1, spp = 1  spie = 1 sie = 1
    jal srettest
    j postsrettest

srettest:
    la t1, srettest_sepc    
    csrrw t6, sepc, t1      # return to mrettest_mepc when done
    csrrw t6, mstatus, a0   # preload mstatus with argument
    sret                    # take the mret. Should go to mrettest_mepc and adjust mstatus
    nop                     # should be skipped
    nop                     # should be skipped

srettest_sepc:
    li a0, 3                
    ecall                   # make sure we return to machine mode
    csrrw t6, mstatus, s0   # restore mstatus
    ret

postsrettest:

/////////////////////////////////
// walking 1s and 0s for each register, also 11 in 2-bit fields
/////////////////////////////////
// cp_medeleg_write_corners
// cp_mideleg_write_corners
// cp_mie_write_corners
// cp_mepc_write_corners
// cp_mtval_write_corners
// cp_mseccfg_write_corners
// cp_menvcfg_write_corners
// cp_mip_write_corners
// cp_mtvec_base_write_corners
// cp_mtvec_mode_write
// cp_mstatus_sxl_write
// cp_mstatus_uxl_write
/////////////////////////////////

#include "ZicsrS-Walk.h"
 
/////////////////////////////////
// Autogenerated code pasted in from csrtests.py to hit the following coverpoints
// cp_csrr                  Read all 4096 CSRs in S mode
// cp_csrw_corners          Write all zeroes and all ones to 4096 CSRs in S mode
// cp_csrc                  Clear all 4096 CSRs in S mode
// cp_csrs                  Set all 4096 CSRs in S mode
// put these tests at the end of this file so they don't clutter up the human generated ones.
/////////////////////////////////

#include "Zicsr-CSR-Tests.h"
#include "Zicsr-CSR-USPMPWrite-Tests.h"

finished:
    j done

/////////////////////////////////
// Fast trap handler for illegal instructions (when testing writes to CSRs that may be non-existent)
/////////////////////////////////

.align 4                # trap handlers must be aligned to multiple of 4
trap_handler_fastuncompressedillegalinstr:
    # Load trap handler stack pointer tp
    csrrw tp, mscratch, tp  # swap MSCRATCH and tp
    sd t0, 0(tp)        # Save t0 and t1 on the stack
    sd t1, -8(tp)
    csrr t0, scause     # Check the cause
    li t1, 2            # Illegal Instruction cause
    beq t0, t1, uncompressedillegalinstructionreturn
    # Otherwise use the regular trap handler
    csrr t1, mtval      # And the trap value
    bgez t0, exception  # if msb is clear, it is an exception
    j interrupt         # otherwise interrupt.

uncompressedillegalinstructionreturn:            # return from trap handler.  Fast because it knows instructions are 4-byte aligned
    csrr t0, mepc  # get address of instruction that caused exception
    addi t0, t0, 4
    csrw mepc, t0
    ld t1, -8(tp)       # restore t1 and t0
    ld t0, 0(tp)
    csrrw tp, mscratch, tp  # restore tp
    mret                # return from trap
