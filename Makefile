# General Make configuration
.SECONDEXPANSION:
.SUFFIXES:
MAKEFLAGS += --no-print-directory

# Directories and extensions
TESTDIR      := tests
LOCKSTEPDIR  := $(TESTDIR)/lockstep
SELFCHECKDIR := $(TESTDIR)/selfchecking
SIGDIR       := $(TESTDIR)/signature
SRCDIR64     := $(LOCKSTEPDIR)/rv64
SRCDIR32     := $(LOCKSTEPDIR)/rv32
SRCSELFCHECKDIR64   := $(SELFCHECKDIR)/rv64
SRCSELFCHECKDIR32   := $(SELFCHECKDIR)/rv32
PRIVDIR        := $(LOCKSTEPDIR)/priv
PRIVHEADERSDIR := $(PRIVDIR)/headers
PRIVDIR64      := $(PRIVDIR)/rv64
PRIVDIR32      := $(PRIVDIR)/rv32
WORK           := work
SRCEXT         := S
OBJEXT         := elf
SIGEXT         := elf.signature

# temporary for faster testing
#SRCDIR64     := $(LOCKSTEPDIR)/rv65
#SRCDIR32     := $(LOCKSTEPDIR)/rv32/I
#PRIVDIR 	:= $(LOCKSTEPDIR)/bogus


# Dynamically find all source files
UNPRIV_SOURCES  = $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
PRIVSOURCES     = $(shell find $(PRIVDIR) -type f -regex ".**\.$(SRCEXT)" | sort)
RV32PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR32)/%)
RV32PRIVOBJECTS = $(RV32PRIV:.$(SRCEXT)=.$(OBJEXT))
RV64PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR64)/%)
RV64PRIVOBJECTS = $(RV64PRIV:.$(SRCEXT)=.$(OBJEXT))
PRIVOBJECTS     = $(RV32PRIVOBJECTS) $(RV64PRIVOBJECTS)
UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(OBJEXT))
#UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(SIGEXT)) # temporarily disable until we need signatures for signature/self-checking
UNPRIVSELFCHECKOBJECTS   = $(UNPRIVSELFCHECK_SOURCES:.$(SRCEXT)=.$(OBJEXT))

# Add headers for priv tests here. They will all be prepended with PRIVHEADERSDIR
# Make sure to add a rule to generate the header file if necessary.
# See $(PRIVHEADERSDIR)/Zicsr-CSR-Tests.h for an example
PRIV_HEADERS  = ZicsrM-CSR-Tests.h ZicsrS-CSR-Tests.h ZicsrU-CSR-Tests.h ExceptionInstr-Tests.h ExceptionInstrCompressed-Tests.h

.PHONY: all clean sim merge covergroupgen testgen unpriv priv

# Main targets
all: unpriv priv

unpriv: testgen
	$(MAKE) $(UNPRIVOBJECTS)

