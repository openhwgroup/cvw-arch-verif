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

function get_vlmax(int hart, int issue, int prev);
  return get_vlmax_params(get_csr_val(hart, issue, prev, "vtype", "vsew")[1:0], get_csr_val(hart, issue, prev, "vtype", "vlmul")[2:0]);
endfunction


function get_vlmax_params(logic[1:0] vsew, logic[2:0] vlmul)

    int vlen = get_csr_val(hart, issue, 0, "vlenb", "vlenb") * 8;
    int vlen_times_lmul;
    int vlmax;

    case (vlmul)
        3'b000: vlen_times_lmul = vlen;
        3'b001: vlen_times_lmul = vlen * 2;
        3'b010: vlen_times_lmul = vlen * 4;
        3'b011: vlen_times_lmul = vlen * 8;
        3'b101: vlen_times_lmul = vlen / 8; // 1/8
        3'b110: vlen_times_lmul = vlen / 4; // 1/4
        3'b111: vlen_times_lmul = vlen / 2; // 1/2
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax_params lmul is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vlmul"));
            $finish(-1);
        end
    endcase

    case (vsew)
        2'b00: vlmax = vlen_times_lmul / 8;
        2'b01: vlmax = vlen_times_lmul / 16;
        2'b10: vlmax = vlen_times_lmul / 32;
        2'b11: vlmax = vlen_times_lmul / 64;
        default: begin
            $display("ERROR: SystemVerilog Functional Coverage: get_vlmax_params sew is undefined (%0s)",
                    get_csr_val(hart, issue, prev, "vtype", "vsew"));
            $finish(-1);
        end
    endcase

    return vlmax;

endfunction

function logic check_vtype_sew_supported(`XLEN_BITS vsew);

   `ifdef SEW8_SUPPORTED
    if (sew == 0) return 1'b1;
    `endif
    `ifdef SEW16_SUPPORTED
    if (sew == 1) return 1'b1;
    `endif
    `ifdef SEW32_SUPPORTED
    if (sew == 2) return 1'b1;
    `endif
    `ifdef SEW64_SUPPORTED
    if (sew == 3) return 1'b1;
    `endif

    return 1'b0;
endfunction


typedef enum {
    zero, //     = {(`SEW){1'b0}},
    one, //      = {(`SEW-1){1'b0}, {1'b1}},
    two, //      = {(`SEW-2){1'b0}, {2'b10}},
    min, //      = {{1'b1}, (`SEW-1){1'b0}},
    minp1, //    = {{1'b1}, (`SEW-2){1'b0}, {1'b1}},
    max, //      = {{1'b0}, (`SEW-1){1'b1}},
    maxm1, //    = {{1'b0}, (`SEW-2){1'b1}, {1'b0}},
    ones, //     = {(`SEW){1'b1}},
    onesm1, //   = {(`SEW-1){1'b1}, {1'b0}},
    walkeodd, // = {(`SEW/2){2'b10}},
    walkeven, // = {(`SEW/2){2'b01}},
    random
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
    {{(`VLEN-1){1'b?}}, {1'b1}}:  return one;
    default:                      return zero;
  endcase
endfunction

function corner_vs_values_t vs_corners_check_eew_8(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-8){1'b?}},         {(8){1'b0}}}:            return zero;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-8){1'b?}},         {(8-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-1){1'b0}}}:          return min;
    {{(`VLEN-8){1'b?}}, {1'b1}, {(8-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-1){1'b1}}}        :  return max;
    {{(`VLEN-8){1'b?}}, {1'b0}, {(8-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-8){1'b?}},         {(8){1'b1}}}:            return ones;
    {{(`VLEN-8){1'b?}},         {(8-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-8){1'b?}},         {(8/2){2'b01}}}:         return walkeven;
    default:                                             return random;
  endcase
endfunction

`ifdef SEW16_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_16(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-16){1'b?}},         {(16){1'b0}}}:            return zero;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-16){1'b?}},         {(16-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-1){1'b0}}}:          return min;
    {{(`VLEN-16){1'b?}}, {1'b1}, {(16-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-1){1'b1}}}        :  return max;
    {{(`VLEN-16){1'b?}}, {1'b0}, {(16-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-16){1'b?}},         {(16){1'b1}}}:            return ones;
    {{(`VLEN-16){1'b?}},         {(16-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-16){1'b?}},         {(16/2){2'b01}}}:         return walkeven;
    default:                                               return random;
  endcase
endfunction
`endif
`ifdef SEW32_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_32(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-32){1'b?}},         {(32){1'b0}}}:            return zero;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-32){1'b?}},         {(32-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-1){1'b0}}}:          return min;
    {{(`VLEN-32){1'b?}}, {1'b1}, {(32-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-1){1'b1}}}        :  return max;
    {{(`VLEN-32){1'b?}}, {1'b0}, {(32-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-32){1'b?}},         {(32){1'b1}}}:            return ones;
    {{(`VLEN-32){1'b?}},         {(32-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-32){1'b?}},         {(32/2){2'b01}}}:         return walkeven;
    default:                                               return random;
  endcase
endfunction
`endif
`ifdef SEW64_SUPPORTED
function corner_vs_values_t vs_corners_check_eew_64(`VLEN_BITS val);
  casez (val)
    {{(`VLEN-64){1'b?}},         {(64){1'b0}}}:            return zero;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b0}}, {1'b1}}:  return one;
    {{(`VLEN-64){1'b?}},         {(64-2){1'b0}}, {2'b10}}: return two;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-1){1'b0}}}:          return min;
    {{(`VLEN-64){1'b?}}, {1'b1}, {(64-2){1'b0}}, {1'b1}}:  return minp1;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-1){1'b1}}}        :  return max;
    {{(`VLEN-64){1'b?}}, {1'b0}, {(64-2){1'b1}}, {1'b0}}:  return maxm1;
    {{(`VLEN-64){1'b?}},         {(64){1'b1}}}:            return ones;
    {{(`VLEN-64){1'b?}},         {(64-1){1'b1}}, {1'b0}}:  return onesm1;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b10}}}:         return walkeodd;
    {{(`VLEN-64){1'b?}},         {(64/2){2'b01}}}:         return walkeven;
    default:                                               return random;
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
