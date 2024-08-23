module RV64VM_PMP_coverage import cvw::*; #(parameter cvw_t P) (input clk);

    rvviTrace #(.XLEN(P.XLEN), .FLEN(P.FLEN)) rvvi();
    wallyTracer #(P) wallyTracer(rvvi);

covergroup cg_PMP @(posedge clk iff rvvi.valid[0][0]);
        
        PTE_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins leaflvl_u = {8'b???11111};
            wildcard bins leaflvl_s = {8'b???01111};
        }
        PTE_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.tlbcontrol.PTEAccessBits[7:0] {
            wildcard bins leaflvl_u = {8'b???11111};
            wildcard bins leaflvl_s = {8'b???01111};
        }
        PPN_i: coverpoint dut.core.ifu.immu.immu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }
        PPN_d: coverpoint dut.core.lsu.dmmu.dmmu.tlb.tlb.PPN[26:0] {
            bins tera_zero = {27'd0};
            wildcard bins giga_zero = {27'b???_??????00_00000000_00000000};
            wildcard bins mega_zero = {27'b???_????????_???????0_00000000};
            wildcard bins not_zero = {!27'd0, !27'b???_??????00_00000000_00000000, !27'b???_????????_???????0_00000000}; 
        }

        mode: coverpoint  rvvi.csr[0][0][12'h180][63:60] {
            bins sv48   = {4'b1001};
            bins sv39   = {4'b1000};
        }
    
        PTE_perm_s_i: cross PTE_i, PPN_i, mode  {
            ignore_bins ig1 = binsof(PTE_i.leaflvl_u);
            ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_i.tera_zero);
        }

        PTE_perm_u_i: cross PTE_i, PPN_i, mode  {
            ignore_bins ig1 = binsof(PTE_i.leaflvl_s);
            ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_i.tera_zero);
        }

        PTE_perm_s_d: cross PTE_d, PPN_d, mode  {
            ignore_bins ig1 = binsof(PTE_d.leaflvl_u);
            ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
        }

        PTE_perm_u_d: cross PTE_d, PPN_d, mode  {
            ignore_bins ig1 = binsof(PTE_d.leaflvl_s);
            ignore_bins ig2 = binsof(mode.sv39) && binsof(PPN_d.tera_zero);
        }

        exec_acc: coverpoint dut.core.ifu.immu.immu.ExecuteAccessF {
            bins set = {1};
        }
        read_acc: coverpoint dut.core.lsu.dmmu.dmmu.ReadAccessM {
            bins set = {1};
        }
        write_acc: coverpoint dut.core.lsu.dmmu.dmmu.WriteAccessM {
            bins set = {1};
        }

        Scause: coverpoint  rvvi.csr[0][0][12'h142] {
            bins load_page_acc = {64'd5};
            bins ins_acc_fault  = {64'd1};
            bins store_amo_acc = {64'd7};
        }
        Mcause: coverpoint  rvvi.csr[0][0][12'h342] {
            bins load_page_acc = {64'd5};
            bins ins_acc_fault  = {64'd1};
            bins store_amo_acc = {64'd7};
        }

        PMP0_PTE: coverpoint  rvvi.csr[0][0][12'h3A0][7:0] {
            wildcard bins noread   = {8'b?????110};
            wildcard bins nowrite  = {8'b?????101};
            wildcard bins noexe    = {8'b?????011};
        }

        pmp0_pte_noread_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, read_acc { //pte.2
            ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.store_amo_acc);
        }
        pmp0_pte_noread_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, read_acc { //pte.2
            ignore_bins ig1 = binsof(PMP0_PTE.nowrite);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.store_amo_acc);
        }

        pmp0_pte_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PTE, Scause, write_acc { //pte.2
            ignore_bins ig1 = binsof(PMP0_PTE.noread);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_pte_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PTE, Mcause, write_acc { //pte.2
            ignore_bins ig1 = binsof(PMP0_PTE.noread);
            ignore_bins ig2 = binsof(PMP0_PTE.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }

        PMP0_PA: coverpoint  rvvi.csr[0][0][12'h3A0][15:8] {
            wildcard bins noread   = {8'b?????110};
            wildcard bins nowrite  = {8'b?????101};
            wildcard bins noexe    = {8'b?????011};
        }

        pmp0_PA_noread_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, read_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.store_amo_acc);
        }
        pmp0_PA_noread_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, read_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.store_amo_acc);
        }

        pmp0_PA_nowrite_s: cross PTE_perm_s_d, mode, PMP0_PA, Scause, write_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.noread);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Scause.ins_acc_fault);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_PA_nowrite_u: cross PTE_perm_u_d, mode, PMP0_PA, Mcause, write_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.noread);
            ignore_bins ig2 = binsof(PMP0_PA.noexe);
            ignore_bins ig3 = binsof(Mcause.ins_acc_fault);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }

        pmp0_PA_noexec_s: cross PTE_perm_s_i, mode, PMP0_PA, Scause, exec_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noread);
            ignore_bins ig3 = binsof(Scause.store_amo_acc);
            ignore_bins ig4 = binsof(Scause.load_page_acc);
        }
        pmp0_PA_noexec_u: cross PTE_perm_u_i, mode, PMP0_PA, Mcause, exec_acc { //pte.1
            ignore_bins ig1 = binsof(PMP0_PA.nowrite);
            ignore_bins ig2 = binsof(PMP0_PA.noread);
            ignore_bins ig3 = binsof(Mcause.store_amo_acc);
            ignore_bins ig4 = binsof(Mcause.load_page_acc);
        }
    endgroup

initial begin

        cg_PMP       pmpCG = new(); 

        forever begin

            @(posedge clk iff rvvi.valid[0][0]) begin
                
                pmpCG.sample(); 

            end
        end
    end

endmodule
