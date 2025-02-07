
///////////////////////////////////////////
// ExceptionsM.S
//
// Written: rdesantos@hmc.edu 6 February 2025
//
// Purpose: Code coverage for the remaining ExceptionsM tests
//          not exercised in ExceptionsInstr.S
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "../../WALLY-init-lib.h" // This path needs to be updated if this file is relocated

main:


    # set up fast trap handler for uncompressed illegal instructions
    # because these tests will throw a huge number of traps
    # This handler just adds 4 to PC and returns.  It cannot
    # handle other functions, so substitute the normal trap handler
    # at the end of the program


    la t0, trap_handler_returnplus4
    csrw mtvec, t0


    # set mstatus.FS to 01 to enable fp
    li t0,0x4000
    csrs mstatus, t0


/////////////////////////////////
// M-Mode Exception Tests
/////////////////////////////////


//cp_instr_adr_misaligned_branch

// how do I test imm[1]=0 if the number also needs to be an odd multiple of 2 

li t1,1        #load a test value

.align 2

//.word with an odd branch ammount (offset 1, )
//.hword and 16 bits of zeros


//Test beq with an offset of 2, beq x0,x0

.word 0000000_00000_00000_000_00010_1100011
nop

//Test beq with an offset of 4, beq x0,x0
.word 0000000_00000_00000_000_00100_1100011
nop

//bne with an offset of 2, bne x0, t1
.word 0000000_00000_00101_001_00010_1100011
nop

//bne with an offset of 4
.word 0000000_00000_00101_001_00100_1100011
nop

//blt with an offset of 2, blt x0, t1
.word 0000000_00000_00101_100_00010_1100011
nop

//blt with an offset of 4, blt x0, t1
.word 0000000_00000_00101_100_00100_1100011
nop

//bge with an offset of 2, bge x0, t1
.word 0000000_00101_00000_101_00010_1100011
nop

//bge with an offset of 4, bge x0, t1
.word 0000000_00101_00000_101_00100_1100011
nop

//bge with an offset of 2, bge x0, t1
.word 0000000_00101_00000_101_00010_1100011
nop

//bltu with an offset of 2, blt x0, t1
.word 0000000_00000_00101_110_00010_1100011
nop

//bltu with an offset of 4, blt x0, t1
.word 0000000_00000_00101_110_00100_1100011
nop


//cp_instr_adr_misaligned_branch_nottaken


//Test beq with an offset of 2, beq x0,x0

.word 0000000_00000_00101_000_00010_1100011 //note t1 contains 1

//Test beq with an offset of 4, beq x0,x0
.word 0000000_00000_00101_000_00100_1100011

//bne with an offset of 2, bne x0, t1
.word 0000000_00000_00000_001_00010_1100011

//bne with an offset of 4
.word 0000000_00000_00000_001_00100_1100011

//blt with an offset of 2, blt x0, t1
.word 0000000_00101_00000_100_00010_1100011
nop

//blt with an offset of 4, blt x0, t1
.word 0000000_00101_00000_100_00100_1100011
nop

//bge with an offset of 2, bge x0, t1
.word 0000000_00000_00101_101_00010_1100011
nop

//bge with an offset of 4, bge x0, t1
.word 0000000_00000_00101_101_00100_1100011
nop

//bge with an offset of 2, bge x0, t1
.word 0000000_00000_00101_101_00010_1100011
nop

//bltu with an offset of 2, blt x0, t1
.word 0000000_00000_00101_110_00010_1100011
nop

//bltu with an offset of 4, blt x0, t1
.word 0000000_00000_00101_110_00100_1100011
nop

//cp_instr_adr_misaligned_jal



//cp_instr_adr_misaligned_jalr

# li t1, 0
# jalr  t0, t1, .+2
# c.nop
# c.nop

# li t1, 1 
# jalr  t0, t1, .+2
# c.nop
# c.nop

# li t1, 2
# jalr  t0, t1, .+2
# c.nop
# c.nop

# li t1, 3
# jalr  t0, t1, .+2
# c.nop
# c.nop


# li t1, 0
# jalr  t0, t1, .+3
# c.nop
# c.nop

# li t1, 1 
# jalr  t0, t1, .+3
# c.nop
# c.nop

# li t1, 2
# jalr  t0, t1, .+3
# c.nop
# c.nop

# li t1, 3
# jalr  t0, t1, .+3
# c.nop
# c.nop

//cp_instr_access_fault
//look at covergroup files to find illegal address use a jar command R



