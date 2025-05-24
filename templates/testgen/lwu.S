# lwu.S
# Test all word-aligned operations for RV64 only
    la t0, scratch
    li t2, 0x123456789ABCDEF0
    sd t2, 0(t0)

# cp_align_word: imm[2]=0
    lwu t3, 0(t0)

# cp_align_word: imm[2]=1
    lwu t3, 4(t0)
