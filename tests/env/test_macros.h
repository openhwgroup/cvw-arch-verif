/* These are macros to manage storing signatures, selecting what to save       */
/* keeping track of the hidden offset, and ensuring it doesn't overflow         */
/* They're useful across many tests, but generally for specific classes of ops */


/* This function set up the Page table entry for Sv32 Translation scheme
    Arguments:
    _PAR: Register containing Physical Address
    _PR: Register containing Permissions for Leaf PTE.
        (Note: No-leaf PTE (if-any) has only valid permission (pte.v) set)
    _TR0, _TR1, _TR2: Temporary registers used and modified by function
    VA: Virtual address
    level: Level at which PTE would be setup
        0: Two level translation
        1: Superpage
*/

#define LEVEL0 0x00
#define LEVEL1 0x01
#define LEVEL2 0x02
#define LEVEL3 0x03
#define LEVEL4 0x04

#define ALL_F_S 0xFFFFFFFF

#define sv39 0x00
#define sv48 0x01
#define sv57 0x02

#define CODE code_bgn_off
#define DATA data_bgn_off
#define SIG  sig_bgn_off
#define VMEM vmem_bgn_off


#define SATP_SETUP(_TR0, _TR1, MODE);\
    LA(_TR0, rvtest_Sroot_pg_tbl) ;\
    LI(_TR1, MODE) ;\
    srli _TR0, _TR0, 12 ;\
    or _TR0, _TR0, _TR1  ;\
    csrw satp, _TR0   ;\


#define ALL_MEM_PMP                                               ;\
      li t2, -1                                                 ;\
      csrw pmpaddr0, t2                                         ;\
      li t2, 0x0F                                            ;\
      csrw pmpcfg0, t2                                          ;\
      sfence.vma                                                ;

//****NOTE: label `rvtest_Sroot_pg_tbl` must be declared after RVTEST_DATA_END
//          in the test aligned at 4kiB (use .align 12)
#define PTE_SETUP_COMMON(_PAR, _PR, _TR0, _TR1, _VAR, level)      ;\
    srli _VAR, _VAR, (RISCV_PGLEVEL_BITS * level + RISCV_PGSHIFT) ;\
    srli _PAR, _PAR, (RISCV_PGLEVEL_BITS * level + RISCV_PGSHIFT) ;\
    slli _PAR, _PAR, (RISCV_PGLEVEL_BITS * level + RISCV_PGSHIFT) ;\
    LI(_TR0, ((1 << RISCV_PGLEVEL_BITS) - 1))                     ;\
    and _VAR, _VAR, _TR0                                          ;\
    slli _VAR, _VAR, ((XLEN >> 5)+1)                              ;\
    add _TR1, _TR1, _VAR                                          ;\
    srli _PAR, _PAR, 12                                           ;\
    slli _PAR, _PAR, 10                                           ;\
    or _PAR, _PAR, _PR                                            ;\
    SREG _PAR, 0(_TR1);

#define PTE_SETUP_RV32(_PAR, _PR, _TR0, _TR1, VA, level)    ;\
    srli _PAR, _PAR, 12                                         ;\
    slli _PAR, _PAR, 10                                         ;\
    or _PAR, _PAR, _PR                                          ;\
    .if (level==1)                                              ;\
        LA(_TR1, rvtest_Sroot_pg_tbl)                           ;\
        LI(_TR0, ((VA>>22)&0x3FF)<<2)                           ;\
    .endif                                                      ;\
    .if (level==0)                                              ;\
        LA(_TR1, rvtest_slvl1_pg_tbl)                           ;\
        LI(_TR0, ((VA>>12)&0x3FF)<<2)                           ;\
    .endif                                                      ;\
    add _TR1, _TR1, _TR0                                        ;\
    SREG _PAR, 0(_TR1);

// More Robust version of PTE_SETUP_32 to setup a PTE for a PA using Va
// in a single line.
//args: PA: Label of Physical Address, PERMS: permissions in hex
//args: VA: Virtual Address in hex, level: Level to store at
#define PTE_SETUP_RV32_New(PA_LBL, PERMS, VA, level)           ;\
    LA(a0, PA_LBL)                                             ;\
    LI(a1, PERMS)                                              ;\
  PTE_SETUP_RV32(a0, a1, t0, t1, VA, level)                  ;\

