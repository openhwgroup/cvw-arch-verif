# sh.S
# test all halfword-aligned operations
    la t0, scratch
    li t1, 0x9ABCDEF0
    li t2, 0x12345678
    sw t1, 0(t0)  // Initialize memory
    sw t2, 4(t0)

#cp_align_hword: imm[2:1]=00
    sh t2, 0(t0)

#cp_align_hword: imm[2:1]=01
    sh t2, 2(t0)

#cp_align_hword: imm[2:1]=10
    sh t2, 4(t0)

#cp_align_hword: imm[2:1]=11
    sh t2, 6(t0)
