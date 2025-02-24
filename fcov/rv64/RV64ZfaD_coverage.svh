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

`define COVER_RV64ZFAD
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zfad_t;


covergroup fcvtmod_w_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fcvtmod.w.d";
    cp_asm_count : coverpoint ins.ins_str == "fcvtmod.w.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fleq_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fleq.d";
    cp_asm_count : coverpoint ins.ins_str == "fleq.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rd_boolean : coverpoint longint'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Boolean Values";
        bins zero  = {0};
        bins one  = {1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fli_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fli.d";
    cp_asm_count : coverpoint ins.ins_str == "fli.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup fltq_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fltq.d";
    cp_asm_count : coverpoint ins.ins_str == "fltq.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_rd : coverpoint ins.get_gpr_reg(ins.current.rd)  iff (ins.trap == 0 )  {
        option.comment = "RD register assignment";
    }
    cp_rd_boolean : coverpoint longint'(ins.current.rd_val)  iff (ins.trap == 0 )  {
        option.comment = "RD Boolean Values";
        bins zero  = {0};
        bins one  = {1};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmaxm_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fmaxm.d";
    cp_asm_count : coverpoint ins.ins_str == "fmaxm.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fminm_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fminm.d";
    cp_asm_count : coverpoint ins.ins_str == "fminm.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_fs2_corners_D : coverpoint unsigned'(ins.current.fs2_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cr_fs1_fs2_corners_D : cross cp_fs1_corners_D,cp_fs2_corners_D  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2 (double precision)";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fround_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "fround.d";
    cp_asm_count : coverpoint ins.ins_str == "fround.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_v : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

covergroup froundnx_d_cg with function sample(ins_rv64zfad_t ins);
    option.per_instance = 1; 
    option.comment = "froundnx.d";
    cp_asm_count : coverpoint ins.ins_str == "froundnx.d"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    cp_fpr_hazard : coverpoint check_fpr_hazards(ins.hart, ins.issue)  iff (ins.trap == 0 )  {
        option.comment = "FPR Hazard";
        bins hazards[]  = {NO_HAZARD, RAW_HAZARD, WAR_HAZARD, WAW_HAZARD};
    }
    cmp_fd_fs1 : coverpoint ins.current.fd == ins.current.fs1  iff (ins.trap == 0 )  {
        option.comment = "FD and FS1 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cmp_fd_fs2 : coverpoint ins.current.fd == ins.current.fs2  iff (ins.trap == 0 )  {
        option.comment = "FD and FS2 register (assignment) WAR Hazard";
        bins f0  = {1} iff (ins.current.fd == "f0");
        bins f1  = {1} iff (ins.current.fd == "f1");
        bins f2  = {1} iff (ins.current.fd == "f2");
        bins f3  = {1} iff (ins.current.fd == "f3");
        bins f4  = {1} iff (ins.current.fd == "f4");
        bins f5  = {1} iff (ins.current.fd == "f5");
        bins f6  = {1} iff (ins.current.fd == "f6");
        bins f7  = {1} iff (ins.current.fd == "f7");
        bins f8  = {1} iff (ins.current.fd == "f8");
        bins f9  = {1} iff (ins.current.fd == "f9");
        bins f10  = {1} iff (ins.current.fd == "f10");
        bins f11  = {1} iff (ins.current.fd == "f11");
        bins f12  = {1} iff (ins.current.fd == "f12");
        bins f13  = {1} iff (ins.current.fd == "f13");
        bins f14  = {1} iff (ins.current.fd == "f14");
        bins f15  = {1} iff (ins.current.fd == "f15");
        bins f16  = {1} iff (ins.current.fd == "f16");
        bins f17  = {1} iff (ins.current.fd == "f17");
        bins f18  = {1} iff (ins.current.fd == "f18");
        bins f19  = {1} iff (ins.current.fd == "f19");
        bins f20  = {1} iff (ins.current.fd == "f20");
        bins f21  = {1} iff (ins.current.fd == "f21");
        bins f22  = {1} iff (ins.current.fd == "f22");
        bins f23  = {1} iff (ins.current.fd == "f23");
        bins f24  = {1} iff (ins.current.fd == "f24");
        bins f25  = {1} iff (ins.current.fd == "f25");
        bins f26  = {1} iff (ins.current.fd == "f26");
        bins f27  = {1} iff (ins.current.fd == "f27");
        bins f28  = {1} iff (ins.current.fd == "f28");
        bins f29  = {1} iff (ins.current.fd == "f29");
        bins f30  = {1} iff (ins.current.fd == "f30");
        bins f31  = {1} iff (ins.current.fd == "f31");
    }
    cp_csr_fflags_vn : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "fflags") iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.fflags";
        wildcard bins NV  = {5'b1????};
        wildcard bins NX  = {5'b????1};
    }
    cp_csr_frm : coverpoint get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "fcsr", "frm")  iff (ins.trap == 0 )  {
        option.comment = "Value of FCSR.frm";
        bins rne  = {3'b000};
        bins rtz  = {3'b001};
        bins rdn  = {3'b010};
        bins rup  = {3'b011};
        bins rmm  = {3'b100};
        bins illegal  = default;
    }
    cp_fs1_corners_D : coverpoint unsigned'(ins.current.fs1_val[63:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners (Double Precision)";
        bins pos0             = {64'h0000000000000000};
        bins neg0             = {64'h8000000000000000};
        bins pos1             = {64'h3FF0000000000000};
        bins neg1             = {64'hBFF0000000000000};
        bins pos1p5           = {64'h3FF8000000000000};
        bins neg1p5           = {64'hBFF8000000000000};
        bins pos2             = {64'h4000000000000000};
        bins neg2             = {64'hc000000000000000};
        bins posminnorm       = {64'h0010000000000000};
        bins mnegminnorm      = {64'h8010000000000000};
        bins posmaxnorm       = {64'h7FEFFFFFFFFFFFFF};
        bins negmaxnorm       = {64'hFFEFFFFFFFFFFFFF};
        bins posmax_subnorm   = {64'h000FFFFFFFFFFFFF};
        bins negmax_subnorm   = {64'h800FFFFFFFFFFFFF};
        bins posmid_subnorm   = {64'h0008000000000000};
        bins negmid_subnorm   = {64'h8008000000000000};
        bins posmin_subnorm   = {64'h0000000000000001};
        bins negmin_subnorm   = {64'h8000000000000001};
        bins posinfinity      = {64'h7FF0000000000000};
        bins neginfinity      = {64'hFFF0000000000000};
        bins posQNaN          = {[64'h7FF8000000000000:64'h7FFFFFFFFFFFFFFF]};
        bins posSNaN          = {[64'h7FF0000000000001:64'h7FF7FFFFFFFFFFFF]};
        bins posrandom        = {64'h5A392534A57711AD};
        bins negrandom        = {64'hA6E895993737426C};
    }
    cp_frm_2 : coverpoint get_frm(ins.ops[2].val)  iff (ins.trap == 0 )  {
        option.comment = "Floating-point rounding mode in instruction";
    }
    cp_fd : coverpoint ins.get_fpr_reg(ins.current.fd)  iff (ins.trap == 0 )  {
        option.comment = "FD register assignment";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
endgroup

function void rv64zfad_sample(int hart, int issue);
    ins_rv64zfad_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "fcvtmod.w.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            fcvtmod_w_d_cg.sample(ins); 
        end
        "fleq.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fleq_d_cg.sample(ins); 
        end
        "fli.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fli_d_cg.sample(ins); 
        end
        "fltq.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fltq_d_cg.sample(ins); 
        end
        "fmaxm.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmaxm_d_cg.sample(ins); 
        end
        "fminm.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fminm_d_cg.sample(ins); 
        end
        "fround.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fround_d_cg.sample(ins); 
        end
        "froundnx.d"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            froundnx_d_cg.sample(ins); 
        end
    endcase
endfunction