#define SAVE_AREA_SETUP(VA, PA_LBL, _REG_NAME)                  ;\
  LI (t0, VA)                                                 ;\
  LA (t1, PA_LBL)                                             ;\
  sub t0, t0, t1                                              ;\
  LREG t1, _REG_NAME##_bgn_off+0*sv_area_sz(sp)               ;\
  add t2, t1, t0                                              ;\
  SREG t2, _REG_NAME##_bgn_off+1*sv_area_sz(sp)               ;\

#define PTE_SETUP_RV64(_PAR, _PR, _TR0, _TR1, VA, level, mode)  ;\
    srli _PAR, _PAR, 12                                         ;\
    slli _PAR, _PAR, 10                                         ;\
    or _PAR, _PAR, _PR                                          ;\
    .if (mode == sv39)                                          ;\
        .if (level == 2)                                        ;\
            LA(_TR1, rvtest_Sroot_pg_tbl)                       ;\
            .set vpn, ((VA >> 30) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 1)                                        ;\
            LA(_TR1, rvtest_slvl1_pg_tbl)                       ;\
            .set vpn, ((VA >> 21) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 0)                                        ;\
            LA(_TR1, rvtest_slvl2_pg_tbl)                       ;\
            .set vpn, ((VA >> 12) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
    .endif                                                      ;\
    .if (mode == sv48)                                          ;\
        .if (level == 3)                                        ;\
            LA(_TR1, rvtest_Sroot_pg_tbl)                       ;\
            .set vpn, ((VA >> 39) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 2)                                        ;\
            LA(_TR1, rvtest_slvl1_pg_tbl)                       ;\
            .set vpn, ((VA >> 30) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 1)                                        ;\
            LA(_TR1, rvtest_slvl2_pg_tbl)                       ;\
            .set vpn, ((VA >> 21) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 0)                                        ;\
            LA(_TR1, rvtest_slvl3_pg_tbl)                       ;\
            .set vpn, ((VA >> 12) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
    .endif                                                      ;\
    .if (mode == sv57)                                          ;\
        .if (level == 4)                                        ;\
            LA(_TR1, rvtest_Sroot_pg_tbl)                       ;\
            .set vpn, ((VA >> 48) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 3)                                        ;\
            LA(_TR1, rvtest_slvl1_pg_tbl)                       ;\
            .set vpn, ((VA >> 39) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 2)                                        ;\
            LA(_TR1, rvtest_slvl2_pg_tbl)                       ;\
            .set vpn, ((VA >> 30) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 1)                                        ;\
            LA(_TR1, rvtest_slvl3_pg_tbl)                       ;\
            .set vpn, ((VA >> 21) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
        .if (level == 0)                                        ;\
            LA(_TR1, rvtest_slvl3_pg_tbl)                       ;\
            .set vpn, ((VA >> 12) & 0x1FF) << 3                 ;\
        .endif                                                  ;\
    .endif                                                      ;\
    LI(_TR0, vpn)                                               ;\
    add _TR1, _TR1, _TR0                                        ;\
    SREG _PAR, 0(_TR1)                                          ;

#define PTE_PERMUPD_RV32(_PR, _TR0, _TR1, VA, level)            ;\
    .if (level==1)                                              ;\
        LA(_TR1, rvtest_Sroot_pg_tbl)                           ;\
        .set vpn, ((VA>>22)&0x3FF)<<2                           ;\
    .endif                                                      ;\
    .if (level==0)                                              ;\
        LA(_TR1, rvtest_slvl1_pg_tbl)                           ;\
        .set vpn, ((VA>>12)&0x3FF)<<2                           ;\
    .endif                                                      ;\
    LI(_TR0, vpn)                                               ;\
    add _TR1, _TR1, _TR0                                        ;\
    LREG _TR0, 0(_TR1)                                          ;\
    srli _TR0, _TR0, 10                                         ;\
    slli _TR0, _TR0, 10                                         ;\
    or _TR0, _TR0, _PR                                          ;\
    SREG _TR0, 0(_TR1)                                          ;


#define SATP_SETUP_SV32 ;\
    LA(t6, rvtest_Sroot_pg_tbl) ;\
    LI(t5, SATP32_MODE) ;\
    srli t6, t6, 12 ;\
    or t6, t6, t5  ;\
    csrw satp, t6   ;

#define SATP_SETUP_RV64(MODE)                                   ;\
    LA(t6, rvtest_Sroot_pg_tbl)                                 ;\
    .if (MODE == sv39)                                          ;\
    LI(t5, (SATP64_MODE) & (SATP_MODE_SV39 << 60))              ;\
    .endif                                                      ;\
    .if (MODE == sv48)                                          ;\
    LI(t5, (SATP64_MODE) & (SATP_MODE_SV48 << 60))              ;\
    .endif                                                      ;\
    .if (MODE == sv57)                                          ;\
    LI(t5, (SATP64_MODE) & (SATP_MODE_SV57 << 60))              ;\
    .endif                                                      ;\
    .if (MODE == sv64)                                          ;\
    LI(t5, (SATP64_MODE) & (SATP_MODE_SV64 << 60))              ;\
    .endif                                                      ;\
    srli t6, t6, 12                                             ;\
    or t6, t6, t5                                               ;\
    csrw satp, t6                                               ;

#define RVTEST_FP_ENABLE()      ;\
 LI(a0, (MSTATUS_FS & (MSTATUS_FS >> 1)))  ;\
 csrs mstatus, a0        ;\
 csrwi fcsr, 0

// This macro is for vector
#define RVTEST_VXSAT_ENABLE()      ;\
 LI(a0, (MSTATUS_VS & (MSTATUS_VS >> 1)))  ;\
 csrs mstatus, a0        ;\
 clrov

/* RVTEST_SIGBASE(reg, label) initializes to label and clears offset */
#define RVTEST_SIGBASE(_R,_TAG)      ;\
  LA(_R,_TAG)          ;\
  .set offset,0

  /* this function ensures individual sig stores don't exceed offset limits  */
  /* if they would, update the base by 2032 and reset the offset     */
  /* exceed offset limit is 16 below Breg-add # to allow for alignment across different register sizes */
  /* 2032 as Breg add amount to avoid max 2048 add*/
  /* an option is to pre-incr offset if there was a previous signature store */
#ifdef LOCKSTEP
  #define CHK_OFFSET(_BREG, _SZ, _PRE_INC)
#else
  #define CHK_OFFSET(_BREG, _SZ, _PRE_INC)    ;\
    .if (_PRE_INC!=0)          ;\
      .set offset, offset+_SZ        ;\
    .endif            ;\
    .if offset >= 2016          ;\
      addi   _BREG,  _BREG,   2032     ;\
      .set   offset, 0    ;\
    .endif
    // TODO: Original version is as follows. Why was this change necessary?
    /*
    #define CHK_OFFSET(_BREG, _SZ, _PRE_INC)    ;\
    .if (_PRE_INC!=0)          ;\
      .set offset, offset+_SZ        ;\
    .endif            ;\
    .if offset >= 2048          ;\
      addi   _BREG,  _BREG,   (2048 - _SZ)    ;\
      .set   offset, offset - (2048 - _SZ)    ;\
    .endif
    */
#endif

 /* automatically adjust base and offset if offset gets too big, resetting offset         */
 /* RVTEST_SIGUPD(basereg, sigreg)    stores sigreg at offset(basereg) and updates offset by regwidth   */
 /* RVTEST_SIGUPD(basereg, sigreg,newoff) stores sigreg at newoff(basereg) and updates offset to regwidth+newoff */

infloop:    j write_tohost


#ifdef LOCKSTEP
    #define RVTEST_SIGUPD(_BR, _R, ...) \
        nop;
#elifdef SELFCHECK
    #define RVTEST_SIGUPD(_BR, _R, ...)                \
        .if NARG(__VA_ARGS__) == 1        ;\
          .set offset,_ARG1(__VA_OPT__(__VA_ARGS__,0))  ;\
        .endif            ;\
        CHK_OFFSET(_BR, REGWIDTH,0)        ;\
        LREG x4,offset(_BR)          ;\
        beq x4, _R, 1f          ;\
        j  infloop       ;\
        1:      nop     ;\
        .set offset,offset+REGWIDTH
#else
    #define RVTEST_SIGUPD(_BR, _R, ...)                \
        .if NARG(__VA_ARGS__) == 1        ;\
          .set offset,_ARG1(__VA_OPT__(__VA_ARGS__,0))  ;\
        .endif            ;\
        CHK_OFFSET(_BR, REGWIDTH,0)        ;\
        SREG _R,offset(_BR)          ;\
        .set offset,offset+REGWIDTH
#endif
/* RVTEST_SIGUPD_F(basereg, sigreg,flagreg,newoff)       */
/* This macro is used to store the signature values of (32 & 64) F and D */
/* teats which use TEST_(FPSR_OP, FPIO_OP, FPRR_OP, FPR4_OP) opcodes   */
/* It stores both an Xreg and an Freg, first adjusting base & offset to   */
/* to keep offset < 2048. SIGALIGN is set to the max(FREGWIDTH, REGWIDTH)*/
/* _BR - Base Reg, _R - FReg, _F - Fstatus Xreg         */
#ifdef LOCKSTEP
  #define RVTEST_SIGUPD_F(_BR,_R,_F,...)
#else
  #define RVTEST_SIGUPD_F(_BR,_R,_F,...)      ;\
    .if NARG(__VA_ARGS__) == 1        ;\
      .set offset,_ARG1(__VA_OPT__(__VA_ARGS__,0))  ;\
    .endif            ;\
    .if (offset&(SIGALIGN-1))!=0        ;\
    /* Throw warnings then modify offset to target */  ;\
    /*  TODO: Why is this warning being triggered? .warning "Incorrect signature Offset Alignment."  */;\
      .set offset, (offset&~(SIGALIGN-1))+SIGALIGN    ;\
      /*  TODO: Original version follows. Why was this change necessary?\
        .set offset, offset&(SIGALIGN-1)+SIGALIGN    */;\
    .endif            ;\
    CHK_OFFSET(_BR, SIGALIGN, 0)        ;\
    FSREG _R,offset(_BR)          ;\
    CHK_OFFSET(_BR, SIGALIGN, 1)        ;\
    SREG _F,offset(_BR)          ;\
    .set offset,offset+SIGALIGN
#endif

// TODO: Are these new RVTEST_SIGWRITE macros really needed?
/* Stores register into signature region and increment the signature pointer*/
 /* RVTEST_SIGUPD does not properly handle code that jumps over macros due to garbling the offset.*/
 /* Do not mix RVTEST_SIGWRITE and RVTEST_SIGUPD in the same program */
 /* RVTEST_SIGWRITE(basereg, sigreg) stores sigreg at 0(basereg) and increments basereg by regwidth  */
 #define RVTEST_SIGWRITE(_BR,_R)            ;\
      SREG _R, 0(_BR)                   ;\
      addi _BR, _BR, REGWIDTH

 /* Stores register into signature region and increment the signature pointer*/
 /* RVTEST_SIGUPD_F does not properly handle code that jumps over macros due to garbling the offset.*/
 /* Do not mix RVTEST_SIGWRITE_F and RVTEST_SIGUPD_F in the same program */
 /* RVTEST_SIGWRITE_F(basereg, sigreg, flagreg) stores sigreg at 0(basereg) and increments basereg by sigalign   */
 /* SIGALIGN is set to the max(FREGWIDTH, REGWIDTH)*/
#define RVTEST_SIGWRITE_F(_BR,_R,_f)        ;\
      FSREG _R, 0(_BR)                  ;\
      SREG _F, SIGALIGN(_BR)                    ;\
      addi _BR, _BR, 2*SIGALIGN

  /* DEPRECATE this is redundant with RVTEST_BASEUPD(BR,_NR),  */
  /* except it doesn't correct for offset overflow while moving */
#define RVTEST_VALBASEMOV(_NR,_BR)      ;\
  add _NR, _BR, x0;

#define RVTEST_VALBASEUPD(_BR,...)      ;\
  .if NARG(__VA_ARGS__) == 0        ;\
      addi _BR,_BR,2040          ;\
  .endif            ;\
  .if NARG(__VA_ARGS__) == 1        ;\
      LA(_BR,_ARG1(__VA_ARGS__,x0))      ;\
  .endif

/*
 * RVTEST_BASEUPD(base reg) - updates the base register the last signature address + REGWIDTH
 * RVTEST_BASEUPD(base reg, new reg) - moves value of the next signature region to update into new reg
 * The hidden variable offset is reset always
*/

#define RVTEST_BASEUPD(_BR,...)        ;\
 /* deal with case where offset>=2047 */    ;\
       .set corr 2048-REGWIDTH        ;\
    .if offset <2048           ;\
       .set corr offset          ;\
    .endif            ;\
    .set offset, offset-corr        ;\
              ;\
    .if NARG(__VA_ARGS__) == 0        ;\
  addi _BR,        _BR, corr    ;\
    .else            ;\
  addi _ARG1(__VA_ARGS__,x0) ,_BR, corr    ;\
    .endif
