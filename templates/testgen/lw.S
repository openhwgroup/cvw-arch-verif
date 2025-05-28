# lw.S
# Test word-aligned lw operations
    la t0, scratch
    li t2, 0x12345678
    sw t2, 0(t0)
    li t2, 0x9ABCDEF0
    sw t2, 4(t0)

# cp_align_word: imm[2]=0 (aligned load)
    lw t1, 0(t0)

# cp_align_word: imm[2]=1 (next word)
    lw t1, 4(t0)
