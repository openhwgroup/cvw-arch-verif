# sw.S
# Test word-aligned sw operations
    la t0, scratch
    li t2, 0x12345678
    li t3, 0x9ABCDEF0

    # cp_align_word: imm[2]=0 (aligned store)
    sw t2, 0(t0)
    sw t3, 4(t0)
