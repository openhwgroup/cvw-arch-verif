# lbu.S
# test all 8 byte alignments
    la t0, scratch
    li t1, 0x9ABCDEF0
    li t2, 0x12345678
    sw t1, 0(t0)  // Initialize memory
    sw t2, 4(t0)

# cp_align_byte: imm[2:0]=000
    lbu t3, 0(t0)

# cp_align_byte: imm[2:0]=001
    lbu t3, 1(t0)

# cp_align_byte: imm[2:0]=010
    lbu t3, 2(t0)

# cp_align_byte: imm[2:0]=011
    lbu t3, 3(t0)

# cp_align_byte: imm[2:0]=100
    lbu t3, 4(t0)

# cp_align_byte: imm[2:0]=101
    lbu t3, 5(t0)

# cp_align_byte: imm[2:0]=110
    lbu t3, 6(t0)

# cp_align_byte: imm[2:0]=111
    lbu t3, 7(t0)
