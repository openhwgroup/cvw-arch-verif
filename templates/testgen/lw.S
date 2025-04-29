# align_word.S
# Test all word-aligned operations 
    la t0, scratch   # Load address of scratch memory

#ifdef __riscv_xlen
    #if __riscv_xlen == 64
        li t2, 0x123456789ABCDEF0
        sd t2, 0(t0)
#else
    li t2, 0x12345678
    sw t2, 0(t0)
    li t2, 0x9ABCDEF0
    sw t2, 4(t0)
#endif

# cp_align_word: imm[2]=0 (aligned load/store)
#ifdef __riscv_xlen
    #if __riscv_xlen == 64
        lwu t3, 0(t0)
#else
    lw t3, 0(t0)
#endif
    lw t1, 0(t0)
    sw t2, 0(t0)
#endif
#endif

# cp_align_word: imm[2]=1 (next word)
#ifdef __riscv_xlen
    #if __riscv_xlen == 64
    lwu t3, 4(t0)
#else
    lw t3, 4(t0)
#endif
    lw t1, 4(t0)
    sw t2, 4(t0)
#endif

