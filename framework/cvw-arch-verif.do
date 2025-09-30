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
set TRACEFILELIST ${1}
set UCDB ${2}
set WKDIR ${3}
set FCOVDIR ${4}
set COVERPOINTDIR ${5}
set CONFIGDIR ${6}
set COVERAGELIST ${7}

# Create library
if [file exists ${WKDIR}] {
    vdel -lib ${WKDIR} -all
}
vlib ${WKDIR}

# Include directories and files to compile
set COVERPOINTS "+incdir+${COVERPOINTDIR} +incdir+${COVERPOINTDIR}/unpriv +incdir+${COVERPOINTDIR}/priv +incdir+${COVERPOINTDIR}/rv32_priv +incdir+${COVERPOINTDIR}/rv64_priv"
set INC_DIRS "+incdir+${CONFIGDIR} ${COVERPOINTS} +incdir+${FCOVDIR}"
set COMPILE_FILES "${FCOVDIR}/rvviTrace.sv ${FCOVDIR}/cvw_arch_verif.sv ${FCOVDIR}/testbench.sv"

# Build +define+ list from COVERAGELIST (space-separated)
set DEFINE_ARGS {}
foreach def [split ${COVERAGELIST}] {
    if {$def eq ""} { continue }
    lappend DEFINE_ARGS "+define+$def"
}

# Compile
vlog -permissive -lint -work ${WKDIR} {*}${INC_DIRS} {*}${DEFINE_ARGS} {*}${COMPILE_FILES}

# Start and run simulation
vopt ${WKDIR}.testbench -work ${WKDIR} -o testbenchopt
vsim -lib ${WKDIR} testbenchopt +traceFileList=${TRACEFILELIST} -fatal 7

coverage save -onexit ${UCDB}

run -all
quit
