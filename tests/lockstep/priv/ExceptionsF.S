///////////////////////////////////////////
// ExceptionsF.S
//
// Written: Roman De Santos rdesantos@hmc.edu 20 March 2025
//
// Purpose: Functional coverage test for Exceptions in F mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "WALLY-init-lib.h"

main:
///////////////////////////////////////////////////////////
//cp_mstatus_fs_illegal_instr AND cp_mstatus_fs_csr_write
///////////////////////////////////////////////////////////
    //Call Function to execute illegal instructions
    //load a1 with 0 to disable mstatus.FS
    li a1, 0
    jal ra, fp_instructions

/////////////////////////////////
//cp_badfrm
/////////////////////////////////
    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    //frm = 5
    li t0, 5         # 3'b = 101
    csrw frm, t0     #update frm
    #call floating point arithmetic and conversion function
    jal ra, fp_arith_instr

    //frm = 6
    li t0, 6         #3'b = 110
    csrw frm, t0     #update frm
    #call floating point arithmetic and conversion function
    jal ra, fp_arith_instr

    //frm = 7
    li t0, 7          #3'b = 111 
    csrw frm, t0      #update frm
    #call floating point arithmetic and conversion function
    jal ra, fp_arith_instr

/////////////////////////////////
//cp_mstatus_fs_legal
/////////////////////////////////
    //Call Function to execute illegal instructions
    //load a1 with 1 to disable mstatus.FS
    li a1, 1
    jal ra, fp_instructions

/////////////////////////////////
/////////////////////////////////
//HELPER FUNCTIONS BELOW
/////////////////////////////////
/////////////////////////////////

//Function that executes the floating point arithmetic and conversions instructions
fp_arith_instr:
    # --- Floating‑Point Arithmetic ---
    fadd.s f2, f0, f1        
    fsub.s f3, f0, f1        
    fmul.s f4, f0, f1        
    fdiv.s f5, f0, f1        

    # --- Floating‑Point Conversions ---
    fcvt.w.s t2, f0          
    fcvt.s.w f6, t2          
    fcvt.s.d f7, f0          

    # --- Fused Multiply-Add and Other Ops ---
    fmadd.s f8, f0, f1, f2    
    fsqrt.s f9, f0          
    fsgnj.s f10, f0, f1   

    fround.s f14, f0  

    //function return
    ret

//Function that executes all the floating point instructions in the F extension
//a1: 0 if mstatus is disabled, else mstatus is enabled 
fp_instructions:
     # set mstatus.FS to 10 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    // Set up a pointers to scratch memory.
    la      a4, scratch

    //Initialize scratch memory
    li     t1, 0xDEADBEEF
    sw     t1, 0(a4)
    sw     t1, 4(a4)
    sw     t1, 8(a4)
    sw     t1, 12(a4)

    //initialize floating point registers used 
    li t0, 1
    fcvt.s.w f0, t0

    li t0, 2
    fcvt.s.w f1, t0

    li t0, 3
    fcvt.s.w f2, t0

    li t0, 4
    fcvt.s.w f3, t0

    li t0, 5
    fcvt.s.w f4, t0

    li t0, 6
    fcvt.s.w f5, t0

    li t0, 7
    fcvt.s.w f6, t0

    li t0, 8
    fcvt.s.w f7, t0

    li t0, 9
    fcvt.s.w f8, t0

    li t0, 10
    fcvt.s.w f9, t0

    li t0, 11
    fcvt.s.w f10, t0

    li t0, 12
    fcvt.s.w f11, t0

    li t0, 13
    fcvt.s.w f12, t0

    li t0, 14
    fcvt.s.w f13, t0

    li t0, 15
    fcvt.s.w f14, t0

    //check a1 to see if mstatus is enabled or disabled
    bne a1, x0, mstatus_enabled
    # set mstatus.FS to 00 to disable fp
    li t0, 0x6000      #(1's in bit 13 and 14 of mstatus)
    csrc mstatus, t0           

  mstatus_enabled:

    # --- Floating-Point Memory Operations ---   
    # Store f0 into memory at scratch.
    fsw    f0, 0(a4)          

    # Load a floating‑point value from memory into f1.
    flw    f1, 0(a4) 

    //Immediate fp load
    fli.s  f2, 2.5         

    # --- Floating-Point Arithmetic Operations ---
    //call function to execute arithmetic instructions
    mv s1, ra                #save return address of current function
    jal ra, fp_arith_instr     
    mv ra, s1                #restore return address

    feq.s  t3, f0, f1       

    # --- Move Bit Representations ---
    fmv.x.w t4, f0          
    fmv.w.x f11, t4         

    # --- Floating‑Point Classification and Minimum ---
    fclass.s t5, f0         
    fmin.s f12, f0, f1                 

    # --- CSR Operations on Floating‑Point Status Registers ---
    csrrw  x7, fcsr, x0     
    csrrw  x8, frm, x0      
    csrrw  x9, fflags, x0   

    csrrs  x7, fcsr, x0     
    csrrs  x8, frm, x0      
    csrrs  x9, fflags, x0   

    csrrc  x7, fcsr, x0     
    csrrc  x8, frm, x0      
    csrrc  x9, fflags, x0   

    //32-bit only instructions
    #ifdef __riscv_xlen
    #if __riscv_xlen == 32
        # Extract the lower 32 bits (bits 31:0) into t1.
        fmv.x.w t1, f0
        
        # Extract the upper 32 bits (bits 63:32) into t2.
        fmvh.x.d t2, f0

        #Reassemble the double from t1 and t2 back into a floating-point register (f1).
        fmvp.d.x f1, t1, t2
    #endif
    #endif 

    ret

finished:
    j done
