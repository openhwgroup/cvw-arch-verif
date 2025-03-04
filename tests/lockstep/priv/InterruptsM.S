///////////////////////////////////////////
// InterruptsM.S
//
// Written: David_Harris@hmc.edu 3 February 2025
//          Hjamal@hmc.edu       4 February 2025
//
// Purpose: Functional coverage tests for Interrupts in machine mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

// General notes:
// Use csrrw/csrrs/csrrc t6, csr, rs1    when modifying a CSR to also check the old value.

#include "WALLY-init-lib.h"

#define CLINT_BASE_ADDR 0x02000000
#define PLIC_BASE_ADDR 0x0C000000
#define GPIO_BASE_ADDR 0x10060000

#define MTIME           (CLINT_BASE_ADDR + 0xBFF8)
#define MSIP            (CLINT_BASE_ADDR)
#define MTIMECMP        (CLINT_BASE_ADDR + 0x4000)
#define MTIMECMPH       (CLINT_BASE_ADDR + 0x4004)

#define THRESHOLD_0     (PLIC_BASE_ADDR + 0x200000)
#define THRESHOLD_1     (PLIC_BASE_ADDR + 0x201000)
#define INT_PRIORITY_3  (PLIC_BASE_ADDR + 0x00000C)
#define INT_EN_00       (PLIC_BASE_ADDR + 0x002000)
#define INT_EN_10       (PLIC_BASE_ADDR + 0x002080)

#define GPIO_OUTPUT_EN  (GPIO_BASE_ADDR + 0x08)
#define GPIO_OUTPUT_VAL (GPIO_BASE_ADDR + 0x0C)

main:
    jal reset_timer_compare

/////////////////////////////////
// cp_trigger_mti
/////////////////////////////////

cp_trigger_mti:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal cause_timer_interrupt_now
    jal reset_timer_compare # reset mtimecmp to avoid premature interrupt in next test

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal cause_timer_interrupt_now # expecting timer interrupt, so interrupt handler will reset mtimecmp

/////////////////////////////////
// cp_trigger_msi
/////////////////////////////////

cp_trigger_msi:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    jal set_msip
    jal reset_msip          # reset mip.SSIP since the trap handler will not reset it if no interrupt occurs

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    jal set_msip            # set mip.MSIP, expect interrupt

/////////////////////////////////
// cp_trigger_mei
/////////////////////////////////

cp_trigger_mei:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li a3, 0x10
    jal cause_external_interrupt_M
    jal reset_external_interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    li a3, 0x10
    jal cause_external_interrupt_M

/////////////////////////////////
// cp_trigger_sti
/////////////////////////////////

cp_trigger_sti:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li t0, 32               # 1 in bit 5
    csrrs t6, mip, t0
    csrrc t6, mip, t0       # reset mip.STIP since the trap handler will not reset it if no interrupt occurs

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    csrrs t6, mip, t0       # set mip.STIP, expect interrupt

/////////////////////////////////
// cp_trigger_ssi_mip
/////////////////////////////////

cp_trigger_ssi_mip:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    csrrsi t6, mip, 2
    csrrci t6, mip, 2       # reset mip.SSIP since the trap handler will not reset it if no interrupt occurs

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    csrrsi t6, mip, 2       # set mip.SSIP, expect interrupt
    nop

/////////////////////////////////
// cp_trigger_sei_plic
/////////////////////////////////

cp_trigger_sei_plic:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li a3, 0x10
    jal cause_external_interrupt_S
    jal reset_external_interrupts

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    li a3, 0x10
    jal cause_external_interrupt_S
    nop

/////////////////////////////////
// cp_trigger_sei_sie
/////////////////////////////////

cp_trigger_sei_sie:
    li t0, -1               # all 1s
    csrrw t6, mie, t0       # enable all interrupts

    # mstatus.MIE = 0 should not take interrupt
    csrrci t6, mstatus, 8   # mstatus.MIE = 0
    li t0, 512              # 1 in bit 9
    csrrs t6, mip, t0       # set mip.SEIP
    csrrc t6, mip, t0       # reset mip.SEIP since the trap handler will not reset it if no interrupt occurs

    # mstatus.MIE = 1 should take interrupt
    csrrsi t6, mstatus, 8   # mstatus.MIE = 1
    csrrs t6, mip, t0       # set mip.SEIP, expect interrupt
    nop

/////////////////////////////////
// cp_interrupts
/////////////////////////////////

