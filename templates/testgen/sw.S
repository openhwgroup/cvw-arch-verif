
///////////////////////////////////////////////////////////////
# CUSTOM TESTS GUIDE:
#
# WARNING: Custom tests must correctly manage signature memory allocation using macros.
# Each time an instruction writes to the signature, you must update the signature pointer accordingly.
#
# WARNING: Do NOT use t0 — reserved by the test generator.
#
# MACROS:
# - SIGPOINTER for all signature memory accesses (e.g., x30). → replaced by x{sigReg} internally.
# - SIG_POINTER_INCREMENT(n) after all signature writes to advance the signature pointer.
#
# GUIDELINES:
#    - Always store data first, then increment the signature pointer.
#    - Use correct byte offsets (0, 4, 8...) when storing multiple words.
#    - SIG_POINTER_INCREMENT(n) tells the script how many words were written.
#    - It shifts REGWIDTH by log2(n) internally.
#
#
# IMPORTANT: DO not modify the guide unless you change the test generation script accordingly.
///////////////////////////////////////////////////////////////

# sw.S
# Test word-aligned sw operations
    #mv t0, SIGPOINTER #move signature pointer to t0.
    li t2, 0x12345678
    li t3, 0x9ABCDEF0

    # cp_align_word: imm[2]=0 (aligned store)
    sw t2, 0(SIGPOINTER)
    sw t3, 4(SIGPOINTER)
    #Increment pointer after since we are storing two words using offset 0 and 4.
    #If the increments were added in between, the offset would be off

    #increment by 2 bytes since we are storing two words
    SIG_POINTER_INCREMENT(2)
