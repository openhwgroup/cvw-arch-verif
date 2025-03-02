///////////////////////////////////////////
// ExceptionsM.S
//
// Written: Roman De Santos rdesantos@hmc.edu 28 February 2025
//
// Purpose: Functional coverage test for Exceptions in M mode
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

# #include "WALLY-init-lib.h"

# main:
#     // Set up the trap handler
#     la t0, trap_handler
#     csrw mtvec, t0

#     # Get a pointer to scratch data
#     la      t4, scratch

#     # Initialize loop counter (offset) from 0 to 7
#     li      t0, 0         # t0 = loop index (offset)
#     li      t5, 8         # loop limit (we will test offsets 0 through 7)

# /////////////////////////////////
# //cp_load_address_misaligned
# /////////////////////////////////

#     #-----------------------------------------------------------
#     # Set up a pointer to scratch memory.
#     # (Assume scratch is large enough and suitably aligned.)
#     la      t4, scratch

#     #-------------------------------------------------------------------------
#     # Test non-_sp forms using a loop over all 3-bit offsets (0..7)
#     # These instructions use a base register (t4) plus a register offset.
#     li      t0, 0         # loop index (offset 0..7)
#     li      t5, 8         # loop limit

# non_sp_loop:
#     add     t1, t4, t0    # t1 = effective address (LSBs == t0)

#     # Test compressed integer load instructions:
#     c.lw    t2, 0(t1)     # compressed load word
#     c.lh    t2, 0(t1)     # compressed load halfword
#     c.lhu   t2, 0(t1)     # compressed load halfword unsigned

# #ifdef __riscv_f
#     c.flw   ft0, 0(t1)    # compressed load floating-point word
# #endif

# #if defined(__riscv_xlen) && __riscv_xlen == 64
#     c.ld    t2, 0(t1)     # compressed load doubleword (RV64 only)
#     #ifdef __riscv_f
#         c.fld   ft0, 0(t1)    # compressed load floating-point doubleword (RV64 only)
#     #endif
# #endif

#     addi    t0, t0, 1
#     blt     t0, t5, non_sp_loop

#     #-------------------------------------------------------------------------
#     # Now test the _sp forms.
#     # These instructions use the stack pointer (sp) plus a literal immediate.
#     # For testing misaligned accesses, set sp to point to scratch.
#     la      sp, scratch

#     # The _sp instructions use immediate offsets. We unroll each possible value (0..7).
#     # Compressed load word from sp:
#     c.lwsp  t2, 0(sp)
#     c.lwsp  t2, 1(sp)
#     c.lwsp  t2, 2(sp)
#     c.lwsp  t2, 3(sp)
#     c.lwsp  t2, 4(sp)
#     c.lwsp  t2, 5(sp)
#     c.lwsp  t2, 6(sp)
#     c.lwsp  t2, 7(sp)

# #if defined(__riscv_xlen) && __riscv_xlen == 64
#     # Compressed load doubleword from sp (RV64 only):
#     c.ldsp  t2, 0(sp)
#     c.ldsp  t2, 1(sp)
#     c.ldsp  t2, 2(sp)
#     c.ldsp  t2, 3(sp)
#     c.ldsp  t2, 4(sp)
#     c.ldsp  t2, 5(sp)
#     c.ldsp  t2, 6(sp)
#     c.ldsp  t2, 7(sp)
# #endif

# #ifdef __riscv_f
#         # Compressed load floating-point word from sp:
#         c.flwsp ft0, 0(sp)
#         c.flwsp ft0, 1(sp)
#         c.flwsp ft0, 2(sp)
#         c.flwsp ft0, 3(sp)
#         c.flwsp ft0, 4(sp)
#         c.flwsp ft0, 5(sp)
#         c.flwsp ft0, 6(sp)
#         c.flwsp ft0, 7(sp)

#     #if defined(__riscv_xlen)
#         #if __riscv_xlen == 64
#             # Compressed load floating-point doubleword from sp (RV64 only):
#             c.fldsp ft0, 0(sp)
#             c.fldsp ft0, 1(sp)
#             c.fldsp ft0, 2(sp)
#             c.fldsp ft0, 3(sp)
#             c.fldsp ft0, 4(sp)
#             c.fldsp ft0, 5(sp)
#             c.fldsp ft0, 6(sp)
#             c.fldsp ft0, 7(sp)
#         #endif
#     #endif
# #endif

# /////////////////////////////////
# //cp_load_access_fault
# /////////////////////////////////

#     // Load the illegal address into a register
#     li      t0, ACCESS_FAULT_ADDRESS

