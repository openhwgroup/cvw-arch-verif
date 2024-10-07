    `ifdef COVER_RV32D
        `cover_info("//      RV32D - Enabled");
        `include "RV32D_coverage_init.svh"
    `endif

    `ifdef COVER_RV32F
        `cover_info("//      RV32F - Enabled");
        `include "RV32F_coverage_init.svh"
    `endif

    `ifdef COVER_RV32I
        `cover_info("//      RV32I - Enabled");
        `include "RV32I_coverage_init.svh"
    `endif

    `ifdef COVER_RV32M
        `cover_info("//      RV32M - Enabled");
        `include "RV32M_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZAAMO
        `cover_info("//      RV32Zaamo - Enabled");
        `include "RV32Zaamo_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZALRSC
        `cover_info("//      RV32Zalrsc - Enabled");
        `include "RV32Zalrsc_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBA
        `cover_info("//      RV32Zba - Enabled");
        `include "RV32Zba_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBB
        `cover_info("//      RV32Zbb - Enabled");
        `include "RV32Zbb_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBC
        `cover_info("//      RV32Zbc - Enabled");
        `include "RV32Zbc_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBKB
        `cover_info("//      RV32Zbkb - Enabled");
        `include "RV32Zbkb_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBKC
        `cover_info("//      RV32Zbkc - Enabled");
        `include "RV32Zbkc_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBKX
        `cover_info("//      RV32Zbkx - Enabled");
        `include "RV32Zbkx_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZBS
        `cover_info("//      RV32Zbs - Enabled");
        `include "RV32Zbs_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCA
        `cover_info("//      RV32Zca - Enabled");
        `include "RV32Zca_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCAZICSR
        `cover_info("//      RV32ZcaZicsr - Enabled");
        `include "RV32ZcaZicsr_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCB
        `cover_info("//      RV32Zcb - Enabled");
        `include "RV32Zcb_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCBM
        `cover_info("//      RV32ZcbM - Enabled");
        `include "RV32ZcbM_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCBZBB
        `cover_info("//      RV32ZcbZbb - Enabled");
        `include "RV32ZcbZbb_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCD
        `cover_info("//      RV32Zcd - Enabled");
        `include "RV32Zcd_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZCF
        `cover_info("//      RV32Zcf - Enabled");
        `include "RV32Zcf_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZFAD
        `cover_info("//      RV32ZfaD - Enabled");
        `include "RV32ZfaD_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZFAF
        `cover_info("//      RV32ZfaF - Enabled");
        `include "RV32ZfaF_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZFAZFH
        `cover_info("//      RV32ZfaZfh - Enabled");
        `include "RV32ZfaZfh_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZFH
        `cover_info("//      RV32Zfh - Enabled");
        `include "RV32Zfh_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZFHD
        `cover_info("//      RV32ZfhD - Enabled");
        `include "RV32ZfhD_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZICOND
        `cover_info("//      RV32Zicond - Enabled");
        `include "RV32Zicond_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZKND
        `cover_info("//      RV32Zknd - Enabled");
        `include "RV32Zknd_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZKNE
        `cover_info("//      RV32Zkne - Enabled");
        `include "RV32Zkne_coverage_init.svh"
    `endif

    `ifdef COVER_RV32ZKNH
        `cover_info("//      RV32Zknh - Enabled");
        `include "RV32Zknh_coverage_init.svh"
    `endif

    `ifdef COVER_RV64D
        `cover_info("//      RV64D - Enabled");
        `include "RV64D_coverage_init.svh"
    `endif

    `ifdef COVER_RV64F
        `cover_info("//      RV64F - Enabled");
        `include "RV64F_coverage_init.svh"
    `endif

    `ifdef COVER_RV64F_BACKUP
        `cover_info("//      RV64F_BACKUP - Enabled");
        `include "RV64F_BACKUP_coverage_init.svh"
    `endif

    `ifdef COVER_RV64I
        `cover_info("//      RV64I - Enabled");
        `include "RV64I_coverage_init.svh"
    `endif

    `ifdef COVER_RV64M
        `cover_info("//      RV64M - Enabled");
        `include "RV64M_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZAAMO
        `cover_info("//      RV64Zaamo - Enabled");
        `include "RV64Zaamo_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZALRSC
        `cover_info("//      RV64Zalrsc - Enabled");
        `include "RV64Zalrsc_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBA
        `cover_info("//      RV64Zba - Enabled");
        `include "RV64Zba_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBB
        `cover_info("//      RV64Zbb - Enabled");
        `include "RV64Zbb_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBC
        `cover_info("//      RV64Zbc - Enabled");
        `include "RV64Zbc_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBKB
        `cover_info("//      RV64Zbkb - Enabled");
        `include "RV64Zbkb_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBKC
        `cover_info("//      RV64Zbkc - Enabled");
        `include "RV64Zbkc_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBKX
        `cover_info("//      RV64Zbkx - Enabled");
        `include "RV64Zbkx_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZBS
        `cover_info("//      RV64Zbs - Enabled");
        `include "RV64Zbs_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCA
        `cover_info("//      RV64Zca - Enabled");
        `include "RV64Zca_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCAZICSR
        `cover_info("//      RV64ZcaZicsr - Enabled");
        `include "RV64ZcaZicsr_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCB
        `cover_info("//      RV64Zcb - Enabled");
        `include "RV64Zcb_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCBM
        `cover_info("//      RV64ZcbM - Enabled");
        `include "RV64ZcbM_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCBZBA
        `cover_info("//      RV64ZcbZba - Enabled");
        `include "RV64ZcbZba_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCBZBB
        `cover_info("//      RV64ZcbZbb - Enabled");
        `include "RV64ZcbZbb_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCD
        `cover_info("//      RV64Zcd - Enabled");
        `include "RV64Zcd_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZCF
        `cover_info("//      RV64Zcf - Enabled");
        `include "RV64Zcf_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZFAD
        `cover_info("//      RV64ZfaD - Enabled");
        `include "RV64ZfaD_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZFAF
        `cover_info("//      RV64ZfaF - Enabled");
        `include "RV64ZfaF_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZFAZFH
        `cover_info("//      RV64ZfaZfh - Enabled");
        `include "RV64ZfaZfh_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZFH
        `cover_info("//      RV64Zfh - Enabled");
        `include "RV64Zfh_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZFHD
        `cover_info("//      RV64ZfhD - Enabled");
        `include "RV64ZfhD_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZICOND
        `cover_info("//      RV64Zicond - Enabled");
        `include "RV64Zicond_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZKND
        `cover_info("//      RV64Zknd - Enabled");
        `include "RV64Zknd_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZKNE
        `cover_info("//      RV64Zkne - Enabled");
        `include "RV64Zkne_coverage_init.svh"
    `endif

    `ifdef COVER_RV64ZKNH
        `cover_info("//      RV64Zknh - Enabled");
        `include "RV64Zknh_coverage_init.svh"
    `endif

   `ifdef COVER_RV64VM
        `cover_info("//      RV64VM - Enabled");
       `include "RV64VM_coverage_init.svh"
   `endif
 
   `ifdef COVER_RV64VM_PMP
        `cover_info("//      RV64VM_PMP - Enabled");
       `include "RV64VM_PMP_coverage_init.svh"
   `endif
 
   `ifdef COVER_RV64ZICBOM
        `cover_info("//      RV64Zicbom - Enabled");
       `include "RV64Zicbom_coverage_init.svh"
   `endif
 
   `ifdef COVER_RV64CBO_PMP
        `cover_info("//      RV64CBO_PMP - Enabled");
       `include "RV64CBO_PMP_coverage_init.svh"
   `endif
 
   `ifdef COVER_RV64CBO_VM
        `cover_info("//      RV64CBO_VM - Enabled");
       `include "RV64CBO_VM_coverage_init.svh"
   `endif
 
