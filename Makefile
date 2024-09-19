all:
	${WALLY}/addins/cvw-arch-verif/bin/covergroupgen.py
	${WALLY}/addins/cvw-arch-verif/bin/testgen.py
	${WALLY}/addins/cvw-arch-verif/bin/combinetests.py
	make -j 8 build

sim:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	#wsim rv64gc ${WALLY}/addins/cvw-arch-verif/tests/rv64/I/WALLY-COV-add.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/Zicond/WALLY-COV-czero.eqz.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/M/WALLY-COV-div.elf --fcov

	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-ALL.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-lui.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-addi.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-lw.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-sw.elf --fcov
	##wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-beq.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-auipc.elf --fcov
	#wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-lui.elf --fcov
	#wsim rv64gc ${WALLY}/addins/cvw-arch-verif/tests/rv64/I/WALLY-COV-add.elf --fcov
	#wsim rv64gc ${WALLY}/addins/cvw-arch-verif/tests/rv64/I/WALLY-COV-addi.elf --fcov
	make merge

merge:
	cd ${WALLY}/addins/cvw-arch-verif && \
	mkdir -p work && \
	rm -f work/merge*.ucdb && \
	bin/coverreport.py 
	
CEXT		:= c
CPPEXT		:= cpp
AEXT		:= s
SEXT		:= S
SRCEXT 		:= \([$(CEXT)$(AEXT)$(SEXT)]\|$(CPPEXT)\)
#SRCS = $(wildcard *.S)
#PROGS = $(patsubst %.S,%,$(SRCS))
BASEDIR = ${WALLY}/addins/cvw-arch-verif
SRCDIR64 = ${BASEDIR}/tests/rv64
SRCDIR32 = ${BASEDIR}/tests/rv32
WALLYEXTS = 	$(shell find ${SRCDIR64} ${SRCDIR32} -type d | sort)
SRCEXT = S
SOURCES		?= $(shell find $(SRCDIR32) $(SRCDIR64) -type f -regex ".**\.$(SRCEXT)" | sort)
OBJEXT = elf
OBJECTS		:= $(SOURCES:.$(SEXT)=.$(OBJEXT))


build: $(OBJECTS)

%.elf.objdump: %.elf

# Change many things if bit width isn't 64
$(SRCDIR64)/%.elf: $(SRCDIR64)/%.$(SEXT) 
	riscv64-unknown-elf-gcc -g -o $@ -march=rv64gqc_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond -mabi=lp64 -mcmodel=medany \
	    -nostartfiles -T${WALLY}/examples/link/link.ld $<
	riscv64-unknown-elf-objdump -S -D $@ > $@.objdump
	riscv64-unknown-elf-elf2hex --bit-width 64 --input $@ --output $@.memfile
	extractFunctionRadix.sh $@.objdump

$(SRCDIR32)/%.elf: $(SRCDIR32)/%.$(SEXT) 
	riscv64-unknown-elf-gcc -g -o $@ -march=rv32gqc_zfa_zba_zbb_zbc_zbs_zfh_zicboz_zicbop_zicbom_zicond -mabi=ilp32 -mcmodel=medany \
	    -nostartfiles -T${WALLY}/examples/link/link.ld $<
	riscv64-unknown-elf-objdump -S -D $@ > $@.objdump
	riscv64-unknown-elf-elf2hex --bit-width 32 --input $@ --output $@.memfile
	extractFunctionRadix.sh $@.objdump

    
clean:
	rm -rf ${BASEDIR}/fcov/rv32/coverage/*
	rm -rf ${BASEDIR}/fcov/rv64/coverage/*
	rm -rf ${BASEDIR}/tests/rv*
	#rm -f ${SRCDIR}/*.elf ${SRCDIR}/*.objdump ${SRCDIR}/*.addr *${SRCDIR}/.lab ${SRCDIR}/*.memfile



