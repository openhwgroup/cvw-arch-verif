####################################################################################
#
# RISC-V Architectural Functional Coverage Testbench
#
# Copyright (C) 2025 Harvey Mudd College, 10x Engineers, UET Lahore
# Written: Jordan Carlin jcarlin@hmc.edu March 2025
#
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file
# except in compliance with the License, or, at your option, the Apache License version 2.0. You
# may obtain a copy of the License at
#
# https://solderpad.org/licenses/SHL-2.1/
#
# Unless required by applicable law or agreed to in writing, any work distributed under the
# License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
# either express or implied. See the License for the specific language governing permissions
# and limitations under the License.
####################################################################################

onbreak {resume}
onerror {quit -f}

# Initialize variables
set TRACEFILE_DIR ${1}
set TRACEFILE_PATH [file split $TRACEFILE_DIR]
set TRACEFILE_SHORT_NAME [string cat [lindex $TRACEFILE_PATH end-1] "/" [lindex $TRACEFILE_PATH end]]
set WKDIR wkdir/${TRACEFILE_SHORT_NAME}
set ARCH_VERIF $::env(CVW_ARCH_VERIF)
set TB ${ARCH_VERIF}/fcov/testbench.sv
set FCRVVI ${ARCH_VERIF}/fcov
set UCDB ${ARCH_VERIF}/fcov_ucdb/${TRACEFILE_SHORT_NAME}/coverage.ucdb

# create library
if [file exists ${WKDIR}] {
    vdel -lib ${WKDIR} -all
}
vlib ${WKDIR}

# compile source files
set INC_DIRS "+incdir+${TRACEFILE_DIR}"
set FCOV_MANIFEST "-f ${FCRVVI}/cvw-arch-verif.f"
vlog -permissive -lint -work ${WKDIR} {*}${INC_DIRS} {*}${FCOV_MANIFEST} ${TB}

# start and run simulation
vopt ${WKDIR}.testbench -work ${WKDIR} -o testbenchopt
vsim -lib ${WKDIR} testbenchopt +traceFile=${TRACEFILE_DIR}/trace.txt -fatal 7

coverage save -onexit ${UCDB}

run -all
quit
