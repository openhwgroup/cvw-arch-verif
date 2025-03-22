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

//Set up clear mask for Mstatus.FS
li s1, 0x6000      #(1's in bit 13 and 14 of mstatus)

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
    //enable Mstatus.FS to allow writes to frm
    li t0,0x4000
    csrs mstatus, t0

    //frm = 5
    li t0, 5         # 3'b = 101
    csrw frm, t0     #update frm
    #call floating point arithmetic and conversion function
    li  a1, 1                   #enable floating point
    jal ra, fp_arith_instr

    //frm = 6
    li t0, 6         #3'b = 110
    csrw frm, t0     #update frm
    #call floating point arithmetic and conversion function
    li  a1, 1                   #enable floating point
    jal ra, fp_arith_instr

    //frm = 7
    li t0, 7          #3'b = 111 
    csrw frm, t0      #update frm
    #call floating point arithmetic and conversion function
    li  a1, 1                   #enable floating point
    jal ra, fp_arith_instr

/////////////////////////////////
//cp_mstatus_fs_legal
/////////////////////////////////
    //Call Function to execute illegal instructions
    //load a1 to write 1 to mstatus.FS
    li  a1, 1
    jal ra, fp_instructions

    //Call Function to execute illegal instructions
    //load a1 to write 2 to mstatus.FS
    li  a1, 2
    jal ra, fp_instructions

    //Call Function to execute illegal instructions
    //load a1 to write 3 to mstatus.FS
    li  a1, 3
    jal ra, fp_instructions

finished:
    j done

/////////////////////////////////
/////////////////////////////////
//HELPER FUNCTIONS BELOW
/////////////////////////////////
/////////////////////////////////

//Function that executes the floating point arithmetic and conversions instructions
//a1: Wrtite the value of a1 to mstatus.FS (ranges from 0-3; Off, Initial, Clean, and Dirty respectively)
//    This ensures the automatic FPU updates to Mstatus.FS are bypassed
fp_arith_instr:

    //Set up correct Mstatus.Fs mask
    slli s2, a1, 13  #shift a1 to Mstatus.FS bits

    # --- Floating‑Point Arithmetic ---
        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fadd.s f2, f0, f1 

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsub.s f3, f0, f1 

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 
    
    fmul.s f4, f0, f1  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fdiv.s f5, f0, f1        

    # --- Floating‑Point Conversions ---

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fcvt.w.s t2, f0  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 
  
    fcvt.s.w f6, t2    

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fcvt.s.d f7, f0          

    # --- Fused Multiply-Add and Other Ops ---

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmadd.s f8, f0, f1, f2 

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsqrt.s f9, f0    

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsgnj.s f10, f0, f1   

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fround.s f14, f0  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    //function return
    ret

//Function that executes all the floating point instructions in the F extension
//a1: Wrtite the value of a1 to mstatus.FS (ranges from 0-3; Off, Initial, Clean, and Dirty respectively)
//    This ensures the automatic FPU updates to Mstatus.FS are bypassed
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

    #create set mask dependent on a1
    slli s2, a1, 13  #shift a1 to Mstatus.FS bits

        # Clear Mstatus.FS
        csrc mstatus, s1   
        # set mstatus.FS
        csrs mstatus, s2  


    // --- Floating-Point Memory Operations ---   
    // Store f0 into memory at scratch.
    fsw    f0, 0(a4)     #Mstatus set above     

        // Load a floating‑point value from memory into f1.
        #Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    flw    f1, 0(a4) 

    //Immediate fp load
        #Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fli.s  f2, 2.5         

    # --- Floating-Point Arithmetic Operations ---
    //call function to execute arithmetic instructions
    mv s0, ra                #save return address of current function
    jal ra, fp_arith_instr     
    mv ra, s0                #restore return address

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    feq.s  t3, f0, f1       

    # --- Move Bit Representations ---
        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmv.x.w t4, f0  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmv.w.x f11, t4         

    # --- Floating‑Point Classification and Minimum ---
        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fclass.s t5, f0 

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2  

    fmin.s f12, f0, f1                 

    # --- CSR Operations on Floating‑Point Status Registers ---
        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrw  t1, fcsr, x0 #write

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrw  t1, frm, x0 #write  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrw  t1, fflags, x0

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  t1, fcsr, x0 

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  t1, frm, x0  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  t1, fflags, x0   

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, fcsr, x0   

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, frm, x0  

        //Set Mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, fflags, x0   

    //32-bit only instructions
    #ifdef __riscv_xlen
    #if __riscv_xlen == 32
            //Set Mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        # Extract the lower 32 bits (bits 31:0) into t1.
        fmv.x.w t1, f0
        
            //Set Mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        # Extract the upper 32 bits (bits 63:32) into t2.
        fmvh.x.d t2, f0

            //Set Mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        #Reassemble the double from t1 and t2 back into a floating-point register (f1).
        fmvp.d.x f1, t1, t2
    #endif
    #endif 

    ret


