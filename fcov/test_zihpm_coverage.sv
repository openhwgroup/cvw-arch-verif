module test_zihpm_coverage import cvw::*; #(parameter cvw_t P) (input clk);

    rvviTrace #(.XLEN(P.XLEN), .FLEN(P.FLEN)) rvvi();
    wallyTracer #(P) wallyTracer(rvvi);

    covergroup cg_hpmcounter @(posedge clk iff rvvi.valid[0][0]);
        
        counter_incr: coverpoint rvvi.insn[0][0] {
            bins counter3_total_branch_incr = (32'b110000000011_00000_010_?????_1110011 => 32'b????????????_?????_???_?????_1100011 => 32'b110000000011_00000_010_?????_1110011);
            bins counter4_total_jumps_incr = (32'b110000000100_00000_010_?????_1110011 => 32'b????????????_?????_???_?????_110?111 => 32'b110000000100_00000_010_?????_1110011);
            bins counter5_total_rets_incr = (32'b110000000101_00000_010_?????_1110011 => 32'b????????????_?????_???_?????_1100111 => 32'b110000000101_00000_010_?????_1110011);
            bins counter10_iclass_pred_wrong_incr = (32'b110000001010_00000_010_?????_1110011 => 32'b????????????_?????_???_?????_??????? => 32'b110000001010_00000_010_?????_1110011);
            bins counter11_load_stalls_incr = (32'b110000001011_00000_010_?????_1110011 => 32'b????????????_?????_010_?????_0000011 => 32'b0000000?????_?????_000_?????_0110011 => 32'b110000001011_00000_010_?????_1110011);
            bins counter12_store_stalls_incr = (32'b110000001100_00000_010_?????_1110011 => 32'b????????????_?????_010_?????_0000011 => 32'b0000000?????_?????_000_?????_0110011 => 32'b0000000?????_?????_000_?????_0110011 => 32'b110000001100_00000_010_?????_1110011);
            bins counter19_csr_writes_incr = (32'b110000010011_00000_010_?????_1110011 => 32'b????????????_?????_001_?????_1110011 => 32'b110000010011_00000_010_?????_1110011);
            bins counter20_fencei_incr = (32'b110000010100_00000_010_?????_1110011 => 32'b????????????_?????_001_?????_0001111 => 32'b110000010100_00000_010_?????_1110011);
            bins counter21_sfence_vma_incr = (32'b110000010101_00000_010_?????_1110011 => 32'b0001001?????_?????_000_00000_1110011 => 32'b110000010101_00000_010_?????_1110011);
            bins counter22_interrupts_taken_incr = (32'b110000010110_00000_010_?????_1110011 => 32'b000100000101_00000_000_00000_1110011 => 32'b110000010110_00000_010_?????_1110011);
            bins counter23_exceptions_taken_incr = (32'b110000010111_00000_010_?????_1110011 => 32'b000100000010_00000_000_00000_1110011, 32'b001100000010_00000_000_00000_1110011, 32'b011100000010_00000_000_00000_1110011 => 32'b110000010111_00000_010_?????_1110011);
            bins counter24_division_stall_cycles_incr = (32'b110000011000_00000_010_?????_1110011 => 32'b0000001?????_?????_100_?????_0110011, 32'b0001100?????_?????_???_?????_1110011 => 32'b110000011000_00000_010_?????_1110011);
        }
        counter_ins: coverpoint rvvi.insn[0][0] {
            bins counter3_total_branch = {32'b110000000011_00000_010_?????_1110011};
            bins counter4_total_jumps = {32'b110000000100_00000_010_?????_1110011};
            bins counter5_total_rets = {32'b110000000101_00000_010_?????_1110011};
            bins counter6_branch_pred_fetch_wrong_instr = {32'b110000000110_00000_010_?????_1110011};
            bins counter7_branch_pred_wrong_dir = {32'b110000000111_00000_010_?????_1110011};
            bins counter8_branch_jump_pred_wrong_target_addr = {32'b110000001000_00000_010_?????_1110011};
            bins counter9_ret_addr_stack_wrong_addr = {32'b110000001001_00000_010_?????_1110011};
            bins counter10_iclass_pred_wrong = {32'b110000001010_00000_010_?????_1110011};
            bins counter11_load_stalls = {32'b110000001011_00000_010_?????_1110011};
            bins counter12_store_stalls = {32'b110000001100_00000_010_?????_1110011};
            bins counter13_dcache_accesses = {32'b110000001101_00000_010_?????_1110011};
            bins counter14_dcache_misses = {32'b110000001110_00000_010_?????_1110011};
            bins counter15_dcache_miss_cycles = {32'b110000001111_00000_010_?????_1110011};
            bins counter16_icache_accesses = {32'b110000010000_00000_010_?????_1110011};
            bins counter17_icache_misses = {32'b110000010001_00000_010_?????_1110011};
            bins counter18_icache_miss_cycles = {32'b1100000010010_00000_010_?????_1110011};
            bins counter19_csr_writes = {32'b110000010011_00000_010_?????_1110011};
            bins counter20_fencei = {32'b110000010100_00000_010_?????_1110011};
            bins counter21_sfence_vma = {32'b110000010101_00000_010_?????_1110011};
            bins counter22_interrupts_taken = {32'b110000010110_00000_010_?????_1110011};
            bins counter23_exceptions_taken = {32'b110000010111_00000_010_?????_1110011};
            bins counter24_division_stall_cycles = {32'b110000011000_00000_010_?????_1110011};


        }
        priv_mode: coverpoint rvvi.mode[0][0]{
            bins U_mode = {2'b00};
            bins S_mode = {2'b01};
            bins M_mode = {2'b11};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins illegal_ins = {2'b10};
        }
        zicntr_support: coverpoint P.ZICNTR_SUPPORTED {
            bins set = {1'b1};
            bins not_set = {1'b0};
        }
        lower_priv_mode: cross priv_mode, zicntr_support, counter_ins {
            ignore_bins ig2 = binsof(zicntr_support.not_set);
        }
        zicntr_not_support : cross Mcause, zicntr_support, counter_ins {
            ignore_bins ig2 = binsof(zicntr_support.set);
        }
       
    endgroup

    initial begin

        cg_hpmcounter   hpmcounterCG = new();

        forever begin

            @(posedge clk iff rvvi.valid[0][0]) begin
                
                hpmcounterCG.sample(); 

            end
        end
    end

endmodule