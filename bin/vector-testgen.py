#!/usr/bin/env python3

##################################
# vector-testgen.py
#
# David_Harris@hmc.edu 27 March 2024
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

##################################
# libraries
##################################
import os
import sys
import re
import math
import filecmp
from datetime import datetime
from random import randint, seed, getrandbits

##################################
# Global Variables
##################################

xreg_count = 32
freg_count = 32
vreg_count = 32

##################################


def insertTemplate(name):
    global signatureWords
    f.write(f"\n# {name}\n")
    with open(f"{ARCH_VERIF}/templates/testgen/{name}") as h:
        template = h.read()
    # Split extension into components based on capital letters
    ext_parts = re.findall(r'Z[a-z]+|[A-Z]', extension)
    ext_parts_no_I = [ext for ext in ext_parts if ext != "I"]
    if 'V' in ext_parts_no_I:
      ext_parts_no_I = ['M'] + ext_parts_no_I
    ISAEXT = f"RV{xlen}I{''.join(ext_parts_no_I)}"
    # Construct the regex part
    ext_regex = ".*I.*" + "".join([f"{ext}.*" for ext in ext_parts_no_I])
    test_case_line = f"//check ISA:=regex(.*{xlen}.*);check ISA:=regex({ext_regex});def TEST_CASE_1=True;"
    # Replace placeholders

    template = template.replace("sigupd_count", str(signatureWords))
    template = template.replace("ISAEXT", ISAEXT)
    template = template.replace("TestCase", test_case_line)
    template = template.replace("Instruction", test)
    f.write(template)

def writeSIGUPD(rd):
    global sigupd_count  # Allow modification of global variable
    sigupd_count += 1    # Increment counter on each call
    l = f"RVTEST_SIGUPD(x{sigReg}, x{rd})\n"
    return l

def writeSIGUPD_F(rd):
    global sigupd_count  # Allow modification of global variable
    global sigupd_countF
    sigupd_count += 1    # Increment counter for floating point signature sicne SIGUPD_F macro stores FCSR as SREG
    sigupd_countF += 1   # Increment counter on each call since SIGUPD_F macro stores FREG
    tempReg = 4
    while tempReg == sigReg:
      tempReg = randint(1,31)
    l = f"csrr x{tempReg}, fcsr\n"                              # Get fcsr into a temp register
    l = l + f"RVTEST_SIGUPD_F(x{sigReg}, f{rd}, x{tempReg})\n"  # x{rd} as fstatus Xreg from macro definition as dummy store (might be needed in another instruction)
    return l

def writeSIGUPD_V(vd, sew, avl=1):
    global sigupd_count        # Allow modification of global variable
    if (avl == "random" or avl == "vlmax"):
      avl = maxVLEN            # set to max possible vl since SIGUPD_V needs AVL to be a compile-time constant
    if (avl == 1):
      sigupd_count += avl * 2  # Increment counter on each call
    else:
      sigupd_count += avl

    tempReg = 6
    while tempReg == sigReg:
      tempReg = randint(1,31)
    lines = f"RVTEST_SIGUPD_V(x{sigReg}, x{tempReg}, {avl}, {sew},  v{vd})    # stores v{vd} (sew = {sew}, AVL = {avl}) in signature with base (x{sigReg}) and helper (x{tempReg}) register\n"
    return lines

# TODO: will be used and tested for vector FP
def loadVFloatReg(reg, val, sew):
  lines = ""
  if sew == 16:
    precision = 16
    loadop = "flh"
    storeop = "sh"
  elif sew == 32:
    precision = 32
    loadop = "flw"
    storeop = "sw"
  elif sew == 64:
    precision = 64
    loadop = "fld"
    storeop = "sd"
  lines = lines + "la x2, scratch\n"
  lines = lines + f"li x3, {formatstrFP.format(val)} # load x3 with value {formatstrFP.format(val)}\n"
  lines = lines + f"{storeop} x3, 0(x2) # store {formatstrFP.format(val)} in memory\n"
  lines = lines + f"{loadop} v{reg}, 0(x2) # load {formatstrFP.format(val)} from memory into v{reg}\n"
  return lines

def loadVecReg(lines, register_argument_name: str, vector_register_data, sew, *scalar_registers_used):
    scalar_registers_used = list(scalar_registers_used)
    register_data         = vector_register_data[register_argument_name]

    register              = register_data['reg']
    register_val_pointer  = register_data['val_pointer']
    register_sew          = register_data['size_multiplier'] * sew if not register_data['reg_type'] == "mask" else 8

    tempReg = 4
    while tempReg in scalar_registers_used:
      tempReg = randint(1,31)
    scalar_registers_used.append(tempReg)

    lines = lines + f"la x{tempReg}, {register_val_pointer}             # Load address of desired value\n"
    lines = lines + f"vle{register_sew}.v v{register}, (x{tempReg})                       # Load desired value from memory into v{reg}\n"

    return lines, scalar_registers_used

def loadScalarReg(lines, register_argument_name: str, scalar_register_data):
  register_data   = scalar_register_data[register_argument_name]
  register        = register_data['reg']
  register_value  = register_data['val']

  lines = lines + f"li x{register}, {formatstr.format(register_value)}             # Load immediate value into integer register\n"
  return lines

# handleSignaturePointerConflict switches to a different signature pointer if the current one is needed for the test
def handleSignaturePointerConflict(lines, *registers):
  global sigReg # this function can modify the signature register

  l = lines
  oldSigReg = sigReg

  while (sigReg in registers):
    sigReg = randint(1,31)

  if (sigReg != oldSigReg):
    l = lines + "mv x" + str(sigReg) + ", x" + str(oldSigReg) + " # switch signature pointer register to avoid conflict with test\n"
  return l

def getSigSpace(xlen, flen,sigupd_count, sigupd_countF):
  #function to calculate the space needed for the signature memory. with different reg sizes to accommodate different xlen and flen only when needed to minimize space
  signatureWords = sigupd_count
  if sigupd_countF > 0:
    if flen > xlen:
      mult = flen//xlen
      signatureWords = sigupd_count + (sigupd_countF * (mult *2-1)) # multiply be reg ratio to get correct amount of Xlen/32 4byte blocks for footer and double the count for alignment (4 and 8 need 16 byts)
    else:
      signatureWords = sigupd_count + sigupd_countF # all Sigupd, no need to adjust since Xlen is equal to or larger than Flen and SIGUPD_F macro will adjust alignment up to XLEN
  return signatureWords


def writeVecTest(lines, vd, sew, testline, test=None, rd=None, vl=1):
    l = lines + testline
    if (test in vd_widen_ins) or (test in wvsins):
      l = l + writeSIGUPD_V(vd, 2*sew, avl=vl)  # EEW of vd = 2 * SEW for widening
    elif (test in maskins):
      l = l + writeSIGUPD_V(vd, 1, avl=vl)      # EEW of vd = 1 for mask
    elif (test in xvtype):
      l = l + writeSIGUPD(rd)
    else:
      l = l + writeSIGUPD_V(vd, sew, avl=vl)
    return l


# TODO : Make this works with vector FP
def loadFloatRoundingMode(lines, vfloattype):

  return lines


def loadVxrmRoundingMode(lines, vxrm):
  lines = lines + f"# set vcsr.vxrm to {vxrm}\n"
  lines = lines + f"li t0, {vxrmList[vxrm]}\n"
  lines = lines + f"csrw vcsr, t0\n"
  return lines

# TODO: doesnt work
def loadVxsatMode(lines):
  # lines = lines + f"csrr t0, vcsr"
  # lines = lines + f"andi t1, t0, 1"
  # lines = lines + f"la t2, vxsat_address"
  # lines = lines + f"sw t1, 0(t2)"
  return lines

def genLMULIfdef(lmul):
  ifdef = ""
  if (lmul == 0.5):
    ifdef = "#ifdef LMULf2_SUPPORTED\n"
  elif (lmul == 0.25):
    ifdef = "#ifdef LMULf4_SUPPORTED\n"
  elif (lmul == 0.125):
    ifdef = "#ifdef LMULf8_SUPPORTED\n"
  return ifdef

def prepMaskV(lines, maskval, sew, tempReg):
  if (maskval == "zeroes"):
    lines = lines + f"vmv.v.i v0, 0                 # Set mask value to 0\n"
  elif (maskval == "ones"):
    lines = lines + f"vsetvli x{tempReg}, x0, e{sew}, m1, ta, ma       # x{tempReg} = VLMAX\n"
    lines = lines + f"vid.v v1                           # v1 = [0,1,2,...]\n"
    lines = lines + f"vmv.v.i v0, 0                      # Reset mask value to 0\n"
    lines = lines + f"vmslt.vx v0, v1, x{tempReg}        # v0[i] = (i < VLMAX) ? 1 : 0\n"
  elif (maskval == "vlmaxm1_ones"):
    lines = lines + f"vsetvli x{tempReg}, x0, e{sew}, m1, ta, ma       # x{tempReg} = VLMAX\n"
    lines = lines + f"addi x{tempReg}, x{tempReg}, -1                  # x{tempReg} = VLMAX - 1\n"
    lines = lines + f"vid.v v1                           # v1 = [0,1,2,...]\n"
    lines = lines + f"vmv.v.i v0, 0                      # Reset mask value to 0\n"
    lines = lines + f"vmslt.vx v0, v1, x{tempReg}        # v0[i] = (i < VLMAX-1) ? 1 : 0\n"
  elif (maskval == "vlmaxd2p1_ones"):
    lines = lines + f"vsetvli x{tempReg}, x0, e{sew}, m1, ta, ma       # x{tempReg} = VLMAX\n"
    lines = lines + f"srli x{tempReg}, x{tempReg}, 1                   # x{tempReg} = VLMAX / 2\n"
    lines = lines + f"addi x{tempReg}, x{tempReg}, 1                   # x{tempReg} = VLMAX / 2 + 1\n"
    lines = lines + f"vid.v v1                           # v1 = [0,1,2,...]\n"
    lines = lines + f"vmv.v.i v0, 0                      # Reset mask value to 0\n"
    lines = lines + f"vmslt.vx v0, v1, x{tempReg}        # v0[i] = (i < VLMAX/2+1) ? 1 : 0\n"
  else: # random mask
    lines = lines + f"vmv.v.i v0, 0                      # Reset mask value to 0\n"
    lines = lines + f"la x{tempReg}, {maskval}\n"
    lines = lines + f"vlm.v v0, (x{tempReg})             # Load mask value into v0\n"
  return lines


