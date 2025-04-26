# General Make configuration
.SECONDEXPANSION:
.SUFFIXES:
MAKEFLAGS += --no-print-directory

# Directories and extensions
TESTDIR        := tests
SRCDIR64       := $(TESTDIR)/rv64
SRCDIR32       := $(TESTDIR)/rv32
PRIVDIR        := $(TESTDIR)/priv
PRIVHEADERSDIR := $(PRIVDIR)/headers
PRIVDIR64      := $(PRIVDIR)/rv64
PRIVDIR32      := $(PRIVDIR)/rv32
WORK           := work
SRCEXT         := S
OBJEXT         := elf
SIGEXT         := elf.signature

# Dynamically find all source files
UNPRIV_SOURCES  = $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
PRIVSOURCES     = $(shell find $(PRIVDIR) -type f -regex ".**\.$(SRCEXT)" | sort)
RV32PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR32)/%)
RV32PRIVOBJECTS = $(RV32PRIV:.$(SRCEXT)=.$(OBJEXT))
RV64PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR64)/%)
RV64PRIVOBJECTS = $(RV64PRIV:.$(SRCEXT)=.$(OBJEXT))
PRIVOBJECTS     = $(RV32PRIVOBJECTS) $(RV64PRIVOBJECTS)
UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(OBJEXT))

.PHONY: all clean sim merge covergroupgen testgen unpriv priv privheaders

# Main targets
all: unpriv priv

unpriv: testgen
	$(MAKE) $(UNPRIVOBJECTS)

priv: privheaders | $(PRIVDIR64) $(PRIVDIR32)
	$(MAKE) $(PRIVOBJECTS)

# Test generation scripts
covergroupgen: bin/covergroupgen.py
	bin/covergroupgen.py

testgen: covergroupgen bin/testgen.py bin/combinetests.py
	bin/testgen.py
	rm -rf ${TESTDIR}/rv32/E ${TESTDIR}/rv64/E # E tests are not used in the regular (I) suite
# bin/combinetests.py

riscv-copy:
	cp -r ${TESTDIR}/rv32/* ${WALLY}/addins/riscv-arch-test/riscv-test-suite/rv32i_m/
	cp -r ${TESTDIR}/rv64/* ${WALLY}/addins/riscv-arch-test/riscv-test-suite/rv64i_m/

riscv-copy-%:
	cp -r ${TESTDIR}/rv32/$* ${WALLY}/addins/riscv-arch-test/riscv-test-suite/rv32i_m/$*
	cp -r ${TESTDIR}/rv64/$* ${WALLY}/addins/riscv-arch-test/riscv-test-suite/rv64i_m/$*

privheaders: bin/csrtests.py bin/illegalinstrtests.py | $(PRIVHEADERSDIR)
	bin/csrtests.py
	bin/illegalinstrtests.py

# Some instructions get silently converted to 16-bit, this allows only Zc* instr to get converted to 16-bit
ZCA_FLAG = $(if $(findstring /Zca, $(dir $<)),_zca,)
ZCB_FLAG = $(if $(findstring /Zcb, $(dir $<)),_zcb,)
ZCD_FLAG = $(if $(findstring /Zcd, $(dir $<)),_zcd,)
ZCF_FLAG = $(if $(findstring /Zcf, $(dir $<)),_zcf,)
EXCEPTIONSZC_FLAG = $(if $(findstring /ExceptionsZc.S,  $<),c_zcb_,)
CMPR_FLAGS = $(EXCEPTIONSZC_FLAG)$(ZCA_FLAG)$(ZCB_FLAG)$(ZCD_FLAG)$(ZCF_FLAG)

# Set bitwidth and ABI based on XLEN for each test
BITWIDTH = $(if $(findstring rv64,$*),64,32)
MABI = $(if $(findstring rv32,$*),i,)lp$(BITWIDTH)

# Modify source file for priv tests to support 32-bit and 64-bit tests from the same source
SOURCEFILE = $(subst priv/rv64/,priv/,$(subst priv/rv32/,priv/,$*)).S

# Don't delete intermediate files
.PRECIOUS: %.elf %.elf.objdump %.elf.memfile %.elf.signature

# Compile tests
%.elf: $$(SOURCEFILE)
	riscv64-unknown-elf-gcc -g -o $@ -march=rv$(BITWIDTH)gv$(CMPR_FLAGS)_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond_zbkb_zbkx_zknd_zkne_zknh_zihintpause -mabi=$(MABI) -mcmodel=medany \
	-nostartfiles -I$(TESTDIR) -I$(PRIVHEADERSDIR) -T$(TESTDIR)/link.ld -DLOCKSTEP=1 -DXLEN=$(BITWIDTH) -DTEST_CASE_1=True $<
	$(MAKE) $@.objdump $@.memfile

%.elf.objdump: %.elf
	riscv64-unknown-elf-objdump -S -D -M numeric -M no-aliases $< > $@

%.elf.memfile: %.elf
	riscv64-unknown-elf-elf2hex --bit-width $(BITWIDTH) --input $< --output $@

# Run tests while collecting functional coverage
sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
# Modify the following line to run a specific test
	wsim rv32gc $(TESTDIR)/rv32/I/WALLY-COV-add.elf --fcov --lockstepverbose --define "+define+FCOV_VERBOSE"

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
