//
// Copyright (c) 2023 Imperas Software Ltd., www.imperas.com
// Created June 3rd 2025, James Kaden Cassidy jacassidy@hmc.edu
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
// either express or implied.
//
// See the License for the specific language governing permissions and
// limitations under the License.
//
//

function int get_vlmax(int hart, int issue, int prev);

    int vlen = get_csr_val(hart, issue, prev, "vlenb", "vlenb") * 8;
    int vlen_div_sew;
    int vlmax;

    case (get_csr_val(hart, issue, prev, "vtype", "vsew")[1:0])
        2'b00: vlen_div_sew = vlen / 8;
        2'b01: vlen_div_sew = vlen / 16;
        2'b10: vlen_div_sew = vlen / 32;
        2'b11: vlen_div_sew = vlen / 64;
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax sew is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vsew"));
            $finish(-1);
        end
    endcase

    case (get_csr_val(hart, issue, prev, "vtype", "vlmul")[2:0])
        3'b000: vlmax = vlen_div_sew;
        3'b001: vlmax = vlen_div_sew * 2;
        3'b010: vlmax = vlen_div_sew * 4;
        3'b011: vlmax = vlen_div_sew * 8;
        3'b101: vlmax = vlen_div_sew / 8; // 1/8
        3'b110: vlmax = vlen_div_sew / 4; // 1/4
        3'b111: vlmax = vlen_div_sew / 2; // 1/2
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax lmul is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vlmul"));
            $finish(-1);
        end
    endcase

    return vlmax;

endfunction


typedef enum {
    vs_zero, //     = {(`SEW){1'b0}},
    vs_one, //      = {(`SEW-1){1'b0}, {1'b1}},
    vs_two, //      = {(`SEW-2){1'b0}, {2'b10}},
    vs_min, //      = {{1'b1}, (`SEW-1){1'b0}},
    vs_minp1, //    = {{1'b1}, (`SEW-2){1'b0}, {1'b1}},
    vs_max, //      = {{1'b0}, (`SEW-1){1'b1}},
    vs_maxm1, //    = {{1'b0}, (`SEW-2){1'b1}, {1'b0}},
    vs_ones, //     = {(`SEW){1'b1}},
    vs_onesm1, //   = {(`SEW-1){1'b1}, {1'b0}},
    vs_walkeodd, // = {(`SEW/2){2'b10}},
    vs_walkeven, // = {(`SEW/2){2'b01}},
    vs_random
} corner_vs_values_t;

// Check for vector operand corner values, assuming vl = 1
function corner_vs_values_t vs_corners_check(int hart, int issue, `VLEN_BITS val, string sew_multiplier);
  `XLEN_BITS vsew = get_csr_val(hart, issue, `SAMPLE_BEFORE, "vtype", "vsew");
  int sew = 2 ** (3 + unsigned'(vsew[2:0]));
  int eew;

  case (sew_multiplier)
    "1":     eew = sew;
    "2":     eew = 2 * sew;
    "4":     eew = 4 * sew;
    "8":     eew = 8 * sew;
    "f2":    eew = sew / 2;
    "f4":    eew = sew / 4;
    "f8":    eew = sew / 8;
    "m":     eew = 1;
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported SEW multiplier: %s", sew_multiplier);
      $finish(-1);
    end
  endcase

  case (eew)
    1:   return vs_corners_check_eew_1(val);
    8:   return vs_corners_check_eew_8(val);
    `ifdef SEW16_SUPPORTED
    16:  return vs_corners_check_eew_16(val);
    `endif
    `ifdef SEW32_SUPPORTED
    32:  return vs_corners_check_eew_32(val);
    `endif
    `ifdef SEW64_SUPPORTED
    64:  return vs_corners_check_eew_64(val);
    `endif
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported EEW: %s", eew);
      $finish(-1);
    end
  endcase
endfunction

function corner_vs_values_t vs_corners_check_eew_1(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-1){1'b?}}, {1'b1}}:  return vs_one;
    default:                      return vs_zero;
  endcase
endfunction

function corner_vs_values_t vs_corners_check_eew_8(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-8){1'b?}},         {(8){1'b0}}}:            return vs_zero;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b0}}, {1'b1}}:  return vs_one;
    {{(`VLEN-8){1'b?}},         {(8-2){1'b0}}, {2'b10}}: return vs_two;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-1){1'b0}}}:          return vs_min;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-2){1'b0}}, {1'b1}}:  return vs_minp1;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-1){1'b1}}}        :  return vs_max;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-2){1'b1}}, {1'b0}}:  return vs_maxm1;
    {{(`VLEN-8){1'b?}},         {(8){1'b1}}}:            return vs_ones;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b1}}, {1'b0}}:  return vs_onesm1;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b10}}}:         return vs_walkeodd;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b01}}}:         return vs_walkeven;
    default:                                             return vs_random;
  endcase
endfunction

`ifdef SEW16_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_16(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-16){1'b?}},         {(16){1'b0}}}:            return vs_zero;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b0}}, {1'b1}}:  return vs_one;
    {{(`VLEN-16){1'b?}},         {(16-2){1'b0}}, {2'b10}}: return vs_two;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-1){1'b0}}}:          return vs_min;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-2){1'b0}}, {1'b1}}:  return vs_minp1;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-1){1'b1}}}        :  return vs_max;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-2){1'b1}}, {1'b0}}:  return vs_maxm1;
    {{(`VLEN-16){1'b?}},         {(16){1'b1}}}:            return vs_ones;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b1}}, {1'b0}}:  return vs_onesm1;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b10}}}:         return vs_walkeodd;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b01}}}:         return vs_walkeven;
    default:                                               return vs_random;
  endcase
endfunction
`endif
`ifdef SEW32_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_32(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-32){1'b?}},         {(32){1'b0}}}:            return vs_zero;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b0}}, {1'b1}}:  return vs_one;
    {{(`VLEN-32){1'b?}},         {(32-2){1'b0}}, {2'b10}}: return vs_two;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-1){1'b0}}}:          return vs_min;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-2){1'b0}}, {1'b1}}:  return vs_minp1;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-1){1'b1}}}        :  return vs_max;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-2){1'b1}}, {1'b0}}:  return vs_maxm1;
    {{(`VLEN-32){1'b?}},         {(32){1'b1}}}:            return vs_ones;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b1}}, {1'b0}}:  return vs_onesm1;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b10}}}:         return vs_walkeodd;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b01}}}:         return vs_walkeven;
    default:                                               return vs_random;
  endcase
endfunction
`endif
`ifdef SEW64_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_64(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-64){1'b?}},         {(64){1'b0}}}:            return vs_zero;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b0}}, {1'b1}}:  return vs_one;
    {{(`VLEN-64){1'b?}},         {(64-2){1'b0}}, {2'b10}}: return vs_two;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-1){1'b0}}}:          return vs_min;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-2){1'b0}}, {1'b1}}:  return vs_minp1;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-1){1'b1}}}        :  return vs_max;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-2){1'b1}}, {1'b0}}:  return vs_maxm1;
    {{(`VLEN-64){1'b?}},         {(64){1'b1}}}:            return vs_ones;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b1}}, {1'b0}}:  return vs_onesm1;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b10}}}:         return vs_walkeodd;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b01}}}:         return vs_walkeven;
    default:                                               return vs_random;
  endcase
endfunction
`endif

function logic[63:0] get_vr_element_zero(hart, issue, `VLEN_BITS val);
    `XLEN_BITS vsew = get_csr_val(hart, issue, `SAMPLE_BEFORE, "vtype", "vsew");

    case (vsew)
    2'b00:   return {56'b0, val[7:0]};
    `ifdef SEW16_SUPPORTED
    2'b01:  return {48'b0, val[15:0]};
    `endif
    `ifdef SEW32_SUPPORTED
    2'b10:  return {32'b0, val[31:0]};
    `endif
    `ifdef SEW64_SUPPORTED
    2'b11:  return val[63:0];
    `endif
    default: begin
      $display("ERROR: SystemVerilog Functional Coverage: Unsupported SEW: %s", vsew);
      $finish(-1);
    end
  endcase