cp_interrupts:

    li s0, 1 # set up indices for loops
    li s1, 3
    li s2, 3

    csrrci t6, mtvec, 3 # mtvec.MODE = 00

    for_mstatus_interrupts:
        slli s0, s0, 3
        csrrw t6, mstatus, s0   # either set or clear mstatus.MIE
        srli s0, s0, 3
        li s1, 3

        for_mie_interrupts:
    
            addi s1, s1, -1     # setting mie.MEIE, MSIE, or MTIE
            li t4, 4
            mul t3, s1, t4
            li t4, 8
            sll t4, t4, t3
            csrrw t6, mie, t4   # csrrw to clear all bits other than the target
            li s2, 3

            for_mip_interrupts:

                addi s2, s2, -1
                
                # based on s2 value, attempt to trigger one of MEIP, MSIP, or MTIP
                
                li t3, 2
                bne s2, t3, next_case1_interrupts
                jal cause_timer_interrupt_now
                jal reset_timer_compare

                next_case1_interrupts:
                li t3, 1
                bne s2, t3, next_case0_interrupts
                jal cause_external_interrupt_M
                jal reset_external_interrupts

                next_case0_interrupts:
                li t3, 0
                bne s2, t3, for_mip_end_interrupts
                jal set_msip
                jal reset_msip

                for_mip_end_interrupts:
                    bnez s2, for_mip_interrupts
            
            bnez s1, for_mie_interrupts
        
        addi s0, s0, -1
        beqz s0, for_mstatus_interrupts        

/////////////////////////////////
// cp_vectored
/////////////////////////////////

cp_vectored:

    csrrci t6, mtvec, 3 
    csrrsi t6, mtvec, 1 # mtvec.MODE = 01

    csrrsi t6, mstatus, 8 # mstatus.MIE = 1

    li s1, 3

    for_mie_vectored:
    
        addi s1, s1, -1     # setting mie.MEIE, MSIE, or MTIE
        li t4, 4
        mul t3, s1, t4
        li t4, 8
        sll t4, t4, t3
        csrrs t6, mie, t4   # csrrs to preserve bits other than the target
        bnez s1, for_mie_vectored

    li s2, 3

    for_mip_vectored:

        addi s2, s2, -1
        
        # based on s2 value, attempt to trigger one of MEIP, MSIP, or MTIP
        
        li t3, 2
        bne s2, t3, next_case1_vectored
        jal cause_timer_interrupt_now
        jal reset_timer_compare

        next_case1_vectored:
        li t3, 1
        bne s2, t3, next_case0_vectored
        jal cause_external_interrupt_M
        jal reset_external_interrupts

        next_case0_vectored:
        bne s2, t3, for_mip_end_vectored
        li t3, 0
        jal set_msip
        jal reset_msip

        for_mip_end_vectored:
            bnez s2, for_mip_vectored

/////////////////////////////////
// cp_priority
/////////////////////////////////

cp_priority:

    csrrsi t6, mstatus, 8 # mstatus.MIE = 1

    li s1, 8

    for_mie_priority:

        li t0, 0
        li t1, 0
        li s3, 0

        addi s1, s1, -1
        srli t0, s1, 2
        andi t0, t0, 1  # mask off bit 2
        slli t0, t0, 11 # set mie.MEIE based on bit 2 value
        or s3, s3, t0

        srli t0, s1, 1
        andi t0, t0, 1  # mask off bit 1
        slli t0, t0, 7  # set mie.MTIE based on bit 1 value
        or s3, s3, t0 

        andi t0, s1, 1  # mask off bit 0
        slli t0, t0, 3  # set mie.MTIE based on bit 1 value
        or s3, s3, t0 

        li s2, 8

        for_mip_priority:

            addi s2, s2, -1
            srli t0, s2, 2
            andi t0, t0, 1  # mask off bit 2
            beqz t0, next_case1_priority # set mie.MEIP based on s2 bit 2 value
            jal cause_external_interrupt_M

            next_case1_priority:
            srli t0, s2, 1
            andi t0, t0, 1  # mask off bit 1
            beqz t0, next_case0_priority # set mie.MTIP based on s2 bit 1 value
            jal cause_timer_interrupt_now

            next_case0_priority:
            andi t0, s2, 1  # mask off bit 0
            beqz t0, for_mip_end_priority # set mie.MSIP based on s2 bit 0 value
            jal set_msip

            for_mip_end_priority:
            csrrw t6, mie, s3   # once all interrupts are pending, enable all relevant interrupts at once
            nop
            jal reset_external_interrupts
            jal reset_timer_compare
            jal reset_msip

            bnez s2, for_mip_priority

        li t1, -1
        csrrc t6, mie, t1 # clear all interrupt enables to start fresh
        bnez s1, for_mie_priority

j done