def writeTest(description, instruction, instruction_data,
              sew=None, lmul=1, vl=1, vstart=0, maskval=None, vxrm=None,
              vfrm=None, vfloattype=None, vxsat=None, vta=0, vma=0):

    [vector_register_data, scalar_register_data, floating_point_register_data, imm_val] = instruction_data

    vd              = vector_register_data        ['vd'] ['reg']
    vs1             = vector_register_data        ['vs1']['reg']
    vs2             = vector_register_data        ['vs2']['reg']
    vs3             = vector_register_data        ['vs3']['reg']
    vd_val_pointer  = vector_register_data        ['vd'] ['val_pointer']
    vs1_val_pointer = vector_register_data        ['vs1']['val_pointer']
    vs2_val_pointer = vector_register_data        ['vs2']['val_pointer']
    vs3_val_pointer = vector_register_data        ['vs3']['val_pointer']

    rd              = scalar_register_data        ['rd'] ['reg']
    rs1             = scalar_register_data        ['rs1']['reg']
    rs2             = scalar_register_data        ['rs2']['reg']
    rd_val          = scalar_register_data        ['rd'] ['val']
    rs1_val         = scalar_register_data        ['rs1']['val']
    rs2_val         = scalar_register_data        ['rs2']['val']

    fd              = floating_point_register_data['fd'] ['reg']
    fs1             = floating_point_register_data['fs1']['reg']
    fd_val_pointer  = floating_point_register_data['fd'] ['val_pointer']
    fs1_val_pointer = floating_point_register_data['fs1']['val_pointer']

    scalar_registers_used = [rd, rs1, rs2]

    tempReg = 6
    while tempReg in scalar_registers_used:
      tempReg = randint(1,31)
    scalar_registers_used.append(tempReg)

    lines = handleSignaturePointerConflict(lines, *scalar_registers_used)
    scalar_registers_used.append(sigReg)

    # deal with conflict before generating lmul ifdefs to not cause issue if the test is unused

    lines = "\n" + genLMULIfdef(lmul)
    lines = lines + "# Testcase " + str(description) + "\n"

    lines, scalar_registers_used = prepBaseV(lines, sew, lmul, vl, vstart, vta, vma, *scalar_registers_used)

    # If mask value specified, load to v0
    if maskval is not None:
      lines = prepMaskV(lines, maskval, sew, tempReg)
    elif any(instruction in type for type in [vvivtype, vvvvtype, vvxvtype]):
       lines = lines + "vmv.v.i v0, 0" # set v0 register to 0 in base suit where vm is fixed to 0

    if vfloattype is not None:
      lines = loadFloatRoundingMode(lines, vfloattype)
    elif vxsat is not None:
      lines = loadVxsatMode(lines)
    elif vxrm is not None:
      lines = loadVxrmRoundingMode(lines, vxrm)

    instruction_arguments = []
    # test writing
    if   test in vvvmtype or test in vvvtype     : instruction_arguments = ['vd', 'vs2', 'vs1', 'vm']
    elif test in vvvmrtype                       : instruction_arguments = ['vd', 'vs1', 'vs2', 'vm']
    elif test in vvxmtype                        : instruction_arguments = ['vd', 'vs2', 'rs1', 'vm']
    elif test in vxvmtype                        : instruction_arguments = ['vd', 'rs1', 'vs2', 'vm']
    elif test in vvimtype                        : instruction_arguments = ['vd', 'vs2', 'imm', 'vm']
    elif test in vvivtype                        : instruction_arguments = ['vd', 'vs2', 'imm', 'v0']
    elif test in vvvvtype                        : instruction_arguments = ['vd', 'vs2', 'vs1', 'v0']
    elif test in vvxvtype                        : instruction_arguments = ['vd', 'vs2', 'rs1', 'v0']
    elif test in xvmtype or test in xvtype       : instruction_arguments = ['rd', 'vs2',        'vm']
    elif test in vvmtype                         : instruction_arguments = ['vd', 'vs2',        'vm']
    elif test in vmtype                          : instruction_arguments = ['vd',               'vm']
    elif test in vxtype                          : instruction_arguments = ['vd', 'rs1',        'vm']
    elif test in vvrtype                         : instruction_arguments = ['vd', 'vs1',        'vm']
    elif test in vvvxtype                        : instruction_arguments = ['vd', 'vs2',        'vm']
    elif test in type_vsx                        : instruction_arguments = []
    elif test in type_vsxm                       : instruction_arguments = []
    elif test in type_vsxxm                      : instruction_arguments = []
    elif test in type_vsxvm                      : instruction_arguments = []
    else                                         :
      print("Error: %s type not implemented yet" % test)
      return

    testline = instruction

    for arguemnt in instruction_arguments:
      if   arguemnt == 'vm' and maskval is not None:
        testline = testline + "v0.t"
      elif arguemnt == 'v0':
        testline = testline + "v0"
      elif arguemnt == 'imm':
        testline = testline + f"{imm_val}"
      elif arguemnt[0] == 'v':
        lines, scalar_registers_used = loadVecReg(lines, arguemnt, vector_register_data, sew, *scalar_registers_used)
        testline = testline + f"v{vector_register_data[arguemnt]['reg']}"
      elif arguemnt[0] == 'x':
        lines = loadScalarReg(lines, arguemnt, scalar_register_data)
        testline = testline + f"x{scalar_register_data[arguemnt]['reg']}"
      elif arguemnt[0] == 'f':
        # TODO : implement load value for floating point
        testline = testline + f"f{floating_point_register_data[arguemnt]['reg']}"
      else:
        raise TypeError(f"Instruction Argument type not supported: '{arguemnt}'")

      testline = testline + ", "

    testline = testline[:-2] # remove the ", " at the end of the test

    if (maskval is not None) or (vl is not None):
      lines = writeVecTest(lines, vd, sew, testline, test=test, rd=rd, vl=vl)
    else:
      lines = writeVecTest(lines, vd, sew, testline, test=test, rd=rd)

    if (genLMULIfdef(lmul) != ""):
      lines = lines + "#endif\n"

    f.write(lines)

def prepBaseV(lines, sew, lmul, vl=1, vstart=0, ta=0, ma=0, *scalar_registers_used):
  scalar_registers_used = list(scalar_registers_used)
  lmulflag = lmul

  if (lmul == 0.5):
    lmulflag = "f2"
  elif (lmul == 0.25):
    lmulflag = "f4"
  elif (lmul == 0.125):
    lmulflag = "f8"

  if ma is None:
    maflag = " "
  elif ma == 0:
    maflag = ", mu"
  elif ma == 1:
    maflag = ", ma"

  if ta is None:
    taflag = " "
  elif ta == 0:
    taflag = ", tu"
  elif ta == 1:
    taflag = ", ta"

  tempReg2 = 5
  while tempReg2 in scalar_registers_used:
    tempReg2 = randint(1,31)
  scalar_registers_used.append(tempReg2)

  vlmaxReg = 7
  while vlmaxReg in scalar_registers_used:
    vlmaxReg = randint(1,31)
  scalar_registers_used.append(vlmaxReg)

  if vl == "random":
    randomVl = getrandbits(32)
    lines = lines + f"li x{tempReg2}, {randomVl}                       # Load value for random vl preparation\n"
    lines = lines + f"vsetvli x{vlmaxReg}, x0, e{sew}, m{lmulflag}{taflag}{maflag}               # x{vlmaxReg} = VLMAX\n"
    lines = lines + f"remu x{tempReg2}, x{tempReg2}, x{vlmaxReg}                      # ensure that vl < VLMAX\n"
    lines = lines + f"ori x{tempReg2}, x{tempReg2}, 0x2                     # set bit 1 to 1, ensuring 2 <= vl < VLMAX\n"
    lines = lines + f"vsetvli x0, x{tempReg2}, e{sew}, m{lmulflag}{taflag}{maflag}\n"
  elif vl == "vlmax":
    lines = lines + f"vsetvli x{tempReg2}, x0, e{sew}, m{lmulflag}{taflag}{maflag}     # Set vl = VLMAX, where x{vlmaxReg} = VLMAX\n"
  else:
    lines = lines + f"li x{tempReg2}, {vl}                       # Load desired vl value\n" # put desired vl into an integer register
    lines = lines + f"vsetvli x0, x{tempReg2}, e{sew}, m{lmulflag}{taflag}{maflag}\n"

  if (vstart == True):   # if vstart specified
    lines = lines + f"li x{tempReg2}, {vstart}               # Load desired vstart value\n"
    lines = lines + f"csrw vstart, x{tempReg2}\n"

  return lines, scalar_registers_used

def vsAddressCount(suite="base"):
  global base_suite_test_count, length_suite_test_count
  if (suite == "length"):
    length_suite_test_count = length_suite_test_count + 1
  else:
    base_suite_test_count = base_suite_test_count + 1


def getRandomRegister(register_argument_name: str, maxreg: int, register_preset_data, lmul = 1) :

  register_data = register_preset_data[register_argument_name]
  register_type        = register_argument_name[0]

  register             = register_data[0]
  register_value       = register_data[1]

  if register is None: # if the register is a vector register
    if register_type == "v":
      # scalar and mask holding registers only take up 1 register no matter the lmul
      emul = register_data['size_multiplier'] * lmul if register_data['reg_type'] == "scalar" or \
                                                        register_data['reg_type'] == "mask" else 1

      register = emul * randint(math.floor(maxreg/emul)) # only register numbers of multiples of LMUL(EMUL) are allowed
    else: # normal instructions
      register = randint(maxreg) # 1 to maxreg, inclusive

  register_data['reg'] = register

  if register_value is None:
    if   register_type == "x":
      register_data['val'] = randint(0, (2**xlen)-1)

    # TODO: this is not where values are randomized for f and v
    # elif register_type == "f":
    #   register_value = randint(0, (2**flen)-1)
    # elif register_type == "v":
    #   register_value = randint(0, (2**sew)-1)

  return register_data

def getVectorEmulMultipliers(instruction):
  vector_register_data = {}

  if instruction in wvsins:
    vector_register_data['vs1_size_multiplier'] = 2
    vector_register_data[ 'vd_size_multiplier'] = 2
  if instruction in vs2_widen_ins:
    vector_register_data['vs2_size_multiplier'] = 2
  if instruction in vd_widen_ins:
    vector_register_data[ 'vd_size_multiplier'] = 2

  if instruction in mmins or instruction in vmlogicalins: # instructions opperate with EEW = 1
    vector_register_data['vs1_reg_type']        = "mask"
    vector_register_data['vs2_reg_type']        = "mask"
    vector_register_data[ 'vd_reg_type']        = "mask"
  if instruction in maskins: # instructions operate with vd EEW = 1
    vector_register_data[ 'vd_reg_type']        = "mask"
  if instruction in vredins:
    vector_register_data[' vd_reg_type']        = "scalar"
    vector_register_data['vs1_reg_type']        = "scalar"
  if instruction == "vmv.x.s":
    vector_register_data['vs2_reg_type']        = "scalar"
  if instruction == "vmv.s.x":
    vector_register_data[' vd_reg_type']        = "scalar"

  return vector_register_data

# return         - an array of arrays containing strings, elements will be regenerated until there are no conflicts