endfunction


typedef enum {
    mask_zero,
    mask_ones,
    mask_walkeodd,
    mask_walkeven,
    mask_vlmaxm1ones,
    mask_vlmaxd2p1ones,
    mask_random
} corner_mask_values_t;

// Check for vector operand corner values, assuming vl = 1
function corner_mask_values_t mask_corners_check(hart, issue, `VLEN_BITS mask_val);
  int vlmax = get_vlmax(hart, issue, `SAMPLE_BEFORE);
  $display("mask_val: %h", mask_val);
  $display("mask_one: %h", ((2 ** (vlmax)) - 1) * 2 / 3);

  if      (mask_val == 0) return mask_zero;
  else if (mask_val == ((2 ** (vlmax)) - 1)) return mask_ones;
  else if (mask_val == ((2 ** (vlmax)) - 1) * 2/ 3) return mask_walkeodd;
  else if (mask_val == ((2 ** (vlmax)) - 1) / 3) return mask_walkeven;
  else if (mask_val == ((2 ** (vlmax-1)) - 1)) return mask_vlmaxm1ones;
  else if (mask_val == ((2 ** (vlmax/2+1)) - 1)) return mask_vlmaxd2p1ones;
  else                                                                    return mask_random;

endfunction

// typedef enum {
//   vstart_two,
//   vstart_vlmaxd2p1,
//   vstart_vlmaxm1,
//   vstart_random,
//   vstart_other // default case to prevent illegal
// } vstart_t;

// function vstart_t vstart_check();
//   `XLEN_BITS vstart = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart");
//   int vlmax = get_current_vlmax(ins.hart, ins.issue);
//   bit legal;
//   if (vstart < vlmax-1) legal = 1'b1; // check legal condition
//   else                  legal = 1'b0;

//   case(vstart)
//     2:         return vstart_two;
//     vlmax/2+1: return vstart_vlmaxd2p1;
//     vlmax-1:   return vstart_vlmaxm1;
//     default: begin
//       if (legal) return vstart_random;
//       else       return vstart_other;
//     end
//   endcase
// endfunction


// typedef enum {
//   vl_zero,
//   vl_one,
//   vl_vlmax,
//   vl_vlmaxm1,
//   vl_vlmaxd2p1,
//   vl_legal,
//   vl_other
// } vl_t;

// function vl_t vl_check();
//   `XLEN_BITS vl = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl");
//   `XLEN_BITS vstart = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart");
//   int vlmax = get_current_vlmax(ins.hart, ins.issue);
//   bit legal;
//   if (vl <= vlmax & vl > vstart) legal = 1'b1; // check legal condition
//   else             legal = 1'b0;

//   case(vl)
//     0:         return vl_zero;
//     1:         return vl_one;
//     vlmax/2+1: return vl_vlmaxd2p1;
//     vlmax-1:   return vl_vlmaxm1;
//     vlmax:     return vl_vlmax;
//     default: begin
//       if (legal) return vl_legal;
//       else       return vl_other;
//     end
//   endcase
// endfunction
