// Integer register number to string
function string get_gpr_name(int key);
  case(key)
`ifndef ABI_REG_NAMES
    0: return "x0";
    1: return "x1";
    2: return "x2";
    3: return "x3";
    4: return "x4";
    5: return "x5";
    6: return "x6";
    7: return "x7";
    8: return "x8";
    9: return "x9";
    10: return "x10";
    11: return "x11";
    12: return "x12";
    13: return "x13";
    14: return "x14";
    15: return "x15";
    16: return "x16";
    17: return "x17";
    18: return "x18";
    19: return "x19";
    20: return "x20";
    21: return "x21";
    22: return "x22";
    23: return "x23";
    24: return "x24";
    25: return "x25";
    26: return "x26";
    27: return "x27";
    28: return "x28";
    29: return "x29";
    30: return "x30";
    31: return "x31";
`else
    0: return "zero";
    1: return "ra";
    2: return "sp";
    3: return "gp";
    4: return "tp";
    5: return "t0";
    6: return "t1";
    7: return "t2";
    8: return "s0";
    9: return "s1";
    10: return "a0";
    11: return "a1";
    12: return "a2";
    13: return "a3";
    14: return "a4";
    15: return "a5";
    16: return "a6";
    17: return "a7";
    18: return "s2";
    19: return "s3";
    20: return "s4";
    21: return "s5";
    22: return "s6";
    23: return "s7";
    24: return "s8";
    25: return "s9";
    26: return "s10";
    27: return "s11";
    28: return "t3";
    29: return "t4";
    30: return "t5";
    31: return "t6";
`endif
    default: begin
          $display("ERROR: SystemVerilog Functional Coverage: get_gpr_name(%0s) not found gpr", key);
          $finish(-1);
      end
  endcase
endfunction

// Floating point register number to string
function string get_fpr_name(int key);
  case(key)
    0: return "f0";
    1: return "f1";
    2: return "f2";
    3: return "f3";
    4: return "f4";
    5: return "f5";
    6: return "f6";
    7: return "f7";
    8: return "f8";
    9: return "f9";
    10: return "f10";
    11: return "f11";
    12: return "f12";
    13: return "f13";
    14: return "f14";
    15: return "f15";
    16: return "f16";
    17: return "f17";
    18: return "f18";
    19: return "f19";
    20: return "f20";
    21: return "f21";
    22: return "f22";
    23: return "f23";
    24: return "f24";
    25: return "f25";
    26: return "f26";
    27: return "f27";
    28: return "f28";
    29: return "f29";
    30: return "f30";
    31: return "f31";
    default: begin
          $display("ERROR: SystemVerilog Functional Coverage: get_fpr_name(%0s) not found fpr", key);
          $finish(-1);
      end
  endcase
endfunction

// Compressed integer register number to string
function string get_c_gpr_name(int key);
  case(key)
`ifndef ABI_REG_NAMES
    0: return "x8";
    1: return "x9";
    2: return "x10";
    3: return "x11";
    4: return "x12";
    5: return "x13";
    6: return "x14";
    7: return "x15";
`else
    0: return "s0";
    1: return "s1";
    2: return "a0";
    3: return "a1";
    4: return "a2";
    5: return "a3";
    6: return "a4";
    7: return "a5";
`endif
    default: begin
          $display("ERROR: SystemVerilog Functional Coverage: get_c_gpr_name(%0s) not found compressed gpr", key);
          $finish(-1);
      end
  endcase
endfunction

// Compressed floating point register number to string
function string get_c_fpr_name(int key);
  case(key)
    0: return "f8";
    1: return "f9";
    2: return "f10";
    3: return "f11";
    4: return "f12";
    5: return "f13";
    6: return "f14";
    7: return "f15";
    default: begin
          $display("ERROR: SystemVerilog Functional Coverage: get_c_fpr_name(%0s) not found compressed fpr", key);
          $finish(-1);
      end
  endcase
endfunction

// Floating point rounding mode number to string
function string get_frm_string(int key);
  case(key)
    3'b000: return "rne";
    3'b001: return "rtz";
    3'b010: return "rdn";
    3'b011: return "rup";
    3'b100: return "rmm";
    3'b111: return "dyn";
    default: begin
          $display("ERROR: SystemVerilog Functional Coverage: get_frm_string(%0d) not found frm", key);
          $finish(-1);
      end
  endcase
endfunction

