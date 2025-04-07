//including this file so lockstep can still work once macros are incorporated into cvw-arch-test
//This file in riscv-arch-test defines macros
//currently defining all macros in arch_test.h as nothing

//macros found in testgen_header.S
#define RVTEST_ISA(isa); //check
#define RVMODEL_BOOT; //CHECK MACROS
//#define RVTEST_CODE_BEGIN;
#define RVTEST_CASE(_PNAME,_DSTR,...); //CHECK 
#define RVTEST_SIGBASE( _R,_TAG); //CHECK

//macros found in testgen_footer.S
//#define RVTEST_CODE_END;
#define RVMODEL_HALT; //CHECK
//#define RVTEST_DATA_BEGIN;
//#define RVTEST_DATA_END;
#define RVMODEL_DATA_BEGIN; //CHEKC
#define CANARY; //check
#define RVMODEL_DATA_END; //CHECK



//macros found in testgen.py
#define RVTEST_SIGUPD(_BR,_R,...);// change this later CHECK
#define CHK_OFFSET(_BREG, _SZ, _PRE_INC); //check
#define REGWIDTH   (XLEN>>3)     // in units of #bytes CHECK