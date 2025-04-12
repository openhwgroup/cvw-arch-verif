// typedef enum logic [SEW-1:0] {
//     zero     = {(SEW){1'b0}},
//     one      = {(SEW-1){1'b0}, {1'b1}},
//     two      = {(SEW-2){1'b0}, {2'b10}},
//     min      = {{1'b1}, (SEW-1){1'b0}},
//     minp1    = {{1'b1}, (SEW-2){1'b0}, {1'b1}},
//     max      = {{1'b0}, (SEW-1){1'b1}},
//     maxm1    = {{1'b0}, (SEW-2){1'b1}, {1'b0}},
//     ones     = {(SEW){1'b1}},
//     onesm1   = {(SEW-1){1'b1}, {1'b0}},
//     walkeodd = {(SEW/2){2'b10}},
//     walkeven = {(SEW/2){2'b01}},
//     random   = {(SEW/8){4'b1101}, (SEW/8){4'b0110}}
// } corner_values;


// function int get_vs2_elem_val(int index);
//   int val = ins.current.vs2_val;
//   return val[`VLEN-1-SEW*index -: SEW]
// endfunction

// function int elem_in_vs1(int e1);
//     for (int i = 0; i < VLMAX; i++) begin
//         if (get_vs1_elem_val(i) == e1) begin
//            return 1;
//         end
//     end
//     return 0;
// endfunction

// function int in_vs1_vs2(int e1, int e2);
//     for (int i = 0; i < VLMAX; i++) begin
//         if ((get_vs1_elem_val(i) == e1) && 
//             (get_vs2_elem_val(i) == e2)) begin
//            return 1;
//         end
//     end
//     return 0;
// endfunction

// function legal_lmul()
// `ifdef VLEN8
//     min = 1;
// `elsif VLEN16
//     `ifdef SEWMIN8
//         min = 0.5;
//     `elsif SEWMIN16
//         min = 1;
//     `endif
// `elsif VLEN32
//     `ifdef SEWMIN8
//         min = 0.25;
//     `elsif SEWMIN16
//         min = 0.5;
//     `elsif SEWMIN32
//         min = 1;
//     `endif


    
// endfunction    


// typedef enum {
//     zero     = {(SE:`W){1'b0}},
//     one      = {(SEW-1){1'b0}, {1'b1}},
//     two      = {(SEW-2){1'b0}, {2'b10}},
// } vstart_cp;