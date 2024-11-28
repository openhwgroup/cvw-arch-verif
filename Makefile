# General Make configuration
.SECONDEXPANSION:
.SUFFIXES:
MAKEFLAGS += --no-print-directory

# Directories and extensions
TESTDIR		 := tests
SRCDIR64   := $(TESTDIR)/rv64
SRCDIR32   := $(TESTDIR)/rv32
PRIVDIR    := $(TESTDIR)/priv
PRIVDIR64  := $(PRIVDIR)/rv64
PRIVDIR32  := $(PRIVDIR)/rv32
WORK       := work
SRCEXT     := S
OBJEXT     := elf

# Dynamically find all source files
UNPRIV_SOURCES  = $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
PRIVSOURCES     = $(shell find $(PRIVDIR) -type f -regex ".**\.$(SRCEXT)" | sort)
RV32PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR32)/%)
RV32PRIVOBJECTS = $(RV32PRIV:.$(SRCEXT)=.$(OBJEXT))
RV64PRIV        = $(PRIVSOURCES:$(PRIVDIR)/%=$(PRIVDIR64)/%)
RV64PRIVOBJECTS = $(RV64PRIV:.$(SRCEXT)=.$(OBJEXT))
PRIVOBJECTS     = $(RV32PRIVOBJECTS) $(RV64PRIVOBJECTS)
UNPRIVOBJECTS   = $(UNPRIV_SOURCES:.$(SRCEXT)=.$(OBJEXT))

.PHONY: all clean sim merge covergroupgen testgen unpriv priv

# Main targets
all: unpriv priv

unpriv: testgen
	$(MAKE) $(UNPRIVOBJECTS)

priv: $(PRIVOBJECTS)

# Test generation scripts
covergroupgen: bin/covergroupgen.py
	bin/covergroupgen.py

testgen: covergroupgen bin/testgen.py bin/combinetests.py
	bin/testgen.py
	bin/combinetests.py

$(PRIVDIR)/Zicsr-CSR-Tests.h: bin/csrtests.py
	bin/csrtests.py

# Some instructions get silently converted to 16-bit, this allows only Zc* instr to get converted to 16-bit 
ZCA_FLAG = $(if $(findstring /Zca, $(dir $<)),_zca,)
ZCB_FLAG = $(if $(findstring /Zcb, $(dir $<)),_zcb,)
ZCD_FLAG = $(if $(findstring /Zcd, $(dir $<)),_zcd,)
ZCF_FLAG = $(if $(findstring /Zcf, $(dir $<)),_zcf,)
CMPR_FLAGS = $(ZCA_FLAG)$(ZCB_FLAG)$(ZCD_FLAG)$(ZCF_FLAG)

# Set bitwidth and ABI based on XLEN for each test
BITWIDTH = $(if $(findstring 64,$*),64,32)
MABI = $(if $(findstring 32,$*),i,)lp$(BITWIDTH)

# Modify source file for priv tests to support 32-bit and 64-bit tests from the same source
SOURCEFILE = $(subst priv/rv64/,priv/,$(subst priv/rv32/,priv/,$*)).S
EXTRADEPS  = $(if $(findstring priv,$*),$(PRIVDIR)/Zicsr-CSR-Tests.h $(PRIVDIR$(BITWIDTH)))

# Don't delete intermediate files
.PRECIOUS: %.elf %.elf.objdump %.elf.memfile

# Compile tests
%.elf: $$(SOURCEFILE) $$(EXTRADEPS)
	riscv64-unknown-elf-gcc -g -o $@ -march=rv$(BITWIDTH)g$(CMPR_FLAGS)_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond -mabi=$(MABI) -mcmodel=medany \
    -nostartfiles -I$(TESTDIR) -T$(TESTDIR)/link.ld $<
	$(MAKE) $@.objdump $@.memfile

%.elf.objdump: %.elf
	riscv64-unknown-elf-objdump -S -D $< > $@
	extractFunctionRadix.sh $@

%.elf.memfile: %.elf
	riscv64-unknown-elf-elf2hex --bit-width $(BITWIDTH) --input $< --output $@

# Run tests while collecting functional coverage
sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	#wsim rv32gc $(TESTDIR)/priv/rv32/ZicsrM.elf --fcov
	#wsim rv64gc ${WALLY}/tests/riscof/work/wally-riscv-arch-test/rv64i_m/privilege/src/WALLY-mmu-sv39-svadu-svnapot-svpbmt-01.S/ref/ref.elf --fcov
	wsim rv32gc $(TESTDIR)/rv32/ZfaZfh/WALLY-COV-ALL.elf --fcov
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
	rm -rf fcov/rv32/*
	rm -rf fcov/rv64/*
	rm -rf $(SRCDIR64) $(SRCDIR32) $(PRIVDIR64) $(PRIVDIR32) $(WORK)
	rm -rf tests/priv/*.h