selfcheck: UNPRIVSELFCHECK_SOURCES  = $(shell find $(SRCSELFCHECKDIR32) $(SRCSELFCHECKDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
selfcheck: selfchecking $(UNPRIVSELFCHECK_SOURCES)
	$(MAKE) $(UNPRIVSELFCHECKOBJECTS)

priv: $(PRIVOBJECTS)

# Test generation scripts
covergroupgen: bin/covergroupgen.py
	bin/covergroupgen.py

testgen: covergroupgen bin/testgen.py bin/combinetests.py
	bin/testgen.py
	rm -rf ${LOCKSTEPDIR}/rv32/E ${LOCKSTEPDIR}/rv64/E # E tests are not used in the regular (I) suite
	bin/combinetests.py

selfchecking: bin/makeselfchecking.py # *** maybe add signature directory
	bin/makeselfchecking.py
	rm -f ${SELFCHECKDIR}/*/*/WALLY-COV-ALL.S

$(PRIVHEADERSDIR)/ZicsrM-CSR-Tests.h: bin/csrtests.py | $(PRIVHEADERSDIR)
	bin/csrtests.py
$(PRIVHEADERSDIR)/ZicsrS-CSR-Tests.h: bin/csrtests.py | $(PRIVHEADERSDIR)
	bin/csrtests.py
$(PRIVHEADERSDIR)/ZicsrU-CSR-Tests.h: bin/csrtests.py | $(PRIVHEADERSDIR)
	bin/csrtests.py

$(PRIVHEADERSDIR)/ExceptionInstr-Tests.h $(PRIVHEADERSDIR)/ExceptionInstrCompressed-Tests.h: bin/illegalinstrtests.py | $(PRIVHEADERSDIR)
	bin/illegalinstrtests.py

# This code is added especially for running VM SV32 tests
# Replace --fcov with --lockstepverbose for debugging
SV32DIR := ${WALLY}/tests/riscof/work/riscv-arch-test/rv32i_m/vm_sv32/src
SV32OBJ = $(shell find $(SV32DIR)/*/ref -type f -name "*.$(OBJEXT)" | sort)
# "make get_vm" outputs all the available SV32 tests in cvw-arch-verif/vm_tests.sh and "make vm" runs them
get_vm:
	@rm -f vm_tests.sh
	@for elf in $(SV32OBJ); do \
		echo "wsim rv32gc $$elf --fcov" >> vm_tests.sh; \
	done
vm:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	chmod +x vm_tests.sh
	./vm_tests.sh
	$(MAKE) merge

# This code is added for running PMP32 tests
PMP32DIR := ${WALLY}/tests/riscof/work/riscv-arch-test/rv32i_m/pmp32/src
PMP32OBJ = $(shell find $(PMP32DIR)/*/ref -type f -name "*.$(OBJEXT)" | sort)

PMP64DIR := ${WALLY}/tests/riscof/work/riscv-arch-test/rv64i_m/pmp64/src
PMP64OBJ = $(shell find $(PMP64DIR)/*/ref -type f -name "*.$(OBJEXT)" | sort)

# "make get_pmp" outputs all the available PMP32 tests in cvw-arch-verif/pmp_tests.sh and "make pmp" runs them
get_pmp:
	@rm -f pmp_tests.sh
	@for elf in $(PMP64OBJ); do \
		echo "wsim rv64gc $$elf --fcov" >> pmp_tests.sh; \
	done

get_pmpm:
	@rm -f pmp_tests.sh
	@for elf in $(PMP32OBJ); do \
		echo "wsim rv32gc $$elf --fcov" >> pmpm_tests.sh; \
	done

pmp:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	chmod +x pmpm_tests.sh
	./pmpm_tests.sh
	$(MAKE) merge


# Some instructions get silently converted to 16-bit, this allows only Zc* instr to get converted to 16-bit
ZCA_FLAG = $(if $(findstring /Zca, $(dir $<)),_zca,)
ZCB_FLAG = $(if $(findstring /Zcb, $(dir $<)),_zcb,)
ZCD_FLAG = $(if $(findstring /Zcd, $(dir $<)),_zcd,)
ZCF_FLAG = $(if $(findstring /Zcf, $(dir $<)),_zcf,)
ZCB_ExceptionsZc_FLAG = $(if $(findstring /ExceptionsZc.S,  $<),_zcb_c,)
CMPR_FLAGS = $(ZCA_FLAG)$(ZCB_FLAG)$(ZCD_FLAG)$(ZCF_FLAG)$(ZCB_ExceptionsZc_FLAG)

# Set bitwidth and ABI based on XLEN for each test
BITWIDTH = $(if $(findstring 64,$*),64,32)
MABI = $(if $(findstring 32,$*),i,)lp$(BITWIDTH)
SAIL = riscv_sim_rv$(BITWIDTH)d

# Modify source file for priv tests to support 32-bit and 64-bit tests from the same source
SOURCEFILE = $(subst priv/rv64/,priv/,$(subst priv/rv32/,priv/,$*)).S
PRIV_HEADERS_EXPANDED := $(addprefix $(PRIVHEADERSDIR)/, $(PRIV_HEADERS))
EXTRADEPS  = $(if $(findstring priv,$*),$(PRIV_HEADERS_EXPANDED) $(PRIVDIR$(BITWIDTH)))

# Don't delete intermediate files
.PRECIOUS: %.elf %.elf.objdump %.elf.memfile %.elf.signature

# Compile tests
%.elf: $$(SOURCEFILE) $$(EXTRADEPS)
	riscv64-unknown-elf-gcc -g -o $@ -march=rv$(BITWIDTH)g$(CMPR_FLAGS)_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond_zbkb_zbkx_zknd_zkne_zknh_zihintpause -mabi=$(MABI) -mcmodel=medany \
    -nostartfiles -I$(TESTDIR) -I$(PRIVHEADERSDIR) -T$(TESTDIR)/link.ld -DLOCKSTEP=1 $<
#    -nostartfiles -I$(TESTDIR) -I$(PRIVHEADERSDIR) -T$(TESTDIR)/link.ld -DSIGNATURE=1 $<   # for signature generation
	$(MAKE) $@.objdump $@.memfile
#	$(MAKE) $@.memfile $@.signature # uncomment for signature generation

%.elf.objdump: %.elf
	riscv64-unknown-elf-objdump -S -M numeric -M no-aliases $< > $@

%.elf.memfile: %.elf
	riscv64-unknown-elf-elf2hex --bit-width $(BITWIDTH) --input $< --output $@

%.elf.signature: %.elf
	#echo $< $@
	$(SAIL) $< --enable-zcb -T $@ > $@.log

# Run tests while collecting functional coverage
sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
# Modify the following line to run a specific test
	wsim rv64gc $(LOCKSTEPDIR)/rv64/I/WALLY-COV-ALL-1.elf --fcov --lockstepverbose --define "+define+FCOV_VERBOSE"
	$(MAKE) merge

# Merge coverage files and generate report
merge: $(WORK)
	rm -f work/merge*.ucdb
	bin/coverreport.py

# Create directories
$(SRCDIR64) $(SRCDIR32) $(PRIVDIR) $(PRIVHEADERSDIR) $(PRIVDIR64) $(PRIVDIR32) $(WORK):
	@mkdir -p $@

clean:
	rm -rf fcov/unpriv/*
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVHEADERSDIR) $(PRIVDIR64) $(PRIVDIR32) $(WORK)
	rm -rf $(SELFCHECKDIR)/*
	rm -rf $(SIGDIR)/*



	rm -rf $(SELFCHECKDIR)/*
	rm -rf $(SIGDIR)/*
