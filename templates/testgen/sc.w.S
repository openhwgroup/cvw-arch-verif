# # sc.w.S
# # custom tests for store conditional

# # cp_custom_aqrl
# # test acquire and release modifiers
#     #la t0, scratch
#     li t2, 0xF2345678
#     sc.w t1, t2, (SIGPOINTER)
#     SIG_POINTER_INCREMENT(4)
#     sc.w.rl t1, t2, (SIGPOINTER)
#     SIG_POINTER_INCREMENT(4)
#     sc.w.aqrl t1, t2, (SIGPOINTER)
#     SIG_POINTER_INCREMENT(4)

# # cp_custom_sc_lrsc
#     li t3, 0x23456789
#     li t4, 0x3456789A

#     # should succeed
#     lr.w t1, (SIGPOINTER)
#     sc.w t2, t3, (SIGPOINTER)
#     SIG_POINTER_INCREMENT(4)

#     # should fail because of intervening sc
#     lr.w t1, (SIGPOINTER)
#     sc.w t2, t3, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)
#     sc.w t5, t4, (SIGPOINTER) # fails
#     SIG_POINTER_INCREMENT(4)

# # cp_custom_sc_addresses
#     # loop over distances of 0 to 120 from lr to sc address
#     li t6, 0        # initialize offset to 0
# 1:
#     add t5, SIGPOINTER, t6      # scratch address + offset
#     lr.w t1, (SIGPOINTER)       # load from reservation set
#     sc.w t1, t3, (t5)   # try store conditional, should succeed if in same set
#     SIG_POINTER_INCREMENT(4)
#     sc.w t1, t3, (t5)   # try again, and it should fail this time
#     SIG_POINTER_INCREMENT(4)
#     # for RV64, also check different size lr vs. sc
#     #ifdef __riscv_xlen
#         #if __riscv_xlen == 64
#             lr.d t1, (SIGPOINTER)
#             sc.w t1, t3, (t5)
#             SIG_POINTER_INCREMENT(4)
#          #endif
#     #else
#         ERROR: __riscv_xlen not defined
#     #endif

#     addi t6, t6, 4      # increment offset
#     slti t5, t6, 129    # offset <= 128
#     bnez t5, 1b         # repeat until done

# # cp_custom_sc_after_store
#     # should not care about intervening stores
#     lr.w t1, (SIGPOINTER)
#     sb t3, 3(SIGPOINTER)      # store byte
#     SIG_POINTER_INCREMENT(4)
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     sh t3, 2(SIGPOINTER)      # store half
#     SIG_POINTER_INCREMENT(4)
#     sc.w t5, t4, (SIGPOINTER) # succeeds

#     lr.w t1, (SIGPOINTER)
#     sw t3, 0(SIGPOINTER)      # store word
#     SIG_POINTER_INCREMENT(4)
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     #ifdef __riscv_xlen
#         #if __riscv_xlen == 64
#             lr.w t1, (SIGPOINTER)
#             sd t3, 0(SIGPOINTER)      # store double
#             SIG_POINTER_INCREMENT(8)
#             sc.w t5, t4, (SIGPOINTER) # succeeds
#             SIG_POINTER_INCREMENT(4)
#         #endif
#     #else
#         ERROR: __riscv_xlen not defined
#     #endif

# # cp_custom_sc_after_load
#     # should not care about intervening loads

#     lr.w t1, (SIGPOINTER)
#     lb t3, 3(SIGPOINTER)      # load byte
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lb t3, 128(SIGPOINTER)      # load byte
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lbu t3, 2(SIGPOINTER)      # load byte unsigned
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (tSIGPOINTER0)
#     lbu t3, 128(SIGPOINTER)      # load byte unsigned
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lh t3, 2(SIGPOINTER)      # load half
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lh t3, 128(SIGPOINTER)      # load half
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lhu t3, 0(SIGPOINTER)      # load half unsigned
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lhu t3, 128(SIGPOINTER)      # load half unsigned
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lw t3, 0(SIGPOINTER)      # load word
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     lr.w t1, (SIGPOINTER)
#     lw t3, 128(SIGPOINTER)      # load word
#     sc.w t5, t4, (SIGPOINTER) # succeeds
#     SIG_POINTER_INCREMENT(4)

#     #ifdef __riscv_xlen
#         #if __riscv_xlen == 64
#             lr.w t1, (SIGPOINTER)
#             lwu t3, 0(SIGPOINTER)      # load word unsigned
#             sc.w t5, t4, (SIGPOINTER) # succeeds
#             SIG_POINTER_INCREMENT(4)

#             lr.w t1, (SIGPOINTER)
#             lwu t3, 128(SIGPOINTER)      # load word unsigned
#             sc.w t5, t4, (SIGPOINTER) # succeeds
#             SIG_POINTER_INCREMENT(4)

#             lr.w t1, (SIGPOINTER)
#             ld t3, 0(SIGPOINTER)      # load double
#             sc.w t5, t4, (SIGPOINTER) # succeeds
#             SIG_POINTER_INCREMENT(4)

#             lr.w t1, (SIGPOINTER)
#             ld t3, 128(SIGPOINTER)      # load double
#             sc.w t5, t4, (SIGPOINTER) # succeeds
#             SIG_POINTER_INCREMENT(4)

#         #endif
#     #else
#         ERROR: __riscv_xlen not defined
#     #endif
