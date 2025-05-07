///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Collection Driver
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
// Written: Jordan Carlin jcarlin@hmc.edu February 2024
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file
// except in compliance with the License, or, at your option, the Apache License version 2.0. You
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied. See the License for the specific language governing permissions
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

// Load which extensions are supported in this configuration (from $WALLY/config/<config>/coverage.svh)
`include "coverage.svh"

// Load disassembler
`include "disassemble.svh"

// Load the coverage classes
`include "RISCV_coverage.svh"

module cvw_arch_verif(rvviTrace rvvi);
  string disass;

  // Connect coverage class to RVVI trace interface
  coverage #(rvvi.ILEN, rvvi.XLEN, rvvi.FLEN, rvvi.VLEN, rvvi.NHART, rvvi.RETIRE) riscvISACOV;

  initial begin
    riscvISACOV = new(rvvi);
    $display("cvw_arch_verif: coverage initialized");
  end

  // Invoke the riscvISACOV sample function on each clock edge for the current instruction.
  // If RVVI accepts more than one instruction or hart, iterate over all of them in the
  // correct order of retirement (TODO: multiple instructions/harts not implemented)
  always_ff @(posedge rvvi.clk) begin
    if (rvvi.valid[0][0] == 1) begin
      disass = disassemble(rvvi.insn[0][0]);
      riscvISACOV.sample(rvvi.trap[0][0], 0, 0, disass);
      `ifdef FCOV_VERBOSE
        $display("cvw_arch_verif: sample taken for PC 0x%h instruction %s", rvvi.pc_rdata[0][0], disass);
      `endif
    end
  end

  // Check assertion coverage
  `include "RV_Assertions.sv"
endmodule
