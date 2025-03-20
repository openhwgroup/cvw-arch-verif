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
/////////////////////////////////
//cp_mstatus_fs_illegal_instr
/////////////////////////////////
    # set mstatus.FS to 00 to disable fp
    li t0, 0
    csrs mstatus, t0

    // Set up a pointers to scratch memory.
    la      a4, scratch

    //Initialize scratch memory
    li     t1, 0xDEADBEEF
    sw     t1, 0(a4)
    sw     t1, 4(a4)
    sw     t1, 8(a4)
    sw     t1, 12(a4)


    # --- Floating-Point Memory Operations ---
    # Load immediate floating‑point value 1.0 into f0 using pseudo‑instruction.
    fli.s    f0, 1.0            # fli: load immediate float (1.0) into f0        
    # Store f0 into memory at mydata.
    fsw    f0, 0(a4)          # fsw: store word from f0 into address a4+0

    # Load a floating‑point value from memory into f1.
    flw    f1, 0(a4)          # flw: load word from address x1+0 into f1

    # --- Floating‑Point Arithmetic ---
    # fadd: f2 = f0 + f1
    fadd.s f2, f0, f1        
    # fsub: f3 = f0 - f1
    fsub.s f3, f0, f1        
    # fmul: f4 = f0 * f1
    fmul.s f4, f0, f1        
    # fdiv: f5 = f0 / f1
    fdiv.s f5, f0, f1        

    # --- Floating‑Point Conversions ---
    # Convert float to integer: x2 = int(f0).
    # (Using fcvt.w.s here; some assemblers support fcvt.x.f as an alias.)
    fcvt.w.s x2, f0          
    # Convert integer back to float: f6 = float(x2).
    fcvt.s.w f6, x2          
    # Convert float to float (no‑op conversion): f7 = f0 converted (using a pseudo instruction).
    fcvt.s.d f7, f0          

    # --- Fused Multiply-Add and Other Ops ---
    # fmadd: f8 = (f0 * f1) + f2
    fmadd.s f8, f0, f1, f2    
    # fsqrt: f9 = sqrt(f0)
    fsqrt.s f9, f0          
    # fsgnj: f10 gets f0’s magnitude with f1’s sign.
    fsgnj.s f10, f0, f1      
    # feq: set integer x3 = 1 if f0 equals f1, else 0.
    feq.s  x3, f0, f1       

    # --- Move Bit Representations ---
    # fmv.x.f: move the bit‐pattern from f0 to integer register x4.
    fmv.x.w x4, f0          
    # fmv.f.x: move the bit‐pattern from x4 to floating‑point register f11.
    fmv.w.x f11, x4         

    # --- Floating‑Point Classification and Minimum ---
    # fclass: classify the floating‑point value in f0, result in x5.
    fclass.s x5, f0         
    # fmin: f12 = minimum(f0, f1)
    fmin.s f12, f0, f1      

    # --- Additional Floating‑Point Instructions ---
    # fli: load immediate float 2.5 into f13.
    fli.s    f13, 2.5         
    # fround: round f0 and place result in f14 (pseudo‑instruction; actual support may vary).
    fround.s f14, f0        

    # --- Integer Arithmetic ---
    # add: x6 = x1 + x2
    add    x6, x1, x2       

    # --- CSR Operations on Floating‑Point Status Registers ---
    # Use csrrw to read and write the FCSR.
    csrrw  x7, fcsr, x0     # csrrw_fcsr: exchange x7 with fcsr (writing x0)
    # Assume pseudo‑CSRs “frm” for rounding mode and “fflags” for exception flags.
    csrrw  x8, frm, x0      # csrrw_frm: exchange x8 with frm
    csrrw  x9, fflags, x0   # csrrw_fflags: exchange x9 with fflags

    # Use csrrs (read and set bits) on the same CSRs.
    csrrs  x7, fcsr, x0     # csrrs_fcsr: read fcsr (set bits specified by x0, effectively a read)
    csrrs  x8, frm, x0      # csrrs_frm
    csrrs  x9, fflags, x0   # csrrs_fflags

    # Use csrrc (read and clear bits) on the same CSRs.
    csrrc  x7, fcsr, x0     # csrrc_fcsr: read fcsr and clear bits given by x0
    csrrc  x8, frm, x0      # csrrc_frm
    csrrc  x9, fflags, x0   # csrrc_fflags


    #ifdef __riscv_xlen == 32
        fmvh.s.d f0, x1   # move x1 to f0
        fmvp f1, x2   # move x2 to f1
    #endif

/////////////////////////////////
//cp_mstatus_fs_csr_write
/////////////////////////////////
    #fp is still diabled from last test
    li t1, 8        # (1<<3) part of frm and fcsr and fflags
    csrs fcsr, t1    #should cause an illegal instruction exception when mstatus.FS=00



finished:
    j done
