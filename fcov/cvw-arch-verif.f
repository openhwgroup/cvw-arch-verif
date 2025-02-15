// Include all coverpoints
+incdir+${CVW_ARCH_VERIF}/fcov/unpriv
+incdir+${CVW_ARCH_VERIF}/fcov/priv
+incdir+${CVW_ARCH_VERIF}/fcov/rv64_priv
+incdir+${CVW_ARCH_VERIF}/fcov/rv32_priv
// Include coverage classes and helper functions
+incdir+${CVW_ARCH_VERIF}/fcov
// Trace module
${CVW_ARCH_VERIF}/fcov/rvviTrace.sv
// Main coverage module and class instantiation
${CVW_ARCH_VERIF}/fcov/cvw_arch_verif.sv
