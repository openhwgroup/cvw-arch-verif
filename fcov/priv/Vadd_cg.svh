///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Covergroups Initialization File
// 
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
////////////////////////////////////////////////////////////////////////////////////////////////

covergroup vadd_cg with function sample(ins_t ins);
    option.per_instance = 1;
    option.comment = "vadd";


    cp_asm_count : coverpoint ins.ins_str == "vadd"  iff (ins.trap == 0 )  {
        option.comment = "Number of times instruction is executed";
        bins count[]  = {1};
    }
    
    cp_vd : coverpoint ins.get_vec_reg(ins.current.vd)  iff (ins.trap == 0 )  {
        option.comment = "VD register assignment";
    }

    cp_vs2 : coverpoint ins.get_vec_reg(ins.current.vs2)  iff (ins.trap == 0 )  {
        option.comment = "VS2 register assignment";
    }

    cp_vs1 : coverpoint ins.get_vec_reg(ins.current.vs1)  iff (ins.trap == 0 )  {
        option.comment = "VS1 register assignment";
    }

    cp_vm : coverpoint ins.current.insn[25]  iff (ins.trap == 0 )  {
        option.comment = "vm Bit";
        bins zero = {0}; 
        bins one  = {1};
    }


    cp_csr_vtype_vta : coverpoint get_csr_val(ins.hart, ins.issue, SAMPLE_AFTER, "vtype", "vta")  iff (ins.trap == 0)  {
        option.comment = "vta bit in vtype CSR";
        bins undisturbed = {0};
        bins agnostic    = {1};
    }


    cp_csr_vtype_vma : coverpoint get_csr_val(ins.hart, ins.issue, SAMPLE_AFTER, "vtype", "vma")  iff (ins.trap == 0)  {
        option.comment = "vma bit in vtype CSR";
        bins undisturbed = {0};
        bins agnostic    = {1};
    }

    
    cp_csr_vtype_vill : coverpoint get_csr_val(ins.hart, ins.issue, SAMPLE_AFTER, "vtype", "vill")  iff (ins.trap == 0)  {
        option.comment = "vill bit in vtype CSR";
        bins zero = {0};
        bins one  = {1};
    }

endgroup

function void vadd_sample(int hart, int issue, ins_t ins);
    vadd_cg.sample(ins);
endfunction