# General Make configuration
.SECONDEXPANSION:
.SUFFIXES:
MAKEFLAGS += --no-print-directory

# Directories and extensions
TESTDIR		 := tests/lockstep
SELFCHECKDIR := tests/selfchecking
SIGDIR       := tests/signature
SRCDIR64   := $(TESTDIR)/rv64
SRCDIR32   := $(TESTDIR)/rv32
SRCSELFCHECKDIR64   := $(SELFCHECKDIR)/rv64
SRCSELFCHECKDIR32   := $(SELFCHECKDIR)/rv32
PRIVDIR    := $(TESTDIR)/priv
PRIVDIR64  := $(PRIVDIR)/rv64
PRIVDIR32  := $(PRIVDIR)/rv32
WORK       := work
SRCEXT     := S
OBJEXT     := elf
SIGEXT     := elf.signature

# Dynamically find all source files
UNPRIV_SOURCES  = $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
PRIVSOURCES     = $(shell find $(PRIVDIR) -type f -regex ".**\.$(SRCEXT)" | sort)
RV32PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR32)/%)
RV32PRIVOBJECTS = $(RV32PRIV:.$(SRCEXT)=.$(OBJEXT))
RV64PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR64)/%)
RV64PRIVOBJECTS = $(RV64PRIV:.$(SRCEXT)=.$(OBJEXT))
PRIVOBJECTS     = $(RV32PRIVOBJECTS) $(RV64PRIVOBJECTS)
#UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(OBJEXT))
UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(SIGEXT))
UNPRIVSELFCHECKOBJECTS   = $(UNPRIVSELFCHECK_SOURCES:.$(SRCEXT)=.$(OBJEXT))

# Add headers for priv tests here. They will all be prepended with PRIVDIR
# Make sure to add a rule to generate the header file if necessary. 
# See $(PRIVDIR)/Zicsr-CSR-Tests.h for an example
PRIV_HEADERS  = Zicsr-CSR-Tests.h ExceptionInstr-Tests.h ExceptionInstrCompressed-Tests.h

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
	rm -rf ${TESTDIR}/rv32/E ${TESTDIR}/rv64/E # E tests are not used in the regular (I) suite
	rm -rf ${TESTDIR}/*/Zaamo ${TESTDIR}/*/Zalrsc # *** these hang Sail; temporarily remove until fixed
	bin/combinetests.py

selfchecking: bin/makeselfchecking.py # *** maybe add signature directory
	bin/makeselfchecking.py
	rm -f ${SELFCHECKDIR}/*/*/WALLY-COV-ALL.S

$(PRIVDIR)/Zicsr-CSR-Tests.h: bin/csrtests.py
	bin/csrtests.py

$(PRIVDIR)/ExceptionInstr-Tests.h $(PRIVDIR)/ExceptionInstrCompressed-Tests.h: bin/illegalinstrtests.py
	bin/illegalinstrtests.py

# This code is added especially for running VM SV32 tests
# Replace --fcov with --lockstepverbose for debugging
SV32DIR := ${WALLY}/tests/riscof/work/riscv-arch-test/rv32i_m/vm_sv32/src
SV32OBJ = $(shell find $(SV32DIR)/*/dut -type f -name "*.$(OBJEXT)" | sort)
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

# Some instructions get silently converted to 16-bit, this allows only Zc* instr to get converted to 16-bit 
ZCA_FLAG = $(if $(findstring /Zca, $(dir $<)),_zca,)
ZCB_FLAG = $(if $(findstring /Zcb, $(dir $<)),_zcb,)
ZCD_FLAG = $(if $(findstring /Zcd, $(dir $<)),_zcd,)
ZCF_FLAG = $(if $(findstring /Zcf, $(dir $<)),_zcf,)
CMPR_FLAGS = $(ZCA_FLAG)$(ZCB_FLAG)$(ZCD_FLAG)$(ZCF_FLAG)

# Set bitwidth and ABI based on XLEN for each test
BITWIDTH = $(if $(findstring 64,$*),64,32)
MABI = $(if $(findstring 32,$*),i,)lp$(BITWIDTH)
SAIL = $(if $(findstring 64, $*),riscv_sim_RV64,riscv_sim_RV32)

# Modify source file for priv tests to support 32-bit and 64-bit tests from the same source
SOURCEFILE = $(subst priv/rv64/,priv/,$(subst priv/rv32/,priv/,$*)).S
PRIV_HEADERS_EXPANDED := $(addprefix $(PRIVDIR)/, $(PRIV_HEADERS))
EXTRADEPS  = $(if $(findstring priv,$*),$(PRIV_HEADERS_EXPANDED) $(PRIVDIR$(BITWIDTH)))

# Don't delete intermediate files
.PRECIOUS: %.elf %.elf.objdump %.elf.memfile %.elf.signature

# Compile tests
%.elf: $$(SOURCEFILE) $$(EXTRADEPS)
	riscv64-unknown-elf-gcc -g -o $@ -march=rv$(BITWIDTH)g$(CMPR_FLAGS)_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond_zbkb_zbkx_zknd_zkne_zknh_zihintpause -mabi=$(MABI) -mcmodel=medany \
    -nostartfiles -I$(TESTDIR) -T$(TESTDIR)/../link.ld $<
	$(MAKE) $@.objdump $@.memfile

%.elf.objdump: %.elf
	riscv64-unknown-elf-objdump -S -D -M numeric -M no-aliases $< > $@

%.elf.memfile: %.elf
	riscv64-unknown-elf-elf2hex --bit-width $(BITWIDTH) --input $< --output $@

%.elf.signature: %.elf
	#echo $< $@
	$(SAIL) $< --enable-zcb -T $@ > $@.log

# Run tests while collecting functional coverage
sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	#wsim rv32gc $(TESTDIR)/priv/rv32/ExceptionsInstr.elf --fcov
	#wsim rv32gc $(TESTDIR)/priv/rv32/ZicsrM.elf --fcov
	#wsim rv64gc ${WALLY}/tests/riscof/work/wally-riscv-arch-test/rv64i_m/privilege/src/WALLY-mmu-sv39-svadu-svnapot-svpbmt-01.S/ref/ref.elf --fcov
	wsim rv64gc $(TESTDIR)/rv64/I/WALLY-COV-ALL.elf --fcov
	#wsim rv64gc $(TESTDIR)/rv64/Zca/WALLY-COV-ALL.elf --fcov
	#wsim rv32gc $(TESTDIR)/rv32/M/WALLY-COV-div.elf --fcov
	$(MAKE) merge

# Merge coverage files and generate report
merge: $(WORK)
	rm -f work/merge*.ucdb
	bin/coverreport.py

# Create directories
$(SRCDIR64) $(SRCDIR32) $(PRIVDIR) $(PRIVDIR64) $(PRIVDIR32) $(WORK):
	@mkdir -p $@

clean:
	rm -rf fcov/unpriv/*
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVDIR64) $(PRIVDIR32) $(WORK)
	rm -rf ${PRIVDIR}/*.h
	rm -rf $(SELFCHECKDIR)/*
	rm -rf $(SIGDIR)/*