#                  Example: no_overlap = [['vs1', 'vs2_top'], ['v0', 'vd_bottom']]
#                  all values will be continued to be randomized until there is no overlap within lists
def getInstructionRegisterOverlapConstraints (instruction):
  no_overlap = []

  if   instruction in wvvins        : no_overlap = [['vd_bottom', 'vs2'], ['vd_bottom', 'vs1']]
  elif instruction in vupgatherins  : no_overlap = [['vd',        'vs2'], ['vd',        'vs1']]
  elif instruction in vmlogicalins  : no_overlap = [['vd',        'vs2']                      ]
  elif instruction in wvxins        : no_overlap = [['vd_bottom', 'vs2']                      ]
  elif instruction in mv_ins        : no_overlap = [['vd',        'vs2'], ['vd',        'vs1']]
  elif instruction in vextins       : no_overlap = [['vd',        'vs2']                      ]
  elif instruction in narrowins     : no_overlap = [['vd',    'vs2_top'], ['vs2',       'vs1']]
  elif instruction in wvsins        : no_overlap = [['vd',        'vs2'], ['vs2',       'vs1']] # no "_bottom" in vd because its a reduction instruction
  elif instruction in wwvins        : no_overlap = [['vd_bottom', 'vs1'], ['vs1',       'vs2']]
  elif instruction in v_mins        : no_overlap = [['v0', 'vs2'], ['v0', 'vs1'], ['v0', 'vd']]
  elif instruction in mv_mins       : no_overlap = [['vd', 'v0',  'vs2'], ['vd', 'v0',  'vs1']]
  elif instruction in vcompressins  : no_overlap = [['vd', 'vs2', 'vs1']                      ]

  return no_overlap

# randomizeVectorInstructionData generates all necessary random data for an instruction following constraints

# instruction        - the instruction being processed (ex. vadd.vv)
# lmul               - the lmul set in vtype csr
# **preset_variables - any value in preset_data can be set here, for example vd = 2 will ensure vd is set to the v2 register above all else
# return             - returns an array of all randomized values following constraints
def randomizeVectorInstructionData(instruction, lmul=1, suite="base", no_overlap = [], **preset_variables):

  preset_variables.update(getVectorEmulMultipliers(instruction))
  no_overlap = no_overlap + getInstructionRegisterOverlapConstraints(instruction)

  scalar_register_preset_data         = {
    'rd'  : {'reg' : None, 'val' : None},
    'rs1' : {'reg' : None, 'val' : None},
    'rs2' : {'reg' : None, 'val' : None}
  }

  floating_point_register_preset_data = {
    'fd'  : {'reg' : None, 'val_pointer' : None},
    'fs1' : {'reg' : None, 'val_pointer' : None}
  }

  vector_register_preset_data         = {
    'vs3' : {'reg' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None},
    'vd'  : {'reg' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None},
    'vs1' : {'reg' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None},
    'vs2' : {'reg' : None, 'val_pointer' : None, 'size_multiplier' : 1, 'reg_type' : None}
  }

  immediate_preset_data               = None

  vector_additional_arguements        = ['v0']

  ####################################################################################
  # set all incoming data to
  # designate reserved scalar, floating point and vector registers
  ####################################################################################

  for varaible, value in preset_variables.items():
    found = False

    # Get index of first underscore
    idx = varaible.index("_")

    # Split into two parts
    register_name = varaible[:idx]
    data_type = varaible[idx + 1:]

    # load vector register data
    if register_name in vector_register_preset_data :
      for register_data in vector_register_preset_data :
        if data_type in register_data:
          vector_register_preset_data[register_name][data_type] = value
          found = True
          break

    # load scalar register data
    if register_name in scalar_register_preset_data :
      for register_data in scalar_register_preset_data :
        if data_type in register_data:
          scalar_register_preset_data[register_name][data_type] = value
          found = True
          break

    # load floating point register data
    if register_name in floating_point_register_preset_data :
      for register_data in floating_point_register_preset_data :
        if data_type in register_data:
          floating_point_register_preset_data[register_name][data_type] = value
          found = True
          break

    if   varaible == 'imm':
      immediate_preset_data = value
      found = True
    elif varaible in vector_additional_arguements :
      found = True

    if not found :
      raise TypeError(f"Unexpected keyword argument: '{varaible}'")

    if not isinstance(value, int):
      raise TypeError(f"Unexpected value for key '{varaible}': '{value}'")

  ####################################################################################

  scalar_register_data                 = scalar_register_preset_data
  floating_point_register_data         = floating_point_register_preset_data
  vector_register_data                 = vector_register_preset_data

  register_overlap = True

  while register_overlap:
    vector_register_data         ['vs3'] = getRandomRegister('vs3', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vd' ] = getRandomRegister('vd',  vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs1'] = getRandomRegister('vs1', vreg_count, vector_register_preset_data, lmul)
    vector_register_data         ['vs2'] = getRandomRegister('vs2', vreg_count, vector_register_preset_data, lmul)

    scalar_register_data         ['rd' ] = getRandomRegister('rd',  xreg_count, scalar_register_preset_data)
    scalar_register_data         ['rs1'] = getRandomRegister('rs1', xreg_count, scalar_register_preset_data)

    floating_point_register_data ['fd' ] = getRandomRegister('fd',  freg_count, scalar_register_preset_data)
    floating_point_register_data ['fs1'] = getRandomRegister('fs1', freg_count, scalar_register_preset_data)

    register_overlap = False

    for no_overlap_set in no_overlap:
      register_type = no_overlap_set[0][0] # grab either "v" "x" or "f" to get the register type
      registers_occupied = []

      for register in no_overlap_set:
        if not register_type == register[0]:
          raise TypeError(f"Register type mismatch from {register_type}: '{register}'")
        elif   register_type == 'x':
          registers_occupied.append(scalar_register_data[register]['reg']) # add register value to list to check for overlap
        elif register_type == 'f':
          registers_occupied.append(floating_point_register_data[register]['reg']) # add register to reserved list to prevent overlap
        elif register_type == 'v':
          if register == 'v0':
            registers_occupied.append(0)
          else:
            top_no_overlap = False
            if register[:-4] == "_top": # if specifying no overlap with the top of a register
              top_no_overlap = True     # save for reserved section below
              register = register[:-4]  # remove "_top" from register name

            bottom_no_overlap = False
            if register[:-6] == "_bottom": # if specifying no overlap with the top of a register
              bottom_no_overlap = True     # save for reserved section below
              register = register[:-6]  # remove "_top" from register name

            if vector_register_preset_data[register]['reg_type'] == "scalar" or vector_register_preset_data[register]['reg_type'] == "mask":
              start_no_register_overlap = 0
              end_register_no_overlap   = 1
            else:
              emul = vector_register_preset_data[register]['size_multiplier'] * lmul  # get lmul multiplier
              start_no_register_overlap = emul-lmul if top_no_overlap     else 0
              end_register_no_overlap   = lmul      if bottom_no_overlap  else emul
            for i in range(start_no_register_overlap, end_register_no_overlap):
              registers_occupied.append(vector_register_data[register]['reg'] + i) # add register to reserved list to prevent overlap

      if len(registers_occupied) != len(set(registers_occupied)): # checks for duplicates
        register_overlap = True

  if (suite == "length"):
    test_count = length_suite_test_count
  else:
    test_count = base_suite_test_count

  vector_register_data['vs3']['val_pointer'] = f"vs3_random_{suite}_{test_count:03d}"
  vector_register_data['vd' ]['val_pointer'] = f" vd_random_{suite}_{test_count:03d}"
  vector_register_data['vs1']['val_pointer'] = f"vs1_random_{suite}_{test_count:03d}"
  vector_register_data['vs2']['val_pointer'] = f"vs2_random_{suite}_{test_count:03d}"

  # TODO : implement floating point data address

  # immediate handling
  if immediate_preset_data is not None:
    if (instruction in imm_31):
      immval = randint(0,31)
    else:
      immval = randint(-16,15)
  else:
    immval = immediate_preset_data

  return [vector_register_data, scalar_register_data, floating_point_register_data, immval]

def make_custom(test, xlen):
    insertTemplate(f"{test}.S")

def insertTest(test):
  f.write(f"\n# Stub for {test}")

