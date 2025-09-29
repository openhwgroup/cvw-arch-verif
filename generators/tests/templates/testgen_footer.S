
RVTEST_CODE_END
RVMODEL_HALT

# Allocate scratch memory in .bss section
.section .bss
.align 4
scratch:
    .space 136  # Reserve 136 bytes of uninitialized memory

RVTEST_DATA_BEGIN
.align 4

rvtest_data:
.word 0xb0bacafe
.word 0xb0bacafe
RVTEST_DATA_END


RVMODEL_DATA_BEGIN
rvtest_sig_begin:
sig_begin_canary:
CANARY;

signature_base:
#ifdef SELFCHECK
  #include SIGNATURE_FILE
#else
  .fill sigupd_count*(XLEN/32),4,0xdeadbeef
#endif

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
