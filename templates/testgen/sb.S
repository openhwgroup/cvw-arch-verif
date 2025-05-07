# cp_align_byte
# test all 8 byte alignments
    la t0, scratch
    li t1, 0x9ABCDEF0
    li t2, 0x12345678
    sw t1, 0(t0)  // Initialize memory
    sw t2, 4(t0)

# cp_align_byte: imm[2:0]=000
    sb t2, 0(t0)

# cp_align_byte: imm[2:0]=001
    sb t2, 1(t0)

# cp_align_byte: imm[2:0]=010
    sb t2, 2(t0)

# cp_align_byte: imm[2:0]=011
    sb t2, 3(t0)

# cp_align_byte: imm[2:0]=100
    sb t2, 4(t0)

# cp_align_byte: imm[2:0]=101
    sb t2, 5(t0)

# cp_align_byte: imm[2:0]=110
    sb t2, 6(t0)

# cp_align_byte: imm[2:0]=111
    sb t2, 7(t0)
