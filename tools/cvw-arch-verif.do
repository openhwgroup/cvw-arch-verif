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
set CONFIGDIR ${5}
set COVERAGELIST ${6}

# create library
if [file exists ${WKDIR}] {
    vdel -lib ${WKDIR} -all
}
vlib ${WKDIR}

# compile source files
set INC_DIRS "+incdir+${CONFIGDIR}"
set FCOV_MANIFEST "-f ${FCOVDIR}/cvw-arch-verif.f"
set TB ${FCOVDIR}/testbench.sv
# Build +define+ list from COVERAGELIST (space-separated)
set DEFINE_ARGS {}
foreach def [split ${COVERAGELIST}] {
    if {$def eq ""} { continue }
    lappend DEFINE_ARGS "+define+$def"
}

puts "Compiling with defines: {*}${DEFINE_ARGS}"

vlog -permissive -lint -work ${WKDIR} {*}${INC_DIRS} {*}${FCOV_MANIFEST} {*}${DEFINE_ARGS} ${TB}

# start and run simulation
vopt ${WKDIR}.testbench -work ${WKDIR} -o testbenchopt
vsim -lib ${WKDIR} testbenchopt +traceFileList=${TRACEFILELIST} -fatal 7

coverage save -onexit ${UCDB}

run -all
quit
