module wrapper import cvw::*; #(parameter cvw_t P) (input clk);
    test_vm39_coverage #(P) vm39_inst(clk);
    test_vm48_coverage #(P) vm48_inst(clk);
    test_zicbom_coverage #(P) zicbom_inst(clk);
    test_zicntr_coverage #(P) zicntr_inst(clk);
    test_zihpm_coverage #(P) zihpm_inst(clk);
endmodule