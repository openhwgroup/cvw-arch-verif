///////////////////////////////////////////
//
// RISC-V Architectural Functional Coverage Collection File List
//
// Copyright (C) 2024 Harvey Mudd College, 10x Engineers, UET Lahore, Habib University
// Written: Jordan Carlin jcarlin@hmc.edu February 2024
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

// Include in your simulator command with the -f flag
// Example vlog ..... -f ${CVW_ARCH_VERIF}/cvw-arch-verif.f .....

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
