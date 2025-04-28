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
function corner_vs_values_t vs_corners_check(string vs, bit widen);
  `XLEN_BITS vsew = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vtype", "vsew");
  int sew = 2 ** (3 + unsigned'(vsew[2:0]));
  int eew;
  if (widen) eew = 2 * sew;
  else       eew = sew;
  
  bit [eew-1:0] val;
  if (vs == "vs1")      val = ins.current.vs1_val[eew-1:0];
  else if (vs == "vs2") val = ins.current.vs2_val[eew-1:0];
  else                  val = ins.current.vs3_val[eew-1:0];

  case (val)
    {(eew){1'b0}}:                   return zero;
    {(eew-1){1'b0}, {1'b1}}:         return one;
    {(eew-2){1'b0}, {2'b10}}:        return two;
    {{1'b1}, (eew-1){1'b0}}:         return min;
    {{1'b1}, (eew-2){1'b0}, {1'b1}}: return minp1;
    {{1'b0}, (eew-1){1'b1}}:         return max;
    {{1'b0}, (eew-2){1'b1}, {1'b0}}: return maxm1;
    {(eew){1'b1}}:                   return ones;
    {(eew-1){1'b1}, {1'b0}}:         return onesm1;
    {(eew/2){2'b10}}:                return walkeodd;
    {(eew/2){2'b01}}:                return walkeven;
    default:                          return random;
  endcase
endfunction

typedef enum {
    zero, //     = {(`SEW){1'b0}},
    ones, //     = {(`SEW){1'b1}},
    walkeodd, // = {(`SEW/2){2'b10}},
    walkeven, // = {(`SEW/2){2'b01}},
    vlmaxm1ones, 
    vlmaxd2p1ones,
    randomone,
    random
} corner_mask_values_t;

// Check for vector operand corner values, assuming vl = 1
function corner_mask_values_t mask_corners_check();
  int vlmax = get_current_vlmax(ins.hart, ins.issue);
  `VLEN_BITS mask_val = unsigned'(ins.prev.v_wdata[0]);

  case (mask_val)
    {(`VLEN){1'b0}}:    return zero;
    {(`VLEN){1'b1}}:    return ones;
    {(`VLEN/2){2'b10}}: return walkeodd;
    {(`VLEN/2){2'b01}}: return walkeven;
    {(vlmax-1){1'b1}, (`VLEN-vlmax+1){1'b0}}:     return vlmaxm1ones;
    {(vlmax/2+1){1'b1}, (`VLEN-vlmax/2-1){1'b0}}: return vlmaxd2p1ones;
    default: begin
      if ($onehot(mask_val)) return randomone;
      else                   return random;
  endcase
endfunction

typedef enum {
  vstart_two,
  vstart_vlmaxd2p1,
  vstart_vlmaxm1,
  vstart_random,
  vstart_other // default case to prevent illegal
} vstart_t;

function vstart_t vstart_check();
  `XLEN_BITS vstart = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart");
  int vlmax = get_current_vlmax(ins.hart, ins.issue);
  bit legal;
  if (vstart < vlmax-1) legal = 1'b1; // check legal condition
  else                  legal = 1'b0;
    
  case(vstart)
    2:         return vstart_two;
    vlmax/2+1: return vstart_vlmaxd2p1;
    vlmax-1:   return vstart_vlmaxm1;
    default: begin
      if (legal) return vstart_random;
      else       return vstart_other;
    end
  endcase
endfunction


typedef enum { 
  vl_zero,
  vl_one,
  vl_vlmax,
  vl_vlmaxm1,
  vl_vlmaxd2p1,
  vl_legal,
  vl_other
} vl_t;

function vl_t vl_check();
  `XLEN_BITS vl = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vl", "vl");
  `XLEN_BITS vstart = get_csr_val(ins.hart, ins.issue, `SAMPLE_BEFORE, "vstart", "vstart");
  int vlmax = get_current_vlmax(ins.hart, ins.issue);
  bit legal;
  if (vl <= vlmax & vl > vstart) legal = 1'b1; // check legal condition
  else             legal = 1'b0;
    
  case(vl)
    0:         return vl_zero;
    1:         return vl_one;
    vlmax/2+1: return vl_vlmaxd2p1;
    vlmax-1:   return vl_vlmaxm1;
    vlmax:     return vl_vlmax;
    default: begin
      if (legal) return vl_legal;
      else       return vl_other;
    end
  endcase
endfunction