#     // Canonical load instructions (as in your original code)
#     lb      t1, 0(t0)
#     lbu     t2, 0(t0)
#     lh      t3, 0(t0)
#     lhu     t4, 0(t0)
#     lw      t5, 0(t0)
# #ifdef __riscv_xlen
# #if __riscv_xlen == 64
#     lwu     t6, 0(t0)   // Load word (unsigned)
#     ld      t7, 0(t0)   // Load doubleword
# #endif
# #endif

#     // Compressed load instructions (assuming support for the C extension)
#     c.lw    t1, 0(t0)       // Compressed load word
#     c.lwsp  t2, 0(sp)       // Compressed load word using stack-pointer offset

# #if __riscv_xlen == 64
#     c.ld    t3, 0(t0)       // Compressed load doubleword (RV64)
#     c.ldsp  t4, 0(sp)       // Compressed load doubleword using stack-pointer offset
# #endif

#     // Compressed floating-point loads (if floating-point and compressed FP are supported)
#     c.flw   f1, 0(t0)       // Compressed floating-point load word
#     c.flwsp f2, 0(sp)       // Compressed floating-point load word from sp

# #if __riscv_xlen == 64
#     c.fld   f3, 0(t0)       // Compressed floating-point load doubleword
#     c.fldsp f4, 0(sp)       // Compressed floating-point load doubleword from sp
# #endif

# /////////////////////////////////
# //cp_store_address_misaligned
# /////////////////////////////////

#     # For compressed store instructions (if supported):
#     c.sw    t2, 0(t1)     # compressed store word
#     c.swsp  t2, 0(sp)     # compressed store word from sp
# #ifdef __riscv_xlen
#     #if __riscv_xlen == 64
#         c.sd    t2, 0(t1)     # compressed store doubleword
#         c.sdsp  t2, 0(sp)     # compressed store doubleword from sp
#     #endif
# #endif

#     c.sh    t2, 0(t1)     # (if a compressed variant for halfword exists)

# #ifdef __riscv_f
#     c.fsw   f2, 0(t1)     # compressed floating-point store word
#     c.fswsp f2, 0(sp)     # compressed floating-point store word from sp
# #endif

# #ifdef __riscv_xlen
#     #if __riscv_xlen == 64
#         #ifdef __riscv_f
#             c.fsd   f3, 0(t1)     # compressed floating-point store doubleword
#             c.fsdsp f3, 0(sp)     # compressed floating-point store doubleword from sp
#         #endif
#     #endif
# #endif

# /////////////////////////////////
# //cp_store_access_fault
# /////////////////////////////////
#     # Load the illegal address into a register.
#     la      t0, ACCESS_FAULT_ADDRESS
#     # For sp variants, set sp to the illegal address.
#     mv      sp, t0

#     #load test values into test registers
#     # --- Canonical Store Instructions ---
#     # Attempt to store byte.
#     li      t1, 0xAB

#     # Attempt to store halfword.
#     li      t2, 0xBEAD


#     # Attempt to store word.
#     li      t3, 0xADDEDCAB

#     #ifdef __riscv_f
#         li      t5, 0x3F800000   # Load the bit-level representation of 1.0f into t0.
#         fmv.w.x f2, t0          # Move the value from t0 to floating-point register f0.
#     #endif


# #ifdef __riscv_xlen
#     #if __riscv_xlen == 64
#         # Attempt to store doubleword (RV64).
#         li      t4, 0xDEADBEEFDEADBEEF   

#         #ifdef __riscv_f
#             li      t5, 0x3FF0000000000000  # Load the bit-level representation of 1.0 (double) into t0.
#             fmv.d.x f3, t0                # Move the value from t0 to floating-point register f0.
#         #endif
#     #endif
# #endif



#     # --- Compressed Store Instructions ---
#     # Note: c.sb and c.sh are nonstandard in the base C extension.
#     # Ensure your toolchain/target supports these if you wish to test them.

#     # Attempt compressed store byte.
#     c.sb    t1, 0(t0)

#     # Attempt compressed store halfword.
#     c.sh    t2, 0(t0)

#     # Attempt compressed store word.
#     c.sw    t3, 0(t0)
#     # Attempt compressed store word using sp variant.
#     c.swsp  t3, 0(sp)

# #ifdef __riscv_xlen
#     #if __riscv_xlen == 64
#         # Attempt compressed store doubleword (RV64).
#         c.sd    t4, 0(t0)
#         # Attempt compressed store doubleword using sp variant (RV64).
#         c.sdsp  t4, 0(sp)
#     #endif
# #endif

#     # --- Compressed Floating-Point Store Instructions ---
#     #Your target must support the compressed FP (often via Zca). //double check
#     c.fsw   f2, 0(t0)
#     c.fswsp f2, 0(sp)

# #ifdef __riscv_xlen
#     #if __riscv_xlen == 64
#         c.fsd   f3, 0(t0)
#         c.fsdsp f3, 0(sp)
#     #endif
# #endif

# finished:
#     j done