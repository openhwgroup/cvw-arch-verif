///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Standard Covergroups
//
// Written: Jordan Carlin jcarlin@hmc.edu 6 March 2025
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore
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

  // Privilege mode coverpoints
  // Uses ins.prev to check mode at end of previous instruction,
  // which is the mode the current instruction begins execution in
  priv_mode_m: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins M_mode = {2'b11};
  }
  priv_mode_s: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins S_mode = {2'b01};
  }
  priv_mode_u: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins U_mode = {2'b00};
  }
  priv_mode_ms: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins M_mode = {2'b11};
    bins S_mode = {2'b01};
  }
  priv_mode_mu: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins M_mode = {2'b11};
    bins U_mode = {2'b00};
  }
  priv_mode_su: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins S_mode = {2'b01};
    bins U_mode = {2'b00};
  }
  priv_mode_msu: coverpoint ins.prev.mode {
    type_option.weight = 0;
    bins M_mode = {2'b11};
    bins S_mode = {2'b01};
    bins U_mode = {2'b00};
  }
