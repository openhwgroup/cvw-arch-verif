    `ifdef COVER_RV32D
        rv32d_sample(hart, issue);
    `endif

    `ifdef COVER_RV32F
        rv32f_sample(hart, issue);
    `endif

    `ifdef COVER_RV32I
        rv32i_sample(hart, issue);
    `endif

    `ifdef COVER_RV32M
        rv32m_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZAAMO
        rv32zaamo_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZALRSC
        rv32zalrsc_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBA
        rv32zba_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBB
        rv32zbb_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBC
        rv32zbc_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBKB
        rv32zbkb_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBKC
        rv32zbkc_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBKX
        rv32zbkx_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZBS
        rv32zbs_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCA
        rv32zca_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCAZICSR
        rv32zcazicsr_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCB
        rv32zcb_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCBM
        rv32zcbm_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCBZBB
        rv32zcbzbb_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCD
        rv32zcd_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZCF
        rv32zcf_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZFAD
        rv32zfad_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZFAF
        rv32zfaf_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZFAZFH
        rv32zfazfh_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZFH
        rv32zfh_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZFHD
        rv32zfhd_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZICOND
        rv32zicond_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZKND
        rv32zknd_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZKNE
        rv32zkne_sample(hart, issue);
    `endif

    `ifdef COVER_RV32ZKNH
        rv32zknh_sample(hart, issue);
    `endif

    `ifdef COVER_RV64D
        rv64d_sample(hart, issue);
    `endif

    `ifdef COVER_RV64F
        rv64f_sample(hart, issue);
    `endif

    `ifdef COVER_RV64F_BACKUP
        rv64f_backup_sample(hart, issue);
    `endif

    `ifdef COVER_RV64I
        rv64i_sample(hart, issue);
    `endif

    `ifdef COVER_RV64M
        rv64m_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZAAMO
        rv64zaamo_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZALRSC
        rv64zalrsc_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBA
        rv64zba_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBB
        rv64zbb_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBC
        rv64zbc_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBKB
        rv64zbkb_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBKC
        rv64zbkc_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBKX
        rv64zbkx_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZBS
        rv64zbs_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCA
        rv64zca_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCAZICSR
        rv64zcazicsr_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCB
        rv64zcb_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCBM
        rv64zcbm_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCBZBA
        rv64zcbzba_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCBZBB
        rv64zcbzbb_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCD
        rv64zcd_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZCF
        rv64zcf_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZFAD
        rv64zfad_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZFAF
        rv64zfaf_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZFAZFH
        rv64zfazfh_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZFH
        rv64zfh_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZFHD
        rv64zfhd_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZICOND
        rv64zicond_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZKND
        rv64zknd_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZKNE
        rv64zkne_sample(hart, issue);
    `endif

    `ifdef COVER_RV64ZKNH
        rv64zknh_sample(hart, issue);
    `endif

   `ifdef COVER_RV64VM
       rv64vm_sample(hart, issue);
   `endif
 
   `ifdef COVER_RV64VM_PMP
       rv64vm_pmp_sample(hart, issue);
   `endif
 
   `ifdef COVER_RV64ZICBOM
       rv64zicbom_sample(hart, issue);
   `endif
 
   `ifdef COVER_RV64CBO_PMP
       rv64cbo_pmp_sample(hart, issue);
   `endif
 
   `ifdef COVER_RV64CBO_VM
       rv64cbo_vm_sample(hart, issue);
   `endif
 
