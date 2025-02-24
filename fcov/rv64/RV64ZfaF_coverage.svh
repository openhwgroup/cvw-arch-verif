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

`define COVER_RV64ZFAF
typedef RISCV_instruction #(ILEN, XLEN, FLEN, VLEN, NHART, RETIRE) ins_rv64zfaf_t;


covergroup fleq_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fleq.s";
    cp_asm_count : coverpoint ins.ins_str == "fleq.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cp_fs2_corners : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cr_fs1_fs2_corners : cross cp_fs1_corners,cp_fs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fli_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fli.s";
    cp_asm_count : coverpoint ins.ins_str == "fli.s"  iff (ins.trap == 0 )  {
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

covergroup fltq_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fltq.s";
    cp_asm_count : coverpoint ins.ins_str == "fltq.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cp_fs2_corners : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cr_fs1_fs2_corners : cross cp_fs1_corners,cp_fs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2";
    }
    cp_fs1 : coverpoint ins.get_fpr_reg(ins.current.fs1)  iff (ins.trap == 0 )  {
        option.comment = "FS1 register assignment";
    }
    cp_fs2 : coverpoint ins.get_fpr_reg(ins.current.fs2)  iff (ins.trap == 0 )  {
        option.comment = "FS2 register assignment";
    }
endgroup

covergroup fmaxm_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fmaxm.s";
    cp_asm_count : coverpoint ins.ins_str == "fmaxm.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cp_fs2_corners : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cr_fs1_fs2_corners : cross cp_fs1_corners,cp_fs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2";
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

covergroup fminm_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fminm.s";
    cp_asm_count : coverpoint ins.ins_str == "fminm.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cp_fs2_corners : coverpoint unsigned'(ins.current.fs2_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS2 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
    }
    cr_fs1_fs2_corners : cross cp_fs1_corners,cp_fs2_corners  iff (ins.trap == 0 )  {
        option.comment = "Cross coverage FS1, FS2";
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

covergroup fround_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "fround.s";
    cp_asm_count : coverpoint ins.ins_str == "fround.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
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

covergroup froundnx_s_cg with function sample(ins_rv64zfaf_t ins);
    option.per_instance = 1; 
    option.comment = "froundnx.s";
    cp_asm_count : coverpoint ins.ins_str == "froundnx.s"  iff (ins.trap == 0 )  {
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
    cp_fs1_corners : coverpoint unsigned'(ins.current.fs1_val[31:0])  iff (ins.trap == 0 )  {
        option.comment = "FS1 corners";
        bins pos0             = {32'h00000000};
        bins neg0             = {32'h80000000};
        bins pos1             = {32'h3f800000};
        bins neg1             = {32'hbf800000};
        bins pos1p5           = {32'h3fc00000};
        bins neg1p5           = {32'hbfc00000};
        bins pos2             = {32'h40000000};
        bins neg2             = {32'hc0000000};
        bins posminnorm       = {32'h00800000};
        bins mnegminnorm      = {32'h80800000};
        bins posmaxnorm       = {32'h7f7fffff};
        bins negmaxnorm       = {32'hff7fffff};
        bins posmax_subnorm   = {32'h007fffff};
        bins negmax_subnorm   = {32'h807fffff};
        bins posmid_subnorm   = {32'h00400000};
        bins negmid_subnorm   = {32'h80400000};
        bins posmin_subnorm   = {32'h00000001};
        bins negmin_subnorm   = {32'h80000001};
        bins posinfinity      = {32'h7f800000};
        bins neginfinity      = {32'hff800000};
        bins posQNaN          = {[32'h7fc00000:32'h7fffffff]};
        bins posSNaN          = {[32'h7f800001:32'h7fbfffff]};
        bins posrandom        = {32'h7ef8654f};
        bins negrandom        = {32'h813d9ab0};
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

function void rv64zfaf_sample(int hart, int issue);
    ins_rv64zfaf_t ins;

    case (traceDataQ[hart][issue][0].inst_name)
        "fleq.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fleq_s_cg.sample(ins); 
        end
        "fli.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fli_s_cg.sample(ins); 
        end
        "fltq.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_rd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fltq_s_cg.sample(ins); 
        end
        "fmaxm.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fmaxm_s_cg.sample(ins); 
        end
        "fminm.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_fs2(2);
            fminm_s_cg.sample(ins); 
        end
        "fround.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            fround_s_cg.sample(ins); 
        end
        "froundnx.s"     : begin 
            ins = new(hart, issue, traceDataQ); 
            ins.add_fd(0);
            ins.add_fs1(1);
            ins.add_imm(2);
            froundnx_s_cg.sample(ins); 
        end
    endcase
endfunction
