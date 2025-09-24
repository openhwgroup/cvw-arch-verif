
#endif


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

vector_data:
