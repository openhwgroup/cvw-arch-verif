///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
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

module RV_Assertions;

  sequence mcounteren_write_one_m_mode;
    @(rvvi.valid) rvvi.insn[0][0][6:0] == 7'b1110011 && rvvi.insn[0][0][14:12] == 3'b001 && rvvi.insn[0][0][31:20] == 12'h306 && rvvi.mode[0][0] == 2'b11 && rvvi.x_wdata[0][0][rvvi.insn[0][0][19:15]] == 1;
  endsequence

  sequence mcounteren_read_zero_u_mode;
    @(rvvi.valid) rvvi.insn[0][0][6:0] == 7'b1110011 && rvvi.insn[0][0][14:12] == (3'b010 || 3'b011) && rvvi.insn[0][0][31:20] == 12'h306 && rvvi.mode[0][0] == 2'b00 && rvvi.x_wdata[0][0][rvvi.insn[0][0][19:15]] == 0 && rvvi.x_wdata[0][0][rvvi.insn[0][0][11:7]] == 0;
  endsequence

  property mcounteren_RAW;
    @(rvvi.valid) disable iff (rvvi.insn[0][0][6:0] == 7'b1110011 && rvvi.insn[0][0][14:12] == 3'b001 && rvvi.insn[0][0][31:20] == 12'h306 && rvvi.x_wdata[0][0][rvvi.insn[0][0][19:15]] != 1)
    mcounteren_write_one_m_mode |-> ##[1:$] mcounteren_read_zero_u_mode;
  endproperty

  cover property (mcounteren_RAW);

endmodule
