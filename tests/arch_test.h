//including this file so lockstep can still work once macros are incorporated into cvw-arch-test
//This file in riscv-arch-test defines macros
//currently defining all macros in arch_test.h as nothing

//macros found in testgen_header.S
#define RVTEST_ISA(isa);
#define RVMODEL_BOOT;
#define RVTEST_CODE_BEGIN;
#define RVTEST_CASE(_PNAME,_DSTR,...); //CHECK THIS
#define RVTEST_SIGBASE( _R,_TAG);

//macros found in testgen_footer.S
#define RVTEST_CODE_END;
#define RVMODEL_HALT;
#define RVTEST_DATA_BEGIN;
#define RVTEST_DATA_END;
#define RVMODEL_DATA_BEGIN;
#define CANARY;
#define RVMODEL_DATA_END;


//macros found in testgen.py
#define RVTEST_SIGUPD(_BR,_R,...);// change this later
#define CHK_OFFSET(_BREG, _SZ, _PRE_INC);