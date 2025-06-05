
///////////////////////////////////////////////////////////////
# CUSTOM TESTS GUIDE:
#
# WARNING: Custom tests must correctly manage signature memory using macros.
# Each time an instruction writes to the signature, you must update the signature pointer accordingly.
#
# REQUIRED !:
# 1. Use **SBINCREMENT** to increment the signature pointer.
#    - If SBINCREMENT is missing, the pointer won't advance, and the test will fail silently.
# 2. Use **INCSIGCOUNT** to update the signature word count.
#    - If INCSIGCOUNT is missing, the test may overrun the allocated signature memory.
#
# For every SBINCREMENT macro, there MUST be a matching INCSIGCOUNT.
#    - A mismatch will trigger an error in the test generation script.
#
# Macro definitions (used by the testgen script):
#   - SIGPOINTER   → replaced by x{sigReg}
#   - SBINCREMENT  → replaced by REGWIDTH
#   - INCSIGCOUNT  → replaced by "sigupd_count += 1"
#   - If a macro isn't needed, prefix it with a `#` to disable it.
#
# IMPORTANT: If you modify this guide, ensure SBINCREMENT and INCSIGCOUNT counts remain equal.
# Otherwise, the consistency check in the testgen script will fail.
///////////////////////////////////////////////////////////////

# sw.S
# Test word-aligned sw operations
    mv t0, SIGPOINTER #move signature pointer to t0.
    li t2, 0x12345678
    li t3, 0x9ABCDEF0

    # cp_align_word: imm[2]=0 (aligned store)
    sw t2, 0(t0)
    sw t3, 4(t0)
    #Increment after since we are storing two words using offset 0 and 4
    addi t0, t0, SBINCREMENT
    # INCSIGCOUNT
    addi t0, t0, SBINCREMENT
    # INCSIGCOUNT
