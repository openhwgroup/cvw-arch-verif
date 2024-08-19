module wrapper import cvw::*; #(parameter cvw_t P) (input clk);
    RV64VM_coverage #(P) vm_inst(clk);
    RV64VM_PMP_coverage #(P) vm_pmp_inst(clk);
    RV64Zicbom_coverage #(P) zicbom_inst(clk);
    RV64Zicntr_coverage #(P) zicntr_inst(clk);
    RV64Zihpm_coverage #(P) zihpm_inst(clk);
endmodule
