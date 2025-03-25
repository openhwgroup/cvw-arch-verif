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
    //Test floating point instructions function with:
    //mstatus.FS = 0, frm = 0
    li  a0, 0
    li  a1, 0
    jal ra, fp_instructions

/////////////////////////////////
//cp_badfrm
/////////////////////////////////

    //Test floating point instructions function with:
    //mstatus.FS = 1, frm = 5
    li  a0, 1    
    li  a1, 5                  
    jal ra, fp_instructions

    //Test floating point instructions function with:
    //mstatus.FS = 1, frm = 6
    li  a0, 1      
    li  a1, 6             
    jal ra, fp_instructions
            
    //Test floating point instructions function with:
    //mstatus.FS = 1, frm = 7
    li  a0, 1   
    li  a1, 7    
    jal ra, fp_instructions

/////////////////////////////////
//cp_mstatus_fs_legal
/////////////////////////////////  

    //Test floating point instructions function with:
    //mstatus.FS = 1, frm = 0
    li  a0, 1
    li  a1, 0
    jal ra, fp_instructions

    //Test floating point instructions function with:
    //mstatus.FS = 2, frm = 0
    li  a0, 2
    li  a1, 0
    jal ra, fp_instructions

    //Test floating point instructions function with:
    //mstatus.FS = 3, frm = 0
    li  a0, 3
    li  a1, 0
    jal ra, fp_instructions

finished:
    j done

/////////////////////////////////
/////////////////////////////////
//HELPER FUNCTION BELOW
/////////////////////////////////
/////////////////////////////////

//Function that executes all the floating point instructions in the F extension. (Instructions from Zfa extention are labled. program
//should be able to trap handle the expection if Zfa).
//a0: Wrtite the value of a0 to mstatus.FS (ranges from 0-3; Off, Initial, Clean, and Dirty respectively).
//    When a fp register is modified mstatus.FS is marked as dirty automatically. So to test fp instructions
//    with different mstatus.FS values, mstatus.FS is updated to the value in a0 before each fp instruction.
//a1: Write the value of a1 to the frm CSR (ranges from 0-3).
//    This ensures the desired value of frm can be set initially and restored after each csrrw instruction is tested.
fp_instructions:

    //Set up clear mask for mstatus.FS
    li s1, 0x6000      //(1's in bit 13 and 14 of mstatus)

    //set mstatus.FS to 10 to enable fp
    li t0,0x4000
    csrs mstatus, t0

    //set frm to a legal value for initialization
    csrw frm, 0

    //Set up a pointers to scratch memory.
    la      t5, scratch

    //Initialize scratch memory
    li     t1, 0xDEADBEEF
    sw     t1, 0(t5)
    sw     t1, 4(t5)
    sw     t1, 8(t5)
    sw     t1, 12(t5)

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

    //create mstatus.FS set mask dependent on a0
    slli s2, a0, 13  //shift a0 to mstatus.FS bits

    //After initialization set frm to the value in a1
    csrw frm, a1

    //--- Floating-Point Memory Operations ---   

        //Set mstatus.FS
        csrc mstatus, s1   
        csrs mstatus, s2  

    fsw    f0, 0(a4)     //mstatus set above     

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    flw    f1, 0(a4) 

    //Immediate fp load

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fli.s  f2, 2.5   //Zfa extension instruction      

    //--- Floating-Point Arithmetic Operations ---
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fadd.s f2, f0, f1 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsub.s f3, f0, f1 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 
    
    fmul.s f4, f0, f1  

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fdiv.s f5, f0, f1        

    //--- Floating‑Point Conversions ---

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fcvt.w.s t2, f0  

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 
  
    fcvt.s.w f6, t2    

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fcvt.s.d f7, f0          

    //--- Floating Point Arithmetic ---

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmadd.s f8, f0, f1, f2 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsqrt.s f9, f0    

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fsgnj.s f10, f0, f1   

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fround.s f14, f0     //Zfa extension instruction

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    feq.s  t3, f0, f1       

    //--- Move Bit Representations ---
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmv.x.w t4, f0  

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fmv.w.x f11, t4         

    //--- Floating‑Point Classification and Minimum ---
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    fclass.s t5, f0 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2  

    fmin.s f12, f0, f1                 

    //--- CSR Operations on Floating‑Point Status Registers ---
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    //Note for the following csrrw instructions:
    //Since fcsr, frm, and fflags are part of the same csr, frm is restored after each 
    //csrrw instruction. This prevents accidental modification of the frm register

    csrrw  t1, fcsr, x0 

        //restore frm
        csrw frm, a1 
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrw  a1, frm, x0   //a1 stores the value of frm

        //restore frm
        csrw frm, a1
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrw  t1, fflags, x0

        //restore frm
        csrw frm, a1
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  t1, fcsr, x0 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  t1, fflags, x0  
        
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrs  a1, frm, x0   //a1 stores the value of frm

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, fcsr, x0   

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, fcsr, x0 

        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2  

    csrrc  a1, frm, x0   //a1 stores the value of frm 
    
        //Set mstatus.FS
        csrc mstatus, s1
        csrs mstatus, s2 

    csrrc  t1, fflags, x0   

    //32-bit only instructions
    #ifdef __riscv_xlen
    #if __riscv_xlen == 32
            //Set mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        fmv.x.w t1, f0
        
            //Set mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        fmvh.x.d t2, f0

            //Set mstatus.FS
            csrc mstatus, s1
            csrs mstatus, s2 

        fmvp.d.x f1, t1, t2
    #endif
    #endif 

    ret