def make_vd(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description = f"cp_vd (Test destination vd = v" + str(v) + ")"

    if (instruction in vvvxtype): # vmv<nr>r.v
      lmul = instruction[3] # vmv<nr>r.v, thus nr = instruction[3] which encodes emul
      instruction_data = randomizeVectorInstructionData(instruction, lmul = lmul, vd = v)
    else :
      instruction_data = randomizeVectorInstructionData(instruction, vd = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()

def make_vs2(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description = f"cp_vs2 (Test source vs2 = v" + str(v) + ")"

    if (test in vvvxtype): # vmv<nr>r.v
      lmul = instruction[3] # vmv<nr>r.v, thus nr = instruction[3] which encodes emul
      instruction_data = randomizeVectorInstructionData(instruction, lmul = lmul, vs2 = v)
    else :
      instruction_data = randomizeVectorInstructionData(instruction, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()


def make_vs1(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description       = f"cp_vs1 (Test source vs1 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vs1 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()


def make_vd_vs2(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description = f"cmp_vd_vs2 (Test vd = vs2 = v{v})"

    if (test in vvvxtype): # vmv<nr>r.v
      lmul = instruction[3] # vmv<nr>r.v, thus nr = instruction[3] which encodes emul
      instruction_data = randomizeVectorInstructionData(instruction, lmul = lmul, vd = v, vs2 = v)
    else :
      instruction_data = randomizeVectorInstructionData(instruction, vd = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()


def make_vd_vs1(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description       = f"cmp_vd_vs1 (Test vd = vs1 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vd = v, vs1 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()


def make_vd_vs1_vs2(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description       = f"cmp_vd_vs1_vs2 (Test vd = vs1 = vs2 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vd = v, vs1 = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()


def make_vs1_vs2(instruction, sew, rng):
  global basetest_count
  for v in rng:
    description       = f"cmp_vs1_vs2 (Test vs1 = vs2 = v" + str(v) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vs1 = v, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()

def make_rs1_v(instruction, sew, rng):
  global basetest_count
  for r in rng:
    description       = f"cp_rs1 (Test rs1 = " + str(r) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, rs1 = r)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1

def make_imm_v(instruction, sew):
  global basetest_count
  if (test in imm_31):
    for uimm in range(0,32):
      description       = "cp_imm_5bit_u (Test uimm = " + str(uimm) + ")"
      instruction_data  = randomizeVectorInstructionData(instruction, imm = uimm)
  else:
    for imm in range(-16,16):
      description       = "cp_imm_5bit (Test imm = " + str(imm) + ")"
      instruction_data  = randomizeVectorInstructionData(instruction, imm = imm)

  writeTest(description, instruction, instruction_data, sew=sew)
  basetest_count += 1

def make_rdv(instruction, sew, rng):
  global basetest_count
  for r in rng:
    description       = "cp_rd (Test rd = " + str(r) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, rd = r)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1
    vsAddressCount()

def make_vs2_corners(instruction, sew, vcorners, vl=1):
  global basetest_count
  for v in vcorners:
    description       = f"cp_vs2_corners (Test source vs2 value = " + v + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v)

    writeTest(description, instruction, instruction_data, sew=sew, vl=vl)
    basetest_count += 1

def make_vs1_corners(instruction, sew, vcorners, vl=1):
  global basetest_count
  for v in vcorners:
    description       = f"cp_vs1_corners (Test source vs1 value = " + v + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, vs1 = v)

    writeTest(description, instruction, instruction_data, sew=sew, vl=vl)
    basetest_count += 1

def make_rs1_corners_v(instruction, sew, rng):
  global basetest_count
  for rcorner in rcornersv:
    description       = f"cp_rs1_corners (Test source rs1 value = " + hex(rcorner) + ")"
    instruction_data  = randomizeVectorInstructionData(instruction, rs1 = rcorner)

    writeTest(description, instruction, instruction_data, sew=sew)
    basetest_count += 1

def make_vs2_vs1_corners(instruction, sew, vs2corners, vs1corners, vl=1):
  for v1 in vs1corners:
    for v2 in vs2corners:
      description = "cr_vs2_vs1_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, vs1 = v1, vs2 = v2, no_overlap = ['vs1', 'vs2'])

      writeTest(description, instruction, instruction_data, sew=sew, vl=vl)

def make_vs2_rs1_corners(instruction, sew, vs2corners):
  for r1 in rcornersv:
    for v2 in vs2corners:
      description = "cr_vs2_rs1_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v2, rs1 = r1)

      writeTest(description, instruction, instruction_data, sew=sew)

def make_vs2_imm_corners(instruction, sew, vs2corners):
  for imm in immcornersv:
    for v2 in vs2corners:
      description = "cr_vs2_imm_corners"
      instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v2, imm = imm)

      writeTest(description, instruction, instruction_data, sew=sew)

# vxrm tests
vxrmList = {"rod": "0x6",
            "rdn": "0x4",
            "rne": "0x2",
            "rnu": "0x0"} # vcsr[2:1] -> 11 , 10, 01, 00

def make_vxrm_vs2_vs1_corners(instruction, sew, vs2corners, vs1corners):
  for vxrm in vxrmList:
    for v1 in vs1corners:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_vs1_corners (Test vxrm = " + vxrm + ")"
        instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v2, vs1 = v1)

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

def make_vxrm_vs2_rs1_corners(instruction, sew, vs2corners):
  for vxrm in vxrmList:
    for r1 in rcornersv:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_rs1_corners (Test vxrm = " + vxrm + ")"
        instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v2, rs1 = r1)

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

def make_vxrm_vs2_imm_corners(instruction, sew, vs2corners):
  for vxrm in vxrmList:
    for imm in immcornersv:
      for v2 in vs2corners:
        description = "cr_vxrm_vs2_imm_corners (Test vxrm = " + vxrm + ")" + str(imm)
        instruction_data  = randomizeVectorInstructionData(instruction, vs2 = v2, imm = imm)

        writeTest(description, instruction, instruction_data, sew=sew, vxrm=vxrm)

##################################### length suite (vl!=1) test generation #####################################

def getLegalVlmul(elen, sewmin, sew):
  lmulmin = sewmin / elen
  legalvlmuls = [0, 1, 2, 3]
  # A given supported fractional LMUL setting must support SEW settings between SEWMIN and LMUL * ELEN
  if (lmulmin <= 0.5) and (sew in [8, 16, 32]):
    legalvlmuls.append(-1)
  if (lmulmin <= 0.25) and (sew in [8, 16]):
    legalvlmuls.append(-2)
  if (lmulmin <= 0.125) and (sew == 8):
    legalvlmuls.append(-3)
  return legalvlmuls

def randomizeMask(test):
  if (test in mv_ins) or (test in mmins) or (test in vmvins):
    vm = 1
  else:
    vm = randint(0,1)

  if (vm == 1):
    maskval = None
  else:
    i = randint(0,2)
    maskval = f"random_mask_{i}"
  return maskval

def make_vl_lmul(instruction, sew, maxlmul=8):
  global legalvlmuls, lengthtest_count
  numlmul = int(math.log2(maxlmul)+1)
  minlmul = min(legalvlmuls)
  for l in range(minlmul, numlmul):
    for k in range(3):
      lmul = 2 ** l # creating lmul first

      vlval = ["vlmax", 1, "random"]
      vl = vlval[k]
      vta = randint(0,1)
      maskval = randomizeMask(test)

      description = f"cr_vl_lmul (Test lmul = {lmul}, vl = {vl})"
      instruction_data  = randomizeVectorInstructionData(instruction, suite="length")

      writeTest(description, instruction, instruction_data, sew=sew, lmul=lmul, vl=vl, maskval=maskval, vta=vta)
      lengthtest_count += 1

def make_mask_corners(instruction, sew):
  global lengthtest_count

  vma = randint(0,1)
  cp_masking_corners_data = ["ones", "zeroes", "vlmaxm1_ones", "vlmaxd2p1_ones", "cp_mask_random"]

  for m in cp_masking_corners_data:
    vma = randint(0,1)

    description = f"cp_masking_corners (Test v0 = {m})"
    instruction_data  = randomizeVectorInstructionData(instruction, suite="length")

    writeTest(description, instruction, instruction_data, sew=sew, vl="vlmax", maskval=m, vma=vma)
    lengthtest_count += 1

def make_vtype_agnostic(instruction, sew):
  global legalvlmuls, lengthtest_count
  for t in [0,1]:
    for m in [0,1]:
      if (instruction in vd_widen_ins) or (instruction in narrowins) or (instruction in wvsins):
        lmul = 2 ** randint(0, 2) # exclude LMUL = 8 for widening/narrowing instr
      else:
        lmul = 2 ** randint(0, 3) # pick random integer LMUL to ensure that coverpoints are hit

      maskval = randomizeMask(instruction)
      vta = t
      vma = m

      description = f"cr_vtype_agnostic (Test vta = {vta}, vma = {vma})"
      instruction_data  = randomizeVectorInstructionData(instruction, suite="length")

      writeTest(description, instruction, instruction_data, sew=sew, lmul=lmul, vl="random", maskval=maskval, vta=vta, vma=vma)
      lengthtest_count += 1

# Python randomizes hashes, while we are trying to have a repeatable hash for repeatable test cases. This function gives a simple hash as a random seed.
def myhash(s):
  h = 0
  for c in s:
    h = (h * 31 + ord(c)) & 0xFFFFFFFF
  return h


def write_tests(coverpoints, test, sew=None):
  global NaNBox_tests, basetest_count
  # default vl and lmul settings for base suite
  for coverpoint in coverpoints:
    # produce a deterministic seed for repeatable random numbers distinct for each instruction and coverpoint
    testname = test + coverpoint
    hashval = myhash(testname)
    # hashval = hash(testname) # doesn't work because of Python hash randomization
    seed(hashval)
    #seed(hash(test + coverpoint))
    ############################# base suite #############################
    if (coverpoint == "cp_asm_count"):
      pass
    elif (coverpoint == "cp_rd"):
      make_rdv(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_rs1"):
      make_rs1_v(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_imm_5bit") or (coverpoint == "cp_imm_5bit_u"):
      make_imm_v(test, sew)
    elif (coverpoint == "cp_vd"):
      make_vd(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_vs3"):
      make_vs3(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_vd_nv0"):
      make_vd(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vd_emul2"):
      make_vd(test, sew, range(0,maxreg,2))
    elif (coverpoint == "cp_vd_emul4"):
      make_vd(test, sew, range(0,maxreg,4))
    elif (coverpoint == "cp_vd_emul8"):
      make_vd(test, sew, range(0,maxreg,8))
    elif (coverpoint == "cp_vs2"):
      make_vs2(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_vs2_nv0"):
      make_vs2(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vs2_emul2"):
      make_vs2(test, sew, range(0,maxreg,2))
    elif (coverpoint == "cp_vs2_emul4"):
      make_vs2(test, sew, range(0,maxreg,4))
    elif (coverpoint == "cp_vs2_emul8"):
      make_vs2(test, sew, range(0,maxreg,8))
    elif (coverpoint == "cp_vs1"):
      make_vs1(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_vs1_nv0"):
      make_vs1(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vs1_emul2"):
      make_vs1(test, sew, range(0,maxreg,2))
    elif (coverpoint == "cmp_vd_vs2"):
      make_vd_vs2(test, sew, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs2_nv0"):
      make_vd_vs2(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs2_emul2"):
      make_vd_vs2(test, sew, range(0,maxreg,2))
    elif (coverpoint == "cmp_vd_vs2_emul4"):
      make_vd_vs2(test, sew, range(0,maxreg,4))
    elif (coverpoint == "cmp_vd_vs2_emul8"):
      make_vd_vs2(test, sew, range(0,maxreg,8))
    elif (coverpoint == "cmp_vd_vs1"):
      make_vd_vs1(test, sew, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_nv0"):
      make_vd_vs1(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_emul2"):
      make_vd_vs1(test, sew, range(0,maxreg,2))
    elif (coverpoint == "cmp_vs1_vs2"):
      make_vs1_vs2(test, sew, range(maxreg+1))
    elif (coverpoint == "cmp_vs1_vs2_nv0"):
      make_vs1_vs2(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_vs2"):
      make_vd_vs1_vs2(test, sew, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_vs2_nv0"):
      make_vd_vs1_vs2(test, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vs2_corners"):
      make_vs2_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cp_vs2_corners_emul2"):
      make_vs2_corners(test, sew, vcornersemul2)
    elif (coverpoint == "cp_vs2_corners_emul4"):
      make_vs2_corners(test, sew, vcornersemul4)
    elif (coverpoint == "cp_vs2_corners_emul8"):
      make_vs2_corners(test, sew, vcornersemul8)
    elif (coverpoint == "cp_vs2_corners_emulf2"):
      make_vs2_corners(test, sew, vcornersemulf2)
    elif (coverpoint == "cp_vs2_corners_emulf4"):
      make_vs2_corners(test, sew, vcornersemulf4)
    elif (coverpoint == "cp_vs2_corners_emulf8"):
      make_vs2_corners(test, sew, vcornersemulf8)
    elif (coverpoint == "cp_vs2_corners_eew1"):
      make_vs2_corners(test, sew, vcornerseew1, vl=8)  # assume vl = 8 for mask logical instr
    elif (coverpoint == "cp_vs1_corners"):
      make_vs1_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cp_vs1_corners_emul2"):
      make_vs1_corners(test, sew, vcornersemul2)
    elif (coverpoint == "cp_vs1_corners_eew1"):
      make_vs1_corners(test, sew, vcornerseew1, vl=8)  # assume vl = 8 for mask logical instr
    elif (coverpoint == "cp_rs1_corners"):
      make_rs1_corners_v(test, sew, range(maxreg+1))
    elif (coverpoint == "cr_vs2_vs1_corners"):
      make_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul1)
    elif (coverpoint == "cr_vs2_vs1_corners_wv"):
      make_vs2_vs1_corners(test, sew, vcornersemul2, vcornersemul1)
    elif (coverpoint == "cr_vs2_vs1_corners_wred"):
      make_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul2)
    elif (coverpoint == "cr_vs2_vs1_corners_mm"):
      make_vs2_vs1_corners(test, sew, vcornerseew1, vcornerseew1, vl=8)
    elif (coverpoint == "cr_vs2_rs1_corners"):
      make_vs2_rs1_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cr_vs2_rs1_corners_wx"):
      make_vs2_rs1_corners(test, sew, vcornersemul2)
    elif (coverpoint == "cp_imm_corners_5bit" or coverpoint == "cp_imm_corners_5bit_u"):
      pass # already tested in cp_imm_5bit but needed for cr_vs2_imm_corners
    elif (coverpoint == "cp_csr_vxrm"):
      pass # already tested in cross coverpoints with vs2 and vs1/rs1/imm
    elif (coverpoint == "cr_vs2_imm_corners" or coverpoint == "cr_vs2_imm_corners_u"):
      make_vs2_imm_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cr_vs2_imm_corners_wi" or coverpoint == "cr_vs2_imm_corners_wiu"):
      make_vs2_imm_corners(test, sew, vcornersemul2)
    elif (coverpoint == "cr_vxrm_vs2_vs1_corners"):
      make_vxrm_vs2_vs1_corners(test, sew, vcornersemul1, vcornersemul1)
    elif (coverpoint == "cr_vxrm_vs2_vs1_corners_wv"):
      make_vxrm_vs2_vs1_corners(test, sew, vcornersemul2, vcornersemul1)
    elif (coverpoint == "cr_vxrm_vs2_rs1_corners"):
      make_vxrm_vs2_rs1_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cr_vxrm_vs2_rs1_corners_wx"):
      make_vxrm_vs2_rs1_corners(test, sew, vcornersemul2)
    elif (coverpoint == "cr_vxrm_vs2_imm_corners"):
      make_vxrm_vs2_imm_corners(test, sew, vcornersemul1)
    elif (coverpoint == "cr_vxrm_vs2_imm_corners_wi"):
      make_vxrm_vs2_imm_corners(test, sew, vcornersemul2)
    ############################ length suite ############################
    elif (coverpoint == "cp_masking_corners"):
      make_mask_corners(test, sew)
    elif (coverpoint in ["cp_csr_vtype_lmul_all_sew8", "cp_csr_vtype_lmul_all_sew16", "cp_csr_vtype_lmul_all_sew32", "cp_csr_vtype_lmul_all_sew64", "cp_csr_vl_corners",
                         "cp_csr_vtype_lmul_all_lmul4max_sew8", "cp_csr_vtype_lmul_all_lmul4max_sew16", "cp_csr_vtype_lmul_all_lmul4max_sew32", "cp_csr_vtype_lmul_all_lmul4max_sew64"]):
      pass # helper coverpoints, crossed in cr_vl_lmul
    elif (coverpoint in ["cr_vl_lmul_sew8", "cr_vl_lmul_sew16", "cr_vl_lmul_sew32", "cr_vl_lmul_sew64"]):
      make_vl_lmul(test, sew)            # includes tests for legal LMUL up to 8
    elif (coverpoint in ["cr_vl_lmul_lmul4max_sew8", "cr_vl_lmul_lmul4max_sew16", "cr_vl_lmul_lmul4max_sew32", "cr_vl_lmul_lmul4max_sew64"]):
      make_vl_lmul(test, sew, maxlmul=4) # includes tests for legal LMUL up to 4
    elif (coverpoint in ["cp_csr_vtype_vta", "cp_csr_vtype_vma"]):
      pass # helper coverpoints, crossed in cr_vtype_agnostic
    elif (coverpoint == "cr_vtype_agnostic"):
      make_vtype_agnostic(test, sew)
    else:
      print("Warning: " + coverpoint + " not implemented yet for " + test)


def getcovergroups(coverdefdir, coverfiles, xlen):
  coverpoints = {}
  curinstr = ""
  mode = "both"
  ingroup = False
  for coverfile in coverfiles:
    coverfile = coverdefdir + "/" + coverfile + "_coverage.svh"
    f = open(coverfile, "r")
    for line in f:
      if (re.search("covergroup .* with", line)):
        ingroup = True
      if (re.search("endgroup", line)):
        ingroup = False
      if ((not ingroup) and re.search('`ifdef XLEN32', line)):
        mode = 32
      if ((not ingroup) and re.search('`ifdef XLEN64', line)):
        mode = 64
      # only look for coverpoints if we are of the proper xlen
      #print("mode: " + str(mode) + " xlen: " + str(xlen) + " " + line)
      if (mode == "both" or mode == xlen):
        m = re.search(r'covergroup.*?_(.*?)_cg', line)
        if (m):
          curinstr = m.group(1).replace("_", ".")
          # print(f'instr is: {curinstr}')
          coverpoints[curinstr] = []
        m = re.search(r"\s*(\S+) :", line)
        if (m):
          # print(f'coverpoint: {m.group(1)}')
          coverpoints[curinstr].append(m.group(1))
    f.close()
    return coverpoints

def getExtensions():
  extensions = []
  path = ARCH_VERIF+"/fcov/unpriv"
  for (dirpath, dirnames, filenames) in os.walk(path):
    for filename in filenames:
      m = re.search("(.*)_coverage.svh", filename)
      if (m != None):
        ext = m.group(1)
        if 'V' in ext or 'v' in ext:
          extensions.append(ext)
  return extensions


def genVector(test, sew, vs="vs2", emul=1):
  global basetest_count
  f.write("\n\n")
  f.write("///////////////////////////////////////////\n")
  f.write(f"// {test}_{vs}_data for {vs}\n")
  f.write("///////////////////////////////////////////\n\n")
  f.write(".section .data\n\n")
  f.write(f"    .align 3\n")
  f.write("// Corner Vectors\n")

  eew = sew * emul
  for suite in ["base", "length"]:
    if (suite == "base"):
      maxVtests = basetest_count
      vl = 1
      num_words = math.ceil((vl * eew) / 32)
    else:
      maxVtests = lengthtest_count
      num_words = math.ceil(maxVLEN / 32)
    for t in range(maxVtests):
        f.write(f"{vs}_random_{suite}_{t:03d}:\n")
        for i in range(num_words):
            randomElem = getrandbits(32)
            f.write(f"    .word 0x{randomElem:08x}\n")

  f.write("\n")
  #f.close()


def genVMaskCorners(test, sew):
  num_words = math.ceil(maxVLEN / 32)

  # generating random masks for length suite
  f.write(f"    .align 3\n")
  for name in range(3):
    f.write(f"random_mask_{name}:\n")
    val = getrandbits(maxVLEN)
    for i in range(num_words):
      word = (val >> (32 * i)) & 0xFFFFFFFF
      f.write(f"    .word 0x{word:08x}\n")

  # generating random mask for cp_masking_corners
  random_mask = getrandbits(maxVLEN)
  while (random_mask == 0) or (random_mask % 2 == 1): # prevent overlapping with other mask corners
    random_mask = getrandbits(maxVLEN)
  f.write(f"cp_mask_random:\n")
  for i in range(num_words):
      word = (random_mask >> (32 * i)) & 0xFFFFFFFF
      f.write(f"    .word 0x{word:08x}\n")

  f.write("\n")
  #f.close()

def genVsCorners(test, sew, emul):
  def convert(val, bitwidth):
    if (sew == 64) or (eew == 64):
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFFFFFFFFFF:016x}" for i
              in range((bitwidth + (eew - 1)) // eew)]
    else:
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFF:08x}" for i
              in range((bitwidth + (eew-1)) // eew)]

  if (emul[0] == "f"):
    eew = int(sew / int(emul[1]))
    ending = "emul" + emul
  elif (emul == "eew1"):
    eew = 8
    ending = "eew1"
  else:
    eew = sew * int(emul)
    ending = "emul" + emul

  v_register_corners = {
    "zero":   0,
    "one":    1,
    "two":    2,
    "ones":   -1,
    "onesm1": -2,
    "min":    2**(eew - 1),
    "minm1":  2**(eew - 1) + 1,
    "max":    2**(eew - 1) - 1,
    "maxm1":  2**(eew - 1) - 2,
    "walkeven": sum(1 << i for i in range(eew) if i % 2 == 0),
    "walkodd":  sum(1 << i for i in range(eew) if i % 2 == 1)
  }
  while (r := randint(3, 2**(eew - 1) - 3)) in set(v_register_corners.values()): pass
  v_register_corners["random"] = r

  f.write(f"    .align 3\n")
  for corner in v_register_corners:
      val = v_register_corners[corner]
      val &= (1 << eew) - 1
      f.write(f"vs_corner_{corner}_{ending}:\n")
      for w in convert(val, eew):
        if (sew == 64) or (eew == 64):
          f.write(f"    .dword {w}\n")
        else:
          f.write(f"    .word {w}\n")

#
# main body
#
# change these to suite your tests
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

vvvmtype  = ["vadd.vv", "vwadd.vv", "vwaddu.vv", "vsub.vv", "vwsub.vv", "vwsubu.vv", "vwadd.wv", "vwsub.wv", "vwaddu.wv", "vwsubu.wv",
             "vmadc.vv", "vmsbc.vv", "vand.vv", "vor.vv", "vxor.vv", "vsll.vv", "vsrl.vv", "vsra.vv", "vnsra.wv", "vnsrl.wv",
             "vmseq.vv", "vmsne.vv", "vmslt.vv", "vmsltu.vv", "vmsle.vv", "vmsleu.vv", "vmin.vv", "vminu.vv", "vmax.vv", "vmaxu.vv",
             "vmul.vv", "vmulh.vv", "vmulhu.vv", "vmulhsu.vv", "vwmul.vv", "vwmulu.vv", "vwmulsu.vv", "vdiv.vv", "vdivu.vv", "vrem.vv", "vremu.vv",
             "vsadd.vv", "vsaddu.vv", "vssub.vv", "vssubu.vv", "vaadd.vv", "vaaddu.vv", "vasub.vv", "vasubu.vv", "vsmul.vv", "vssrl.vv", "vssra.vv", "vnclip.wv", "vnclipu.wv",
             "vredsum.vs", "vwredsum.vs", "vwredsumu.vs", "vredmax.vs", "vredmaxu.vs", "vredmin.vs", "vredminu.vs", "vredand.vs", "vredor.vs", "vredxor.vs",
             "vrgather.vv", "vrgatherei16.vv"]

type_vxm = [
    # Unit-stride loads
    "vle8.v", "vle16.v", "vle32.v", "vle64.v",
    "vlseg2e8.v", "vlseg2e16.v", "vlseg2e32.v", "vlseg2e64.v",
    "vlseg3e8.v", "vlseg3e16.v", "vlseg3e32.v", "vlseg3e64.v",
    "vlseg4e8.v", "vlseg4e16.v", "vlseg4e32.v", "vlseg4e64.v",
    "vlseg5e8.v", "vlseg5e16.v", "vlseg5e32.v", "vlseg5e64.v",
    "vlseg6e8.v", "vlseg6e16.v", "vlseg6e32.v", "vlseg6e64.v",
    "vlseg7e8.v", "vlseg7e16.v", "vlseg7e32.v", "vlseg7e64.v",
    "vlseg8e8.v", "vlseg8e16.v", "vlseg8e32.v", "vlseg8e64.v",
    # Fault-only-first loads
    "vle8ff.v", "vle16ff.v", "vle32ff.v", "vle64ff.v",
    "vlseg2e8ff.v", "vlseg2e16ff.v", "vlseg2e32ff.v", "vlseg2e64ff.v",
    "vlseg3e8ff.v", "vlseg3e16ff.v", "vlseg3e32ff.v", "vlseg3e64ff.v",
    "vlseg4e8ff.v", "vlseg4e16ff.v", "vlseg4e32ff.v", "vlseg4e64ff.v",
    "vlseg5e8ff.v", "vlseg5e16ff.v", "vlseg5e32ff.v", "vlseg5e64ff.v",
    "vlseg6e8ff.v", "vlseg6e16ff.v", "vlseg6e32ff.v", "vlseg6e64ff.v",
    "vlseg7e8ff.v", "vlseg7e16ff.v", "vlseg7e32ff.v", "vlseg7e64ff.v",
    "vlseg8e8ff.v", "vlseg8e16ff.v", "vlseg8e32ff.v", "vlseg8e64ff.v"
]

type_vxxm = [
    # Strided loads
    "vlse8.v", "vlse16.v", "vlse32.v", "vlse64.v",
    "vlsseg2e8.v", "vlsseg2e16.v", "vlsseg2e32.v", "vlsseg2e64.v",
    "vlsseg3e8.v", "vlsseg3e16.v", "vlsseg3e32.v", "vlsseg3e64.v",
    "vlsseg4e8.v", "vlsseg4e16.v", "vlsseg4e32.v", "vlsseg4e64.v",
    "vlsseg5e8.v", "vlsseg5e16.v", "vlsseg5e32.v", "vlsseg5e64.v",
    "vlsseg6e8.v", "vlsseg6e16.v", "vlsseg6e32.v", "vlsseg6e64.v",
    "vlsseg7e8.v", "vlsseg7e16.v", "vlsseg7e32.v", "vlsseg7e64.v",
    "vlsseg8e8.v", "vlsseg8e16.v", "vlsseg8e32.v", "vlsseg8e64.v",
]

type_vxvm = [
    # Indexed unordered loads
    "vluxei8.v", "vluxei16.v", "vluxei32.v", "vluxei64.v",
    "vluxseg2ei8.v", "vluxseg2ei16.v", "vluxseg2ei32.v", "vluxseg2ei64.v",
    "vluxseg3ei8.v", "vluxseg3ei16.v", "vluxseg3ei32.v", "vluxseg3ei64.v",
    "vluxseg4ei8.v", "vluxseg4ei16.v", "vluxseg4ei32.v", "vluxseg4ei64.v",
    "vluxseg5ei8.v", "vluxseg5ei16.v", "vluxseg5ei32.v", "vluxseg5ei64.v",
    "vluxseg6ei8.v", "vluxseg6ei16.v", "vluxseg6ei32.v", "vluxseg6ei64.v",
    "vluxseg7ei8.v", "vluxseg7ei16.v", "vluxseg7ei32.v", "vluxseg7ei64.v",
    "vluxseg8ei8.v", "vluxseg8ei16.v", "vluxseg8ei32.v", "vluxseg8ei64.v",
    # Indexed ordered Loads
    "vloxei8.v", "vloxei16.v", "vloxei32.v", "vloxei64.v",
    "vloxseg2ei8.v", "vloxseg2ei16.v", "vloxseg2ei32.v", "vloxseg2ei64.v",
    "vloxseg3ei8.v", "vloxseg3ei16.v", "vloxseg3ei32.v", "vloxseg3ei64.v",
    "vloxseg4ei8.v", "vloxseg4ei16.v", "vloxseg4ei32.v", "vloxseg4ei64.v",
    "vloxseg5ei8.v", "vloxseg5ei16.v", "vloxseg5ei32.v", "vloxseg5ei64.v",
    "vloxseg6ei8.v", "vloxseg6ei16.v", "vloxseg6ei32.v", "vloxseg6ei64.v",
    "vloxseg7ei8.v", "vloxseg7ei16.v", "vloxseg7ei32.v", "vloxseg7ei64.v",
    "vloxseg8ei8.v", "vloxseg8ei16.v", "vloxseg8ei32.v", "vloxseg8ei64.v"
]

type_vsxm = [
    # Unit-stride Stores
    "vse8.v", "vse16.v", "vse32.v", "vse64.v",
    "vsseg2e8.v", "vsseg2e16.v", "vsseg2e32.v", "vsseg2e64.v",
    "vsseg3e8.v", "vsseg3e16.v", "vsseg3e32.v", "vsseg3e64.v",
    "vsseg4e8.v", "vsseg4e16.v", "vsseg4e32.v", "vsseg4e64.v",
    "vsseg5e8.v", "vsseg5e16.v", "vsseg5e32.v", "vsseg5e64.v",
    "vsseg6e8.v", "vsseg6e16.v", "vsseg6e32.v", "vsseg6e64.v",
    "vsseg7e8.v", "vsseg7e16.v", "vsseg7e32.v", "vsseg7e64.v",
    "vsseg8e8.v", "vsseg8e16.v", "vsseg8e32.v", "vsseg8e64.v"
]

type_vsxxm = [
    # Strided Stores
    "vsse8.v", "vsse16.v", "vsse32.v", "vsse64.v",
    "vssseg2e8.v", "vssseg2e16.v", "vssseg2e32.v", "vssseg2e64.v",
    "vssseg3e8.v", "vssseg3e16.v", "vssseg3e32.v", "vssseg3e64.v",
    "vssseg4e8.v", "vssseg4e16.v", "vssseg4e32.v", "vssseg4e64.v",
    "vssseg5e8.v", "vssseg5e16.v", "vssseg5e32.v", "vssseg5e64.v",
    "vssseg6e8.v", "vssseg6e16.v", "vssseg6e32.v", "vssseg6e64.v",
    "vssseg7e8.v", "vssseg7e16.v", "vssseg7e32.v", "vssseg7e64.v",
    "vssseg8e8.v", "vssseg8e16.v", "vssseg8e32.v", "vssseg8e64.v"
]

type_vsxvm = [
    # Indexed unordered Stores
    "vsuxei8.v", "vsuxei16.v", "vsuxei32.v", "vsuxei64.v",
    "vsuxseg2ei8.v", "vsuxseg2ei16.v", "vsuxseg2ei32.v", "vsuxseg2ei64.v",
    "vsuxseg3ei8.v", "vsuxseg3ei16.v", "vsuxseg3ei32.v", "vsuxseg3ei64.v",
    "vsuxseg4ei8.v", "vsuxseg4ei16.v", "vsuxseg4ei32.v", "vsuxseg4ei64.v",
    "vsuxseg5ei8.v", "vsuxseg5ei16.v", "vsuxseg5ei32.v", "vsuxseg5ei64.v",
    "vsuxseg6ei8.v", "vsuxseg6ei16.v", "vsuxseg6ei32.v", "vsuxseg6ei64.v",
    "vsuxseg7ei8.v", "vsuxseg7ei16.v", "vsuxseg7ei32.v", "vsuxseg7ei64.v",
    "vsuxseg8ei8.v", "vsuxseg8ei16.v", "vsuxseg8ei32.v", "vsuxseg8ei64.v",
    # Indexed ordered Stores
    "vsoxei8.v", "vsoxei16.v", "vsoxei32.v", "vsoxei64.v",
    "vsoxseg2ei8.v", "vsoxseg2ei16.v", "vsoxseg2ei32.v", "vsoxseg2ei64.v",
    "vsoxseg3ei8.v", "vsoxseg3ei16.v", "vsoxseg3ei32.v", "vsoxseg3ei64.v",
    "vsoxseg4ei8.v", "vsoxseg4ei16.v", "vsoxseg4ei32.v", "vsoxseg4ei64.v",
    "vsoxseg5ei8.v", "vsoxseg5ei16.v", "vsoxseg5ei32.v", "vsoxseg5ei64.v",
    "vsoxseg6ei8.v", "vsoxseg6ei16.v", "vsoxseg6ei32.v", "vsoxseg6ei64.v",
    "vsoxseg7ei8.v", "vsoxseg7ei16.v", "vsoxseg7ei32.v", "vsoxseg7ei64.v",
    "vsoxseg8ei8.v", "vsoxseg8ei16.v", "vsoxseg8ei32.v", "vsoxseg8ei64.v"
]

type_vx = [
    # Whole Register Loads
    "vl1re8.v", "vl2re8.v", "vl4re8.v", "vl8re8.v",
    "vl1re16.v", "vl2re16.v", "vl4re16.v", "vl8re16.v",
    "vl1re32.v", "vl2re32.v", "vl4re32.v", "vl8re32.v",
    "vl1re64.v", "vl2re64.v", "vl4re64.v", "vl8re64.v",
    # Mask Load
    "vlm.v"
]

type_vsx = [
    # Whole Register Stores
    "vs1r.v", "vs2r.v", "vs4r.v", "vs8r.v",
    # Mask Store
    "vsm.v"
]

vvxmtype  = ["vadd.vx", "vwadd.vx", "vwaddu.vx", "vsub.vx", "vwsub.vx", "vwsubu.vx", "vrsub.vx", "vwadd.wx", "vwsub.wx", "vwaddu.wx", "vwsubu.wx",
             "vmadc.vx", "vmsbc.vx", "vand.vx", "vor.vx", "vxor.vx", "vsll.vx", "vsrl.vx", "vsra.vx", "vnsra.wx", "vnsrl.wx",
             "vmseq.vx", "vmsne.vx", "vmslt.vx", "vmsltu.vx", "vmsle.vx", "vmsleu.vx", "vmsgt.vx", "vmsgtu.vx", "vmin.vx", "vminu.vx", "vmax.vx", "vmaxu.vx",
             "vmul.vx", "vmulh.vx", "vmulhu.vx", "vmulhsu.vx", "vwmul.vx", "vwmulu.vx", "vwmulsu.vx", "vdiv.vx", "vdivu.vx", "vrem.vx", "vremu.vx",
             "vsadd.vx", "vsaddu.vx", "vssub.vx", "vssubu.vx", "vaadd.vx", "vaaddu.vx", "vasub.vx", "vasubu.vx", "vsmul.vx", "vssrl.vx", "vssra.vx", "vnclip.wx", "vnclipu.wx",
             "vslideup.vx", "vslidedown.vx", "vslide1up.vx", "vslide1down.vx", "vrgather.vx"]

vvimtype  = ["vadd.vi", "vrsub.vi", "vmadc.vi",
             "vand.vi", "vor.vi", "vxor.vi", "vsll.vi", "vsrl.vi", "vsra.vi", "vnsra.wi", "vnsrl.wi",
             "vmseq.vi", "vmsne.vi", "vmsle.vi", "vmsleu.vi", "vmsgt.vi", "vmsgtu.vi",
             "vsadd.vi", "vsaddu.vi", "vssrl.vi", "vssra.vi", "vnclip.wi", "vnclipu.wi",
             "vslideup.vi", "vslidedown.vi", "vrgather.vi"]

xvmtype   = ["vcpop.m", "vfirst.m"]

vvvmrtype = ["vmacc.vv", "vnmsac.vv", "vmadd.vv", "vnmsub.vv", "vwmacc.vv", "vwmaccu.vv", "vwmaccsu.vv"]
vvmtype   = ["vmsbf.m", "viota.m", "vmsif.m", "vmsof.m", "vzext.vf2", "vzext.vf4", "vzext.vf8", "vsext.vf2", "vsext.vf4", "vsext.vf8"]
vxvmtype  = ["vmacc.vx", "vnmsac.vx", "vmadd.vx", "vnmsub.vx", "vwmacc.vx", "vwmaccu.vx", "vwmaccsu.vx", "vwmaccus.vx"]
vvrtype   = ["vmv.v.v"]
vxtype    = ["vmv.s.x", "vmv.v.x"]
vitype    = ["vmv.v.i"]
xvtype    = ["vmv.x.s"]
vvvxtype  = ["vmv1r.v", "vmv2r.v", "vmv4r.v", "vmv8r.v"]
vmtype    = ["vid.v"]
vvivtype  = ["vadc.vim", "vmerge.vim", "vmadc.vim"]
vvvvtype  = ["vadc.vvm", "vsbc.vvm", "vmerge.vvm", "vmadc.vvm", "vmsbc.vvm"]
vvxvtype  = ["vadc.vxm", "vsbc.vxm", "vmerge.vxm", "vmadc.vxm", "vmsbc.vxm"]
vvvtype   = ["vmand.mm", "vmnand.mm", "vmandn.mm", "vmxor.mm", "vmor.mm", "vmnor.mm", "vmorn.mm", "vmxnor.mm", "vcompress.vm"]
imm_31 = ["vnclip.wi", "vnclipu.wi", "vnsra.wi","vnsrl.wi", "vrgather.vi", "vslidedown.vi", "vslideup.vi", "vsll.vi", "vsra.vi", "vsrl.vi","vssra.vi", "vssrl.vi"]
vectortypes = vvvtype + vmtype + xvtype + vitype + vxtype + vvrtype + vvmtype + xvmtype + vvimtype + vvxmtype + vvvmtype + vvivtype + vvvvtype + vvxvtype + vxvmtype + vvvxtype + vvvmrtype

vs1ins = vvvmtype + vvrtype + vvvvtype + vvvtype + vvvmrtype
vfloattypes = ["vfadd.vv"]

# vector instruction groups by EEW (prefix + suffix)
# normal
vvins = ["vadd.vv", "vsub.vv", "vand.vv", "vor.vv", "vxor.vv", "vsll.vv", "vsrl.vv", "vsra.vv", "vmin.vv", "vminu.vv", "vmax.vv", "vmaxu.vv", "vmul.vv", "vmulh.vv", "vmulhu.vv", "vmulhsu.vv",
         "vdiv.vv", "vdivu.vv", "vrem.vv", "vremu.vv", "vsadd.vv", "vsaddu.vv", "vssub.vv", "vssubu.vv", "vaadd.vv", "vaaddu.vv", "vasub.vv", "vasubu.vv", "vsmul.vv", "vssrl.vv", "vssra.vv"]
vxins = ["vadd.vx", "vsub.vx", "vrsub.vx", "vand.vx", "vor.vx", "vxor.vx", "vsll.vx", "vsrl.vx", "vsra.vx", "vmin.vx", "vminu.vx", "vmax.vx", "vmaxu.vx", "vmul.vx", "vmulh.vx", "vmulhu.vx", "vmulhsu.vx",
         "vdiv.vx", "vdivu.vx", "vrem.vx", "vremu.vx", "vsadd.vx", "vsaddu.vx", "vssub.vx", "vssubu.vx", "vaadd.vx", "vaaddu.vx", "vasub.vx", "vasubu.vx", "vsmul.vx", "vssrl.vx", "vssra.vx"]
viins = ["vadd.vi", "vrsub.vi", "vand.vi", "vor.vi", "vxor.vi", "vsll.vi", "vsrl.vi", "vsra.vi", "vsadd.vi", "vsaddu.vi", "vssrl.vi", "vssra.vi"]
# narrowing
wvins = ["vnsrl.wv", "vnsra.wv", "vnclip.wv", "vnclipu.wv"]
wxins = ["vnsrl.wx", "vnsra.wx", "vnclip.wx", "vnclipu.wx"]
wiins = ["vnsrl.wi", "vnsra.wi", "vnclip.wi", "vnclipu.wi"]
narrowins = wvins + wxins + wiins
# widening
wvvins = ["vwadd.vv", "vwaddu.vv", "vwsub.vv", "vwsubu.vv", "vwmul.vv", "vwmulu.vv", "vwmulsu.vv", "vwmacc.vv", "vwmaccu.vv", "vwmaccsu.vv"]
wvxins = ["vwadd.vx", "vwaddu.vx", "vwsub.vx", "vwsubu.vx", "vwmul.vx", "vwmulu.vx", "vwmulsu.vx", "vwmacc.vx", "vwmaccu.vx", "vwmaccsu.vx", "vwmaccus.vx"]
wwvins = ["vwadd.wv", "vwaddu.wv", "vwsub.wv", "vwsubu.wv"]
wwxins = ["vwadd.wx", "vwaddu.wx", "vwsub.wx", "vwsubu.wx"]
vd_widen_ins = wvvins + wvxins + wwvins + wwxins
vs2_widen_ins = narrowins + wwvins + wwxins
# masking
vvmins = ["vadc.vvm", "vsbc.vvm", "vmerge.vvm"]
vxmins = ["vadc.vxm", "vsbc.vxm", "vmerge.vxm"]
vimins = ["vadc.vim", "vmerge.vim"]
mvvins = ["vmadc.vv", "vmsbc.vv", "vmseq.vv", "vmsne.vv", "vmslt.vv", "vmsltu.vv", "vmsle.vv", "vmsleu.vv"]
mvxins = ["vmadc.vx", "vmsbc.vx", "vmseq.vx", "vmsne.vx", "vmslt.vx", "vmsltu.vx", "vmsle.vx", "vmsleu.vx", "vmsgt.vx", "vmsgtu.vx"]
mviins = ["vmadc.vi", "vmseq.vi", "vmsne.vi", "vmsle.vi", "vmsleu.vi", "vmsgt.vi", "vmsgtu.vi"]
mvvmins = ["vmadc.vvm", "vmsbc.vvm"]
mvxmins = ["vmadc.vxm", "vmsbc.vxm"]
mvimins = ["vmadc.vim"]
mmins = ["vmand.mm", "vmnand.mm", "vmandn.mm", "vmxor.mm", "vmor.mm", "vmnor.mm", "vmorn.mm", "vmxnor.mm"]
maskins = mvvins + mvxins + mviins + mvvmins + mvxmins + mvimins
v_mins = vvmins + vxmins + vimins
mv_ins = mvvins + mvxins + mviins
mv_mins = mvvmins + mvxmins + mvimins
# extending
vextins = ["vzext.vf2", "vzext.vf4", "vzext.vf8", "vsext.vf2", "vsext.vf4", "vsext.vf8"]
# widening reduction
wvsins = ["vwredsum.vs", "vwredsumu.vs"]
# slide/gather/compress
vslideupins = ["vslideup.vx", "vslideup.vi", "vslide1up.vx"]
vslidedownins = ["vslidedown.vx", "vslidedown.vi", "vslide1down.vx"]
vrgatherins = ["vrgather.vv", "vrgather.vx", "vrgather.vi", "vrgatherei16.vv"]
vcompressins = ["vcompress.vm"]
vupgatherins = vslideupins + vrgatherins
# mask logical
vmlogicalins = ["vmsbf.m", "viota.m", "vmsif.m", "vmsof.m"]
vredins = ["vredsum.vs", "vwredsumu.vs", "vwredsum.vs", "vredmaxu.vs", "vredmax.vs", "vredminu.vs", "vredmin.vs", "vredand.vs", "vredor.vs", "vredxor.vs"]

vmvins = vvrtype + vxtype + vitype + xvtype + vvvxtype + vcompressins

if __name__ == '__main__':

# TODO: auipc missing, check whatelse is missing in ^these^ types

  author = "David_Harris@hmc.edu"
  xlens = [32, 64]
  numrand = 3
  corners = []
  fcorners = []

  # setup
  seed(0) # make tests reproducible

  fcorners =            [0x00000000, # 0
                            0x80000000, # -0
                            0x3f800000, # 1.0
                            0xbf800000, # -1.0
                            0x3fc00000, # 1.5
                            0xbfc00000, # -1.5
                            0x40000000,  # 2.0
                            0xc0000000,  # -2.0
                            0x00800000,  # smallest positive normalized
                            0x80800000,  # smallest negative normalized
                            0x7f7fffff,  # most positive
                            0xff7fffff,  # most negative
                            0x007fffff,  # largest positive subnorm
                            0x807fffff,  # largest negative subnorm
                            0x00400000,  # positive subnorm with leading 1
                            0x80400000,  # negative subnorm with leading 1
                            0x00000001,  # smallest positive subnorm
                            0x80000001,  # smallest negative subnorm
                            0x7f800000,  # positive infinity
                            0xff800000,  # negative infinity
                            0x7fc00000,  # canonical quiet NaN
                            0x7fffffff,  # noncanonical quiet NaN
                            0xffffffff,  # noncanonical quiet NaN with sign bit set
                            0x7f800001,  # signaling NaN with lsb set
                            0x7fbfffff,  # signaling NaN with all mantissa bits set
                            0xffbfffff,  # signaling Nan with all mantissa bits and sign bit set
                            0x7ef8654f,  # random positive 1.65087e+38
                            0x813d9ab0]  # random negative -3.48248e-38

  fcornersD = [0x0000000000000000, # 0.0
              0x8000000000000000,  # -0.0
              0x3FF0000000000000,  # 1.0
              0xBFF0000000000000,  # -1.0
              0x3FF8000000000000,  # 1.5
              0xBFF8000000000000,  #-1.5
              0x4000000000000000,  # 2.0
              0xc000000000000000,  # -2.0
              0x0010000000000000,  # smallest positive normalized
              0x8010000000000000,  # smallest negative normalized
              0x7FEFFFFFFFFFFFFF,  # most positive normalized
              0xFFEFFFFFFFFFFFFF,  # most negative normalized
              0x000FFFFFFFFFFFFF,  # largest positive subnorm
              0x800FFFFFFFFFFFFF,  # largest negative subnorm
              0x0008000000000000,  # mid positive subnorm
              0x8008000000000000,  # mid negative subnorm
              0x0000000000000001,  # smallest positive subnorm
              0x8000000000000001,  # smallest negative subnorm
              0x7FF0000000000000,  # positive infinity
              0xFFF0000000000000,  # negative infinity
              0x7FF8000000000000,  # canonical quiet NaN
              0x7FFFFFFFFFFFFFFF,  # noncanonical quiet NaN
              0xFFF8000000000000,  # noncanonical quiet NaN with sign bit set
              0x7FF0000000000001,  # signaling NaN with lsb set
              0x7FF7FFFFFFFFFFFF,  # signaling NaN with all mantissa bits set
              0xFFF0000000000001,  # signaling NaN with lsb and sign bits set
              0x5A392534A57711AD, # 4.25535e126 random positive
              0xA6E895993737426C] # -2.97516e-121 random negative

  fcornersH = [0x0000, # 0.0
                0x8000, # -0.0
                0x3C00, # 1.0
                0xBC00, # -1.0
                0x3E00, # 1.5
                0xBE00, # -1.5
                0x4000, # 2.0
                0xC000, # -2.0
                0x0400, # smallest normalized
                0x8400, # smallest negative normalized
                0x7BFF, # most positive normalized
                0xFBFF, #  most negative normalized
                0x03FF, # largest positive subnorm
                0x83FF,  # largest negative subnorm
                0x0200,  # positive subnorm with leading 1
                0x8200,  # negative subnorm with leading 1
                0x0001, # smallest positive subnorm
                0x8001,  # smallest negative subnorm
                0x7C00,  # positive infinity
                0xFC00,  # negative infinity
                0x7E00,  # canonical quiet NaN
                0x7FFF,  # noncanonical quiet NaN
                0xFE00,  # noncanonical quiet NaN with sign bit set
                0x7C01, # signaling NaN with lsb set
                0x7DFF,  # signaling NaN with all mantissa bits set
                0xFC01,  # signaling NaN with lsb and sign bits set
                0x58B4,  # 150.5 random positive
                0xC93A]  # -10.4531 random negative

  # fcornersQ = [] # TODO: Fill out quad precision F corners

# generate files for each test
  for xlen in xlens:
    extensions = getExtensions() # find all extensions in
    maxreg = 31 # I uses registers x0-x31

    for extension in extensions:
      coverdefdir = f"{ARCH_VERIF}/fcov/unpriv"
      coverfiles = [extension]
      coverpoints = getcovergroups(coverdefdir, coverfiles, xlen)
      pathname = f"{ARCH_VERIF}/tests/rv{xlen}/{extension}"
      print("Generating tests for " + pathname)
      formatstrlen = str(int(xlen/4))
      formatstr = "0x{:0" + formatstrlen + "x}" # format as xlen-bit hexadecimal number
      formatrefstr = "{:08x}" # format as xlen-bit hexadecimal number with no leading 0x
      if (xlen == 32):
        storecmd = "sw"
        wordsize = 4
      else:
        storecmd = "sd"
        wordsize = 8
      flen = 32
      formatstrlenFP = str(int(flen/4))
      formatstrFP = "0x{:0" + formatstrlenFP + "x}" # format as flen-bit hexadecimal number
      rcornersv = [0, 1, 2, 2**xlen-1, 2**xlen-2, 2**(xlen-1), 2**(xlen-1)+1, 2**(xlen-1)-1, 2**(xlen-1)-2]
      if (xlen == 32):
        rcornersv = rcornersv + [0b01011011101111001000100001110010, 0b10101010101010101010101010101010, 0b01010101010101010101010101010101]
      else:
        rcornersv = rcornersv + [0b0101101110111100100010000111011101100011101011101000011011110010, # random
                            0b1010101010101010101010101010101010101010101010101010101010101010, # walking odd
                            0b0101010101010101010101010101010101010101010101010101010101010101, # walking even
                            0b0000000000000000000000000000000011111111111111111111111111111111, # Wmax
                            0b0000000000000000000000000000000011111111111111111111111111111110, # Wmaxm1
                            0b0000000000000000000000000000000100000000000000000000000000000000, # Wmaxp1
                            0b0000000000000000000000000000000100000000000000000000000000000001] # Wmaxp2

      # global NaNBox_tests
      NaNBox_tests = False

      # cmd = "mkdir -p " + pathname + " ; rm -f " + pathname + "/*" # make directory and remove old tests in dir
      cmd = "mkdir -p " + pathname # make directory
      os.system(cmd)
      basepathname = pathname
      includeVData = " "
      for test in coverpoints.keys():
      # print("Generating test for ", test, " with entries: ", coverpoints[test])

        if (test in imm_31):
          immcornersv = [0, 1, 2, 15, 16, 30, 31]
        else:
          immcornersv = [0, 1, 2, 14, 15, -1, -2, -15, -16]

        vectorcorners = ["vs_corner_zero", "vs_corner_one", "vs_corner_two", "vs_corner_ones", "vs_corner_onesm1", "vs_corner_min", "vs_corner_minm1",
                         "vs_corner_max", "vs_corner_maxm1", "vs_corner_walkeven", "vs_corner_walkodd", "vs_corner_random"]
        vcornersemul1 = [(vcorner + "_emul1") for vcorner in vectorcorners]
        vcornersemul2 = [(vcorner + "_emul2") for vcorner in vectorcorners]
        vcornersemul4 = [(vcorner + "_emul4") for vcorner in vectorcorners]
        vcornersemul8 = [(vcorner + "_emul8") for vcorner in vectorcorners]
        vcornersemulf2 = [(vcorner + "_emulf2") for vcorner in vectorcorners]
        vcornersemulf4 = [(vcorner + "_emulf4") for vcorner in vectorcorners]
        vcornersemulf8 = [(vcorner + "_emulf8") for vcorner in vectorcorners]
        vcornerseew1 = [(vcorner + "_eew1") for vcorner in vectorcorners]

        sigupd_count = 10 # number of entries in signature - start with a margin of 10 spaces
        sigupd_countF = 0  #initialize signature update count for F tests
        signatureWords = 0 #initialize signature words
        basename = "WALLY-COV-" + extension + "-" + test
        fname = pathname + "/" + basename + ".S"
        tempfname = pathname + "/" + basename + "_temp.S"

        # print custom header part
        f = open(tempfname, "w")
        line = "///////////////////////////////////////////\n"
        f.write(line)
        line="// "+fname+ "\n// " + author + "\n"
        f.write(line)
        # Don't print creation date because this forces rebuild of files that are otherwise identical
        #line ="// Created " + str(datetime.now()) + "\n"
        #f.write(line)

        # insert generic header
        insertTemplate("testgen_header_vector.S")

        sigTotal = 0 # total number of bytes in signature
        sigReg = 3 # start with x4 for signatures ->marina changed it to x3 beucase that what riscv-arch-test uses TO DO

        base_suite_test_count = 0
        length_suite_test_count = 0

        # add assembly lines to enable fp where needed
        if test in vfloattypes:
          float_en = "\n# set mstatus.FS to 01 to enable fp\nli t0,0x4000\ncsrs mstatus, t0\n\n"
          f.write(float_en)

        sew_match = re.search(r"/Vx(\d+)", pathname)
        if sew_match is None:
          sew = 8
        else:
          sew = int(sew_match.group(1))

        # Define VLEN, ELEN and SEWMIN as extremes which these tests support
        maxVLEN = 512   # TODO: change to 2048 later, save as 512 for now for smaller files
        elen = 64
        sewmin = 8

        legalvlmuls = getLegalVlmul(elen, sewmin, sew)

        # Set up vl = 1 for base suite
        f.write(f"\n")
        f.write(f"// Initial set vl = 1\n")
        f.write(f"li x2, 1\n")
        f.write(f"vsetvli x0, x2, e{sew}, m1, tu, mu\n")

        # include ifdefs for widening/narrowing instr, which doesn't exist in the ELEN suite
        if (test in vd_widen_ins) or (test in vs2_widen_ins):
          if (sew == 8):
            f.write("#if ELEN > 8\n")
          elif (sew == 16):
            f.write("#if ELEN > 16\n")
          elif (sew == 32):
            f.write("#if ELEN > 32\n")
          elif (sew == 64):
            f.write("#if ELEN > 64\n")

        basetest_count = 0
        lengthtest_count = 0
        write_tests(coverpoints[test], test, sew=sew)

        if (test in vd_widen_ins) or (test in vs2_widen_ins):
          f.write("#endif\n")
        insertTemplate("testgen_footer_vector1.S")

        # generate vector data (random and corners)
        if (test in narrowins) or (test in vd_widen_ins):
          genVector(test, sew, vs="vs2", emul=2)
          if (test in vs1ins):
            genVector(test, sew, vs="vs1")
          genVsCorners(test, sew, "1")
          genVsCorners(test, sew, "2")
        elif (test in wvsins):
          genVector(test, sew, vs="vs2")
          genVector(test, sew, vs="vs1", emul=2)
          genVsCorners(test, sew, "2")
          genVsCorners(test, sew, "1")
        else:
          genVector(test, sew, vs="vs2")
          if (test in vs1ins):
            genVector(test, sew, vs="vs1")
          if (test in vextins):
            genVsCorners(test, sew, test[-2:])
          elif (test in mmins) or (test in xvmtype) or (test in vmlogicalins):
            genVsCorners(test, sew, "eew1")
          else:
            genVsCorners(test, sew, "1")
        genVMaskCorners(test, sew)

        # print footer
        signatureWords = getSigSpace(xlen, flen, sigupd_count, sigupd_countF) #figure out how many words are needed for signature
        insertTemplate("testgen_footer_vector2.S")

        # Finish
        f.close()
        # if new file is different from old file, replace old file with new file
        if os.path.exists(fname):
          if filecmp.cmp(fname, tempfname): # files are the same
            os.system(f"rm {tempfname}") # remove temp file
          else:
            os.system(f"mv {tempfname} {fname}")
            print("Updated " + fname)
        else:
          os.system(f"mv {tempfname} {fname}")
