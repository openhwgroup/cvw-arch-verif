all:
	rm -f ${WALLY}/sim/questa/fcov_ucdb/*
	rm -f work/merge.ucdb
	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-addi.elf --fcov2
#	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-add.elf --fcov2
#	wsim rv32gc ${WALLY}/addins/cvw-arch-verif/tests/rv32/I/WALLY-COV-and.elf --fcov2
	cd work && \
	vcover merge merge.ucdb *.ucdb ${WALLY}/sim/questa/fcov_ucdb/*  && \
	vcover report -details -html merge.ucdb && \
	vcover report -output report.txt -details merge.ucdb
