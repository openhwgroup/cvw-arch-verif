all:
	${WALLY}/addins/cvw-arch-verif/bin/covergroupgen.py
	${WALLY}/addins/cvw-arch-verif/bin/testgen.py
	make build

sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	rm -f work/merge.ucdb
	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-add.elf --fcov2
#	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-add.elf --fcov2
#	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-and.elf --fcov2
	cd work && \
	vcover merge merge.ucdb *.ucdb ${WALLY}/sim/questa/fcov_ucdb/*  && \
	vcover report -details -html merge.ucdb && \
	vcover report -output report.txt -details merge.ucdb


CEXT		:= c
CPPEXT		:= cpp
AEXT		:= s
SEXT		:= S
SRCEXT 		:= \([$(CEXT)$(AEXT)$(SEXT)]\|$(CPPEXT)\)
#SRCS = $(wildcard *.S)
#PROGS = $(patsubst %.S,%,$(SRCS))
BASEDIR = ${WALLY}/addins/cvw-arch-verif
SRCDIR64 = ${BASEDIR}/tests/rv64/I
SRCDIR32 = ${BASEDIR}/tests/rv32/I
SRCEXT = S
SOURCES		?= $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".*\.$(SRCEXT)" | sort)
OBJEXT = elf
OBJECTS		:= $(SOURCES:.$(SEXT)=.$(OBJEXT))


build: $(OBJECTS)

%.elf.objdump: %.elf

# Change many things if bit width isn't 64
$(SRCDIR64)/%.elf: $(SRCDIR64)/%.$(SEXT) 
	riscv64-unknown-elf-gcc -g -o $@ -march=rv64gqc_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom -mabi=lp64 -mcmodel=medany \
	    -nostartfiles -T${WALLY}/examples/link/link.ld $<
	riscv64-unknown-elf-objdump -S -D $@ > $@.objdump
	riscv64-unknown-elf-elf2hex --bit-width 64 --input $@ --output $@.memfile
	extractFunctionRadix.sh $@.objdump

$(SRCDIR32)/%.elf: $(SRCDIR32)/%.$(SEXT) 
	riscv64-unknown-elf-gcc -g -o $@ -march=rv32gqc_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom -mabi=ilp32 -mcmodel=medany \
	    -nostartfiles -T${WALLY}/examples/link/link.ld $<
	riscv64-unknown-elf-objdump -S -D $@ > $@.objdump
	riscv64-unknown-elf-elf2hex --bit-width 32 --input $@ --output $@.memfile
	extractFunctionRadix.sh $@.objdump

    
clean:
	rm -rf ${BASEDIR}/fcov/rv32/coverage/*
	rm -rf ${BASEDIR}/fcov/rv64/coverage/*
	rm -rf ${BASEDIR}/tests/*
	#rm -f ${SRCDIR}/*.elf ${SRCDIR}/*.objdump ${SRCDIR}/*.addr *${SRCDIR}/.lab ${SRCDIR}/*.memfile



