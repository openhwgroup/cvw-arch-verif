
#endif


RVTEST_CODE_END
RVMODEL_HALT

# Allocate scratch memory in .bss section
.section .bss
.align 4
scratch:
    .space 136  # Reserve 136 bytes of uninitialized memory

.section .data

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
.word 0xbabecafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;




signature_base:
    .fill sigupd_count*(XLEN/32),4,0xdeadbeef

#ifdef rvtest_mtrap_routine

tsig_begin_canary:
CANARY;
mtrap_sigptr:
    .fill 64*(XLEN/32),4,0xdeadbeef
tsig_end_canary:
CANARY;

#endif

#ifdef rvtest_gpr_save

gpr_save:
    .fill 32*(XLEN/32),4,0xdeadbeef

#endif

sig_end_canary:
CANARY;
rvtest_sig_end:
RVMODEL_DATA_END





# write_tohost:
#     la t1, tohost
#     li t0, 1
#     sw t0, 0(t1)
#     sw zero, 4(t1)

# self_loop:
#     j self_loop

# .data

# .align 4
# scratch:
#     .bss 136

# .data 

# .section .tohost 
# tohost: # write to HTIF
#     .dword 0
# fromhost:
#     .dword 0

# .align 4
# begin_signature:
#     .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
# end_signature:

# .end
