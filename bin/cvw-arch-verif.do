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
set TESTDIR ${1}
set TESTNAME ${2}
set FCOVDIR ${3}
set TRACEFILE ${TESTDIR}/${TESTNAME}.trace
set UCDB ${TESTDIR}/${TESTNAME}.ucdb
set WKDIR ${TESTDIR}/cov_work
set TB ${FCOVDIR}/testbench.sv

# create library
if [file exists ${WKDIR}] {
    vdel -lib ${WKDIR} -all
}
vlib ${WKDIR}

# compile source files
set COVERAGEFILE ${FCOVDIR}/../../../config/rv64gc
set INC_DIRS "+incdir+${COVERAGEFILE}"
set FCOV_MANIFEST "-f ${FCOVDIR}/cvw-arch-verif.f"
vlog -permissive -lint -work ${WKDIR} {*}${INC_DIRS} {*}${FCOV_MANIFEST} ${TB}

# start and run simulation
vopt ${WKDIR}.testbench -work ${WKDIR} -o testbenchopt
vsim -lib ${WKDIR} testbenchopt +traceFile=${TRACEFILE} -fatal 7

coverage save -onexit ${UCDB}

run -all
quit
