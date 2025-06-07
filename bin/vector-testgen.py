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
    sigupd_count += 1  # Increment counter on each call
    l = f"RVTEST_SIGUPD(x{sigReg}, x{rd})\n"
    return l

def writeSIGUPD_F(rd):
    global sigupd_count  # Allow modification of global variable
    global sigupd_countF
    sigupd_count += 1  #Increment counter for floating point signature sicne SIGUPD_F macro stores FCSR as SREG
    sigupd_countF += 1  # Increment counter on each call since SIGUPD_F macro stores FREG
    tempReg = 4
    while tempReg == sigReg:
      tempReg = randint(1,31)
    l = f"csrr x{tempReg}, fcsr\n" # Get fcsr into a temp register
    l = l + f"RVTEST_SIGUPD_F(x{sigReg}, f{rd}, x{tempReg})\n"  #x{rd} as fstatus Xreg from macro definition as dummy store (might be needed in another instruction)
    return l

def writeSIGUPD_V(vd, sew):
    global sigupd_count  # Allow modification of global variable
    sigupd_count += 1  # Increment counter on each call
    # TO-DO: sigupd_count modify to vl, sew, lmul, etc.
    avl = 1   # Set AVL
    tempReg = 6
    while tempReg == sigReg:
      tempReg = randint(1,31)
    lines = f"RVTEST_SIGUPD_V(x{sigReg}, x{tempReg}, {avl}, {sew},  v{vd})\n"
    return lines

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

# uses x8 for placing value into vector reg
def loadVecReg(reg, pointer, sew):
    loadop = f"vle{sew}.v"
    lines = ""
    tempReg = 6
    while tempReg == sigReg:
      tempReg = randint(1,31)
    lines = lines + f"la x{tempReg}, {pointer}          # Load address of desired value\n"
    lines = lines + f"{loadop} v{reg}, (x{tempReg})              # Load desired value from memory into v{reg}\n"
    return lines

# handleSignaturePointerConflict switches to a different signature pointer if the current one is needed for the test
def handleSignaturePointerConflict(lines, rs1, rs2, rd, rs3=None):
  global sigReg # this function can modify the signature register
  l = lines
  oldSigReg = sigReg
  while (sigReg == rs1 or sigReg == rs2 or sigReg == rd or sigReg == rs3):
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


def writeVecTest(lines, vd, sew, vlen, testline, test=None, rd=None):
    l = lines + testline
    if (test in widenins):
      l = l + writeSIGUPD_V(vd, 2*sew)  # EEW of vd = 2 * SEW for widening
    elif (test in maskins):
      l = l + writeSIGUPD_V(vd, 1)      # EEW of vd = 1 for mask
    elif (test in vrvxtype):
      l = l + writeSIGUPD(rd)
    else:
      l = l + writeSIGUPD_V(vd, sew)
    return l


# TODO : Check this works with vector (didn't have vector ops in csv yet)
def genFrmTests(testInstr, rd, floatdest, vector=None):
  lines = ""
  frm = ["dyn", "rdn", "rmm", "rne", "rtz", "rup"]
  csrFrm = ["0x4", "0x3", "0x2", "0x1", "0x0"]
  for roundingMode in frm:
    lines = writeVecTest(lines, vd, sew, vlen, f"{testline} {roundingMode} # perform operation\n")
  for csrMode in csrFrm:
    lines = lines + f"\n # set fcsr.frm to {csrMode} \n"
    lines = lines + f"fsrmi {csrMode}\n"
    lines = writeVecTest(lines, vd, sew, vlen, f"{testline} # perform operation\n")
  lines = lines + "\n"
  return lines


def genVxrmTests(testline, lines, vd, sew, lmul):
  vxrm = ["rod", "rdn", "rne", "rnu"]
  csrVxrm = ["0x6", "0x4", "0x2", "0x0"] # vcsr[2:1] -> 11 , 10, 01, 00
  for roundingMode in vxrm:
    lines = writeVecTest(lines, vd, sew, vlen, f"{testline} {roundingMode} # perform operation\n")
  for csrMode in csrVxrm:
    lines = lines + f"\n # set vcsr.vxrm to {csrMode}\n"
    lines = lines + f"li t0, {csrMode}"
    lines = lines + f"csrw vcsr, t0"
    lines = writeVecTest(lines, vd, sew, vlen, testline, lmul=lmul)
    # This might be duplicated when running^
  return lines


def genVxsatTests(lines):
  lines = lines + f"csrr t0, vcsr"
  lines = lines + f"andi t1, t0, 1"
  lines = lines + f"la t2, vxsat_address"
  lines = lines + f"sw t1, 0(t2)"
  return lines


def writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=None, lmul=1, vl=None, vstart=None,
                     rs1=None, fs1=None, rd=None, rs1val=None, fs1val=None, imm=None, maskval=None, vxrm=None,
                     vfrm=None, vfloattype=None, xtype=None, vxsat=None, vta=None, vma=None):

    lines = "\n# Testcase " + str(desc) + "\n"
    lines = handleSignaturePointerConflict(lines, rd, rs1, 6, None) # use rs2 as a place holder for helper_gpr (x6)

    if (vl is not None) and (lmul is not None) and (sew is not None):
      lines = lines + prepBaseV(lines, sew, lmul, vl, vstart, vta, vma)

    maskinstr = " "
    # If mask value specified, load to v0
    if maskval is not None:
      lines = lines + f"la a0, {maskval}\n"
      lines = lines + f"vlm.v v0, (a0)                   # Load mask value into v0\n"
      maskinstr = ", v0.t"

    if ((vfloattype is not None) and (vfrm is not None)):
      testline = f"{test} v{vd}, v{vs2}, v{vs1}{maskinstr}\n"
      lines = lines + genFrmTests(testline, vd, floatdest=True, vector=True)
    elif (vxsat is not None):
      testline = f"{test} v{vd}, v{vs2}, v{vs1}{maskinstr}\n"
      lines = lines + genVxsatTests(testline)
    elif (vxrm is not None):
      testline = f"{test} v{vd}, v{vs2}, v{vs1}{maskinstr}\n"
      lines = lines + genVxrmTests(testline, lines, vd, sew, lmul)
    else:
      # determining EEW for vs2
      if (test in wwvins) or (test in wwxins) or (test in narrowins):
        vs2eew = 2 * sew
        vs1eew = sew
      else:
        vs2eew = sew
        vs1eew = sew

      # test writing
      if (test in vvtype) or (test in vvmtype):
        lines = lines + loadVecReg(vs1, vs1val, vs1eew)
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} v{vd}, v{vs2}, v{vs1}{maskinstr}\n"
      elif (test in vxtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        lines = lines + f"li x{rs1}, {formatstr.format(rs1val)}             # Load immediate value into integer register\n"
        testline = f"{test} v{vd}, v{vs2}, x{rs1}{maskinstr}\n"
      elif (test in vxvtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        lines = lines + f"li x{rs1}, {formatstr.format(rs1val)}             # Load immediate value into integer register\n"
        testline = f"{test} v{vd}, x{rs1}, v{vs2}{maskinstr}\n"
      elif (test in vitype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} v{vd}, v{vs2}, {imm}{maskinstr}\n"
      elif (test in vimtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} v{vd}, v{vs2}, {imm}, v0\n"
      elif (test in vvvmtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        lines = lines + loadVecReg(vs1, vs1val, vs1eew)
        lines = lines + loadVecReg(0, "vtype_mask_corner_0", sew)
        testline = f"{test} v{vd}, v{vs2}, v{vs1}, v0\n"
      elif (test in vxmtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        lines = lines + f"li x{rs1}, {formatstr.format(rs1val)}             # Load immediate value into integer register\n"
        testline = f"{test} v{vd}, v{vs2}, x{rs1}, v0\n"
      elif (test in vrvtype) or (test in vrvxtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} x{rd}, v{vs2}{maskinstr}\n"
      elif (test in vvvtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} v{vd}, v{vs2}{maskinstr}\n"
      elif (test in vdtype):
        testline = f"{test} v{vd}{maskinstr}\n"
      elif (test in vrvtype):
        testline = f"{test} x{rd}, v{vs2}{maskinstr}\n"
      elif (test in vxxtype):
        lines = lines + f"li x{rs1}, {formatstr.format(rs1val)}             # Load immediate value into integer register\n"
        testline = f"{test} v{vd}, x{rs1}{maskinstr}\n"
      elif (test in vvxtype):
        lines = lines + loadVecReg(vs1, vs1val, vs1eew)
        testline = f"{test} v{vd}, v{vs1}{maskinstr}\n"
      elif (test in vvvxtype):
        lines = lines + loadVecReg(vs2, vs2val, vs2eew)
        testline = f"{test} v{vd}, v{vs2}{maskinstr}\n"
      elif (test in vixtype):
        testline = f"{test} v{vd}, {imm}{maskinstr}\n"
      else:
        print("Error: %s type not implemented yet" % test)
        return
      lines = writeVecTest(lines, vd, sew, vlen, testline, test=test, rd=rd)
      f.write(lines)

# return a random register from 1 to maxreg that does not conflict with the signature pointer (or later constant pointer)
def randomNonconflictingReg(test):
  reg = randint(1, maxreg) # 1 to maxreg, inclusive
  while reg == sigReg: # resolve conflicts; *** add constReg when implemented
    reg = randomNonconflictingReg(test)
  return reg

def randomNonconflictingVecReg(test, emul):
  if (emul >= 1):
    reg = emul * randint(1, math.floor(maxreg/emul))
  else: # normal instructions
    reg = randint(1, maxreg) # 1 to maxreg, inclusive
  return reg

def prepBaseV(lines, sew, lmul, vl, vstart, ta, ma):
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
  lines = f"li x8, {vl}                       # Load desired vl value\n" # put desired vl into x8
  lines = lines + f"vsetvli x0, x8, e{sew}, m{lmulflag}{taflag}{maflag}\n"
  if (vstart == True):   # if vstart specified
    lines = lines + f"li x8, {vstart}               # Load desired vstart value\n"
    lines = lines + f"csrw vstart, x8\n"
  return lines

def randomizeVectorV(test, lmul=1, vd=None, vs1=None, vs2=None, vs3=None, rs1=None, rd=None, allunique=True):
    global vRandomCounter
    if vs1 is None:
      vs1 = randomNonconflictingVecReg(test, lmul)
    if vs2 is None:
      if (test in vs2wideins):
        vs2 = randomNonconflictingVecReg(test, 2*lmul)
      else:
        vs2 = randomNonconflictingVecReg(test, lmul)
    if (vs3 is not None):
      vs3 = randomNonconflictingVecReg(test, lmul)
      vs3val = randint(0, 2**sew-1)
    if (rs1 is None):
      rs1 = randomNonconflictingReg(test)
      rs1val = randint(1, 2**xlen)
    if (rd is None):
      rd = randomNonconflictingReg(test)
    # all three source registers must be different for corners to work
    while (vs1 == vs2 and allunique):
      if (test in vs2wideins):
        vs2 = randomNonconflictingVecReg(test, 2*lmul)
      else:
        vs2 = randomNonconflictingVecReg(test, lmul)
    while ((vs3 is not None) and ((vs3 == vs1) or (vs3 == vs2)) and allunique):
      vs3 = randomNonconflictingVecReg(test, lmul)
    # choose vd that is different than rs1 and rs2 and rs3
    if vd is None:
      vd = vs1
    while ((vd == vs1) or (vd == vs2) or ((vs3 is not None) and (vd == vs3))):
      if (test in widenins):
        vd = randomNonconflictingVecReg(test, 2*lmul)
      else:
        vd = randomNonconflictingVecReg(test, lmul)
    vs1mem = vRandomCounter
    vRandomCounter = vRandomCounter + 1
    vs2mem = vRandomCounter
    vRandomCounter = vRandomCounter + 1
    vs1val = f"v_random_{vs1mem:03d}"
    vs2val = f"v_random_{vs2mem:03d}"
    vdval  = "vd_val_random"
    if (test in imm_31):
      immval = randint(0,31)
    else:
      immval = randint(-16,15)
    return [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval]

def make_custom(test, xlen):
    insertTemplate(f"{test}.S")

def insertTest(test):
  f.write(f"\n# Stub for {test}")

def narrowWidenConflictReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval):
  if (test in wvvins) or (test in wvxins):
    while (vd == vs2 or vd == vs1):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in narrowins):
    while (vd == (vs2+1) or vs1 == vs2 or vs1 == (vs2+1)): # narrowing instr can only overlap at the lowest-numbered part of source reg group, using lmul=1 in cp_vd
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in wwvins):
    while (vd == vs1 or vs1 == vs2 or vs1 == (vs2+1)):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  else:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  return [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval]

def avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval):
  if (test in wvvins) or (test in wvxins) or (test in mv_ins) or (test in vextins) or (test in vupgatherins) or (test in vmlogicalins):
    while (vd == vs2 or vd == vs1):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in narrowins):
    while (vd == (vs2+1) or vs1 == vs2 or vs1 == (vs2+1)): # narrowing instr can only overlap at the lowest-numbered part of source reg group, using lmul=1 in cp_vd
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in wwvins):
    while (vd == vs1 or vs1 == vs2 or vs1 == (vs2+1)):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in v_mins):
    while (vd == 0 or vs1 == 0 or vs2 == 0):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in mv_mins):
    while (vs1 == 0 or vs2 == 0 or vd == vs2 or vd == vs1):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in vcompressins):
    while (vd == vs1 or vd == vs2 or vs1 == vs2):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  elif (test in vvvxtype): # vmv<nr>r.v
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test, lmul=int(test[3]))
  else:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
  return [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval]


def make_vd(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wvvins) or (test in wvxins) or (test in mv_ins) or (test in vextins) or (test in vupgatherins) or (test in vmlogicalins):
      while (v == vs2 or v == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in narrowins):
      while (v == (vs2+1) or vs1 == vs2 or vs1 == (vs2+1)): # narrowing instr can only overlap at the lowest-numbered part of source reg group, using lmul=1 in cp_vd
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in wwvins):
      while (v == vs1 or vs1 == vs2 or vs1 == (vs2+1)):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in v_mins):
      while (v == 0 or vs1 == 0 or vs2 == 0):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in mv_mins):
      while (vs1 == 0 or vs2 == 0 or v == vs2 or v == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vcompressins):
      while (v == vs1 or v == vs2 or vs1 == vs2):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vvvxtype): # vmv<nr>r.v
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test, lmul=int(test[3]))
    desc = f"cp_vd (Test destination vd = v" + str(v) + ")"
    writeCovVector_V(desc, vs1, vs2, v, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vs2(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wvvins) or (test in wvxins) or (test in mv_ins) or (test in vextins) or (test in vupgatherins) or (test in vmlogicalins):
      while (v == vd or vd == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in narrowins):
      while (v == (vd-1) or v == vs1 or v == (vs1-1)): # source operands cannot be more than one EEW, using lmul=1 in cp_vs2
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in wwvins):
      while (v == vs1 or v == (vs1-1) or vd == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in v_mins):
      while (vd == 0 or vs1 == 0 or v == 0):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in mv_mins):
      while (vs1 == 0 or v == 0 or vd == v or vd == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vvvxtype): # vmv<nr>r.v
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test, lmul=int(test[3]))
    elif (test in wvsins):
      while (v == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vcompressins):
      while (vd == vs1 or v == vd or v == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = f"cp_vs2 (Test source vs2 = v" + str(v) + ")"
    writeCovVector_V(desc, vs1, v, vd, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vs1(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    while (v == vs2):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wvvins) or (test in mvvins):
      while (v == vd or v == vs2):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in narrowins):
      while (v == vs2 or v == (vs2+1) or vd == (vs2+1)):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in wwvins):
      while (v == vs2 or v == (vs2+1) or v == vd):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in v_mins):
      while (vd == 0 or v == 0 or vs2 == 0):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in mv_mins):
      while (v == 0 or vs2 == 0 or vd == vs2 or vd == v):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vrgatherins):
      while (v == vd or vd == vs2):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vcompressins):
      while (v == vd or vd == vs2 or v == vs2):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = f"cp_vs1 (Test source vs1 = v" + str(v) + ")"
    writeCovVector_V(desc, v, vs2, vd, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vd_vs2(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wwvins):
      while (v == vs1):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    elif (test in vvvxtype): # vmv<nr>r.v
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test, lmul=int(test[3]))
    desc = f"cmp_vd_vs2 (Test vd = vs2 = v{v})"
    writeCovVector_V(desc, vs1, v, v, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vd_vs1(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wvins):
      while (v == vs2 or v == (vs2+1)):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = f"cmp_vd_vs1 (Test vd = vs1 = v" + str(v) + ")"
    writeCovVector_V(desc, v, vs2, v, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vd_vs1_vs2(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = f"cmp_vd_vs1_vs2 (Test vd = vs1 = vs2 = v" + str(v) + ")"
    writeCovVector_V(desc, v, v, v, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vs1_vs2(test, sew, vl, rng):
  for v in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    if (test in wvvins) or (test in mvvins) or (test in mvvmins) or (test in vrgatherins):
      while (v == vd):
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = f"cmp_vs1_vs2 (Test vs1 = vs2 = v" + str(v) + ")"
    writeCovVector_V(desc, v, v, vd, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vs2_corners(test, sew, vl, vcorners):
  for v in vcorners:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
    desc = f"cp_vs2_corners (Test source vs2 value = " + v + ")"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, v, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)


def make_vs1_corners(test, sew, vl, vcorners):
  for v in vcorners:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
    desc = f"cp_vs1_corners (Test source vs1 value = " + v + ")"
    writeCovVector_V(desc, vs1, vs2, vd, v, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0)

def make_rs1_v(test, sew, vl, rng):
  for r in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
    desc = f"cp_rs1 (Test rs1 = " + str(r) + ")"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, rs1=r, rd=rd, rs1val=rs1val, imm=immval, vta=0)

def make_rs1_corners_v(test, sew, vl, rng):
  for rcorner in rcornersv:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
    desc = f"cp_rs1_corners (Test source rs1 value = " + hex(rcorner) + ")"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, rs1=rs1, rd=rd, rs1val=rcorner, imm=immval, vta=0)

def make_imm_v(test, sew, vl):
  if (test in imm_31):
    for uimm in range(0,32):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      desc = "cp_imm_5bit_u (Test uimm = " + str(uimm) + ")"
      writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, imm=uimm, vta=0)
  else:
    for imm in range(-16,16):
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      desc = "cp_imm_5bit (Test imm = " + str(imm) + ")"
      writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, imm=imm, vta=0)

def make_rdv(test, sew, rng):
  for r in rng:
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = "cp_rd (Test rd = " + str(rd) + ")"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, rd=r, imm=immval, vta=0)


def make_vtype(test, vlen, sew, rng):
  legallmuls = [1, 2, 4, 8] # create lmul of [1 random_legal]
  if sew >= 16:
    legallmuls.append(0.5)
  if sew >= 32:
    legallmuls.append(0.25)
  if sew >= 64:
    legallmuls.append(0.125)
  for l in range(2):
    #check lmul first - can either be 1 or a random legal value
    for k in range(3):
      # check vl next - can either be 1, vlmax, or a random legal value > vstart
      for vm in range(3): # check for vm - can either be random single bit, VLEN 1s, or random
        if (l == 0):
          lmul = 1
        else:
          ## pick random lmul from legallmuls
          lmul = legallmuls[randint(1, len(legallmuls)-1)]
        vlmax = int(vlen*(lmul/sew))
        if vlmax <= 1:
          return
        #creating vl:
        if (k == 0):
          vl = 1
        elif (k == 1):
          vl = vlmax
        else:
          vl = randint(0, vlmax-1)
        if (vm == 0):
          m = vtype_maskcorners[0]
        elif (vm == 1):
          m = vtype_maskcorners[1]
        else:
          m = vtype_maskcorners[2]
        vma = randint(0,1)
        vta = randint(0,1)
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
        desc = "cp_vtype"
        writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, lmul=lmul, vl=vl, vstart=0, maskval=m, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vma=vma, vta=vta)


def make_vstart(test, vlen, sew, rng):
  legallmuls = [1, 2, 4, 8]
  if sew >= 16:
    legallmuls.append(0.5)
  if sew >= 32:
    legallmuls.append(0.25)
  if sew >= 64:
    legallmuls.append(0.125)
  for s in range(3):
    # creating lmul - any legal
    lmul = legallmuls[randint(1, len(legallmuls)-1)]
    vlmax = int(vlen*(lmul/sew))
    if vlmax <= 1:
      return
    if s == 0:
      vstart = 2
    elif s == 1:
      vstart = 1 + (vlmax/2)
    else:
      vstart = vlmax - 1
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = "cp_vstart"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, lmul=lmul, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vstart=vstart)


def make_vl(test, vlen, sew, rng):
  for l in range(4):
    for k in range(3):
      for t in range(2):
        #creating lmul first:
        if (l == 0):
          lmul = 1
        elif (l == 1):
          lmul = 2
        elif (l == 2):
          lmul = 4
        else:
          lmul = 8
        vlmax = int(vlen*(lmul/sew)) # added this as a guard
        if vlmax <= 1:
          return
        if (k == 0): #creating vl:
          vl = vlmax
        elif (k == 1):
          vl = int(vlmax - 1)
        else:
          vl = int(1 + (vlmax/2))
        if (t == 0): #creating vta:
          vta = 0
        else:
          vta = 1
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
        desc = "cp_vl"
        writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, lmul=lmul, vl=vl, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=vta)


def make_vs2_vs1_corners(test, sew, vl, vs2corners, vs1corners):
  for v1 in vs1corners:
    for v2 in vs2corners:
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      while vs1 == vs2:
        [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      desc = "cr_vs2_vs1_corners"
      writeCovVector_V(desc, vs1, vs2, vd, v1, v2, test, sew, vta=0)

def make_vs2_rs1_corners(test, sew, vl, vs2corners):
  for r1 in rcornersv:
    for v2 in vs2corners:
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      desc = "cr_vs2_rs1_corners"
      writeCovVector_V(desc, vs1, vs2, vd, vs1val, v2, test, sew=sew, rs1=rs1, rs1val=r1, vta=0)

def make_vs2_imm_corners(test, sew, vl, vs2corners):
  for imm in immcornersv:
    for v2 in vs2corners:
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = avoidConflictingVecReg(test, vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval)
      desc = "cr_vs2_imm_corners"
      writeCovVector_V(desc, vs1, vs2, vd, vs1val, v2, test, sew=sew, imm=imm, vta=0)

def make_vm(test, vlen, sew, rng):
  lmul = 1
  vlmax = int((vlen*lmul)/sew)
  vma = randint(0,1)
  if vlmax <= 1:
    return
  for m in cp_vm_corners:
    vma = randint(0,1)
    [vs1, vs2, rs1, vd, rd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
    desc = "cp_mask"
    writeCovVector_V(desc, vs1, vs2, vd, vs1val, vs2val, test, sew=sew, lmul=1, vl=vlmax, maskval=m, rs1=rs1, rd=rd, rs1val=rs1val, imm=immval, vta=0, vma=vma)


# TODO: Check this with vector FP. Wasnt available in csv yet so couldnt check
def make_vxrm_vs1_vs2_corners(test, vlen, sew, vl, vs2corners, vs1corners):
  for v1 in vs1corners:
    for v2 in vs2corners:
      [vs1, vs2, rs1, vd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      while vs1 == vs2:
        [vs1, vs2, rs1, vd, vs1val, vs2val, rs1val, immval, vdval] = randomizeVectorV(test)
      desc = "cp_vxrm_vs1_vs2_corners"
      writeCovVector_V(desc, vs1, vs2, vd, v1, v2, test, sew=sew, vxrm=True, vta=0)
      # should sweep the rounding modes, and coverpoints should check they are hit


# Python randomizes hashes, while we are trying to have a repeatable hash for repeatable test cases. This function gives a simple hash as a random seed.
def myhash(s):
  h = 0
  for c in s:
    h = (h * 31 + ord(c)) & 0xFFFFFFFF
  return h


def write_tests(coverpoints, test, xlen=None, vlen=None, sew=None, vlmax=None, vl=1, lmul=1):
  global NaNBox_tests
  for coverpoint in coverpoints:
    # produce a deterministic seed for repeatable random numbers distinct for each instruction and coverpoint
    testname = test + coverpoint
    hashval = myhash(testname)
    # hashval = hash(testname) # doesn't work because of Python hash randomization
    seed(hashval)
    #seed(hash(test + coverpoint))
    if (coverpoint == "cp_asm_count"):
      pass
    elif (coverpoint == "cp_rd"):
      make_rdv(test, sew, range(maxreg+1))
    elif (coverpoint == "cp_rs1"):
      make_rs1_v(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cp_imm_5bit") or (coverpoint == "cp_imm_5bit_u"):
      make_imm_v(test, sew, vl)
    elif (coverpoint == "cp_vd"):
      make_vd(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cp_vd_nv0"):
      make_vd(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cp_vd_emul2"):
      make_vd(test, sew, vl, range(0,maxreg,2))
    elif (coverpoint == "cp_vd_emul4"):
      make_vd(test, sew, vl, range(0,maxreg,4))
    elif (coverpoint == "cp_vd_emul8"):
      make_vd(test, sew, vl, range(0,maxreg,8))
    elif (coverpoint == "cp_vs2"):
      make_vs2(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cp_vs2_nv0"):
      make_vs2(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cp_vs2_emul2"):
      make_vs2(test, sew, vl, range(0,maxreg,2))
    elif (coverpoint == "cp_vs2_emul4"):
      make_vs2(test, sew, vl, range(0,maxreg,4))
    elif (coverpoint == "cp_vs2_emul8"):
      make_vs2(test, sew, vl, range(0,maxreg,8))
    elif (coverpoint == "cp_vs1"):
      make_vs1(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cp_vs1_nv0"):
      make_vs1(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs2"):
      make_vd_vs2(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs2_nv0"):
      make_vd_vs2(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs2_emul2"):
      make_vd_vs2(test, sew, vl, range(0,maxreg,2))
    elif (coverpoint == "cmp_vd_vs2_emul4"):
      make_vd_vs2(test, sew, vl, range(0,maxreg,4))
    elif (coverpoint == "cmp_vd_vs2_emul8"):
      make_vd_vs2(test, sew, vl, range(0,maxreg,8))
    elif (coverpoint == "cmp_vd_vs1"):
      make_vd_vs1(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_nv0"):
      make_vd_vs1(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cmp_vs1_vs2"):
      make_vs1_vs2(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cmp_vs1_vs2_nv0"):
      make_vs1_vs2(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_vs2"):
      make_vd_vs1_vs2(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cmp_vd_vs1_vs2_nv0"):
      make_vd_vs1_vs2(test, sew, vl, range(1,maxreg+1))
    elif (coverpoint == "cp_vm"):
      make_vm(test, vlen, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vl"):
      make_vl(test, vlen, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vtype"):
      make_vtype(test, vlen, sew, range(1,maxreg+1))
    elif (coverpoint == "cp_vs2_corners"):
      make_vs2_corners(test, sew, vl, vcornersemul1)
    elif (coverpoint == "cp_vs2_corners_emul2"):
      make_vs2_corners(test, sew, vl, vcornersemul2)
    elif (coverpoint == "cp_vs2_corners_emul4"):
      make_vs2_corners(test, sew, vl, vcornersemul4)
    elif (coverpoint == "cp_vs2_corners_emul8"):
      make_vs2_corners(test, sew, vl, vcornersemul8)
    elif (coverpoint == "cp_vs2_corners_emulf2"):
      make_vs2_corners(test, sew, vl, vcornersemulf2)
    elif (coverpoint == "cp_vs2_corners_emulf4"):
      make_vs2_corners(test, sew, vl, vcornersemulf4)
    elif (coverpoint == "cp_vs2_corners_emulf8"):
      make_vs2_corners(test, sew, vl, vcornersemulf8)
    elif (coverpoint == "cp_vs2_corners_eew1"):
      make_vs2_corners(test, sew, vl, vcornerseew1)
    elif (coverpoint == "cp_vs1_corners"):
      make_vs1_corners(test, sew, vl, vcornersemul1)
    elif (coverpoint == "cp_vs1_corners_emul2"):
      make_vs1_corners(test, sew, vl, vcornersemul2)
    elif (coverpoint == "cp_vs1_corners_eew1"):
      make_vs1_corners(test, sew, vl, vcornerseew1)
    elif (coverpoint == "cp_rs1_corners"):
      make_rs1_corners_v(test, sew, vl, range(maxreg+1))
    elif (coverpoint == "cr_vs2_vs1_corners"):
      make_vs2_vs1_corners(test, sew, vl, vcornersemul1, vcornersemul1)
    elif (coverpoint == "cr_vs2_vs1_corners_wv"):
      make_vs2_vs1_corners(test, sew, vl, vcornersemul2, vcornersemul1)
    elif (coverpoint == "cr_vs2_vs1_corners_wred"):
      make_vs2_vs1_corners(test, sew, vl, vcornersemul1, vcornersemul2)
    elif (coverpoint == "cr_vs2_vs1_corners_mm"):
      make_vs2_vs1_corners(test, sew, vl, vcornerseew1, vcornerseew1)
    elif (coverpoint == "cr_vs2_rs1_corners"):
      make_vs2_rs1_corners(test, sew, vl, vcornersemul1)
    elif (coverpoint == "cr_vs2_rs1_corners_wx"):
      make_vs2_rs1_corners(test, sew, vl, vcornersemul2)
    elif (coverpoint == "cp_imm_corners_5bit" or coverpoint == "cp_imm_corners_5bit_u"):
      pass # already tested in cp_imm_5bit but needed for cr_vs2_imm_corners
    elif (coverpoint == "cr_vs2_imm_corners" or coverpoint == "cr_vs2_imm_corners_u"):
      make_vs2_imm_corners(test, sew, vl, vcornersemul1)
    elif (coverpoint == "cr_vs2_imm_corners_wi" or coverpoint == "cr_vs2_imm_corners_wiu"):
      make_vs2_imm_corners(test, sew, vl, vcornersemul2)
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

def genVector(sew, vl, vlen, test):
  maxvlen = 2048
  f.write("\n\n")
  f.write("///////////////////////////////////////////\n")
  f.write(f"// {test}_data\n")
  f.write("///////////////////////////////////////////\n\n")
  f.write(".section .data\n\n")
  f.write("// Corner Vectors\n")
  legallmuls = [1, 2, 4, 8]
  if sew >= 16:
    legallmuls.append(0.5)
  if sew >= 32:
    legallmuls.append(0.25)
  if sew >= 64:
    legallmuls.append(0.125)

  cp_vtype_mask_corners = [
      1 << randint(0, maxvlen - 1),
      (1 << maxvlen) - 1,
      getrandbits(maxvlen)]

  maxVtests = 700
  # TODO: Fix this temporary arbitrary number
  # num_words = vlen // 32
  num_words = math.ceil((vl * sew) / 32)
  for t in range(maxVtests):
      f.write(f"v_random_{t:03d}:\n")
      for i in range(num_words):
          randomElem = getrandbits(32)
          f.write(f"    .word 0x{randomElem:08x}\n")

  for i, val in enumerate(cp_vtype_mask_corners):
      f.write(f"vtype_mask_corner_{i}:\n")
      for k in range(num_words):
          f.write(f"    .word 0x{i:08x}\n")
  # TODO: Fix this so that it creates a vlmax for every length suite instead of just the max vlmax of the base suite
  vlmax = int(vlen/sew)
  cp_vm_corners_data = [
      ("cp_vm_ones", (1 << maxvlen) - 1),
      ("cp_vm_zeroes", 0),
      ("cp_vm_random", getrandbits(maxvlen)),
      ("cp_vm_Echeckerboard", (((1 << maxvlen) // 3) & ((1 << maxvlen) - 1))),
      ("cp_vm_Ocheckerboard", (((1 << (maxvlen + 1)) // 3) & ((1 << maxvlen) - 1))),
      ("cp_vm_first_vlmax", ((1 << (vlmax - 1)) - 1)),
      ("cp_vm_halfvlmax", (1 << ((vlmax // 2) + 1)) - 1)]

  for name, val in cp_vm_corners_data:
      f.write(f"{name}:\n")
      for i in range(num_words):
          word = (val >> (32 * i)) & 0xFFFFFFFF
          f.write(f"    .word 0x{word:08x}\n")

  f.write("\n")
  #f.close()

def genVsCorners(sew, vl, vlen, test, emul):
  def convert(val, bitwidth):
    if (sew == 64):
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFFFFFFFFFF:016x}" for i
              in range((bitwidth + (eew - 1)) // eew)]
    else:
      return [f"0x{(val >> (eew * i)) & 0xFFFFFFFF:08x}" for i
              in range((bitwidth + (eew-1)) // eew)]

  if (emul[0] == "f"):
    eew = int(sew / int(emul[1]))
    ending = "emul" + emul
  elif (emul == "eew1"):
    eew = 1
    ending = "eew1"
  else:
    eew = sew * int(emul)
    ending = "emul" + emul

  if (eew == 1):
    v_register_corners = {
      "zero":   0,
      "one":    1
    }
  else:
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

  for corner in v_register_corners:
      val = v_register_corners[corner]
      val &= (1 << eew) - 1
      f.write(f"vs_corner_{corner}_{ending}:\n")
      for w in convert(val, eew):
        if (sew == 64):
          f.write(f"    .dword {w}\n")
        else:
          f.write(f"    .word {w}\n")

#
# main body
#
# change these to suite your tests
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

vvtype = ["vadd.vv", "vwadd.vv", "vwaddu.vv", "vsub.vv", "vwsub.vv", "vwsubu.vv", "vmadc.vv", "vredmax.vs", "vredmaxu.vs", "vredsum.vs", "vwaddu.wv", "vwsubu.wv",
          "vmsbc.vv", "vand.vv", "vor.vv", "vxor.vv", "vsll.vv", "vsrl.vv", "vsra.vv", "vmseq.vv", "vmsne.vv", "vredmin.vs", "vredminu.vs", "vwadd.wv", "vwredsum.vs", "vwredsumu.vs",
          "vmslt.vv", "vmsltu.vv", "vmsle.vv", "vmsleu.vv", "vmin.vv", "vminu.vv", "vmax.vv", "vmaxu.vv", "vmul.vv", "vredor.vs", "vredxor.vs",
          "vmulh.vv", "vmulhu.vv", "vmulhsu.vv", "vwmul.vv", "vwmulu.vv", "vwmulsu.vv", "vdiv.vv", "vdivu.vv", "vrem.vv", "vwsub.wv", "vrgatherei16.vv",
          "vremu.vv", "vmacc.vv", "vnmsac.vv", "vmadd.vv", "vnmsub.vv", "vwmacc.vv", "vwmaccu.vv", "vwmaccsu.vv", "vsadd.vv", "vredand.vs","vrgather.vv",
          "vsaddu.vv", "vssub.vv", "vssubu.vv", "vaadd.vv", "vaaddu.vv", "vasub.vv", "vasubu.vv", "vsmul.vv", "vssrl.vv", "vssra.vv","vnclip.wv", "vnclipu.wv", "vnsra.wv", "vnsrl.wv"]

vxtype = ["vadd.vx", "vwadd.vx", "vwaddu.vx", "vsub.vx", "vwsub.vx", "vwsubu.vx", "vrsub.vx", "vwaddu.wx", "vwsubu.wx",
          "vmadc.vx", "vmsbc.vx", "vand.vx", "vor.vx", "vxor.vx", "vsll.vx", "vsrl.vx", "vsra.vx", "vmseq.vx", "vmsne.vx", "vmslt.vx", "vwadd.wx", "vwsub.wx",
          "vmsltu.vx", "vmsle.vx", "vmsleu.vx", "vmsgt.vx", "vmsgtu.vx", "vmin.vx", "vminu.vx", "vmax.vx", "vmaxu.vx", "vmul.vx", "vmulh.vx", "vmulhu.vx",
          "vmulhsu.vx", "vwmul.vx", "vwmulu.vx", "vwmulsu.vx", "vdiv.vx", "vdivu.vx", "vrem.vx", "vremu.vx",
          "vsadd.vx", "vsaddu.vx", "vssub.vx", "vssubu.vx", "vaadd.vx", "vaaddu.vx", "vasub.vx", "vasubu.vx", "vsmul.vx",
          "vssrl.vx", "vssra.vx", "vslideup.vx", "vslidedown.vx", "vslide1up.vx", "vslide1down.vx", "vrgather.vx", "vnclip.wx", "vnclipu.wx", "vnsra.wx", "vnsrl.wx"]

vitype = ["vadd.vi", "vrsub.vi", "vmadc.vi", "vand.vi", "vor.vi", "vxor.vi", "vsll.vi", "vsrl.vi", "vsra.vi", "vmseq.vi", "vmsne.vi", "vrgather.vi",
          "vmsle.vi", "vmsleu.vi", "vmsgt.vi", "vmsgtu.vi", "vsadd.vi", "vsaddu.vi", "vssrl.vi", "vssra.vi", "vslideup.vi", "vslidedown.vi", "vgathervi","vnclip.wi", "vnclipu.wi", "vnsra.wi", "vnsrl.wi"]

vrvtype = ["vcpop.m", "vfirst.m"]

vvvtype = ["vmsbf.m", "viota.m", "vmsif.m", "vmsof.m", "vzext.vf2", "vzext.vf4", "vzext.vf8", "vsext.vf2", "vsext.vf4", "vsext.vf8"]
vxvtype = ["vmacc.vx", "vnmsac.vx", "vmadd.vx", "vnmsub.vx", "vwmacc.vx", "vwmaccu.vx", "vwmaccsu.vx", "vwmaccus.vx"]
vvxtype =["vmv.v.v"]
vxxtype = ["vmv.s.x", "vmv.v.x"]
vixtype = ["vmv.v.i"]
vrvxtype = ["vmv.x.s"]
vvvxtype = ["vmv1r.v", "vmv2r.v", "vmv4r.v", "vmv8r.v"]
vdtype = ["vid.v"]
vimtype = ["vadc.vim", "vsbc.vim", "vmerge.vim", "vmadc.vim"]
vvvmtype = ["vadc.vvm", "vsbv.vvm", "vmerge.vvm", "vmadc.vvm", "vmsbc.vvm", "vsbc.vvm"]
vxmtype = ["vsbc.vxm", "vmerge.vxm", "vmadc.vxm", "vmsbc.vxm", "vadc.vxm"]
vvmtype = ["vmand.mm", "vmnand.mm", "vmandn.mm", "vmxor.mm", "vmor.mm", "vmnor.mm", "vmorn.mm", "vmxnor.mm", "vcompress.vm"]
imm_31 = ["vnclip.wi", "vnclipu.wi", "vnsra.wi","vnsrl.wi", "vrgather.vi", "vslidedown.vi", "vslideup.vi", "vsll.vi", "vsra.vi", "vsrl.vi","vssra.vi", "vssrl.vi"]
vectortypes = vvmtype + vdtype + vrvxtype + vixtype + vxxtype + vvxtype + vvvtype + vrvtype + vitype + vxtype + vvtype + vimtype + vvvmtype + vxmtype + vxvtype + vvvxtype

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
widenins = wvvins + wvxins + wwvins + wwxins
vs2wideins = narrowins + wwvins + wwxins
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


      vtype_maskcorners = ["vtype_maskcorner_0", "vtype_maskcorner_1", "vtype_maskcorner_2", "vtype_maskcorner_3", "vtype_maskcorner_4", "vtype_maskcorner_5", "vtype_maskcorner_6", "vtype_maskcorner_7"]

      cp_vm_corners = ["cp_vm_ones", "cp_vm_zeroes", "cp_vm_random", "cp_vm_Echeckerboard", "cp_vm_Echeckerboard", "cp_vm_Ocheckerboard", "cp_vm_first_vlmax", "cp_vm_halfvlmax"]

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

        if (test in mmins) or (test in vmlogicalins) or (test in vrvtype):
          vectorcorners = ["vs_corner_zero", "vs_corner_one"]
        else:
          vectorcorners = ["vs_corner_zero", "vs_corner_one", "vs_corner_two", "vs_corner_ones", "vs_corner_onesm1", "vs_corner_min", "vs_corner_minm1",
                          "vs_corner_max", "vs_corner_maxm1", "vs_corner_walkeven", "vs_corner_walkodd"]
        vcornersemul1 = [(vcorner + "_emul1") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"] # TODO: change 700 to maxVtests later
        vcornersemul2 = [(vcorner + "_emul2") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
        vcornersemul4 = [(vcorner + "_emul4") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
        vcornersemul8 = [(vcorner + "_emul8") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
        vcornersemulf2 = [(vcorner + "_emulf2") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
        vcornersemulf4 = [(vcorner + "_emulf4") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
        vcornersemulf8 = [(vcorner + "_emulf8") for vcorner in vectorcorners] + [f"v_random_{randint(1, 700):03d}"]
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
        vRandomCounter = 0

        # add assembly lines to enable fp where needed
        if test in vfloattypes:
          float_en = "\n# set mstatus.FS to 01 to enable fp\nli t0,0x4000\ncsrs mstatus, t0\n\n"
          f.write(float_en)

        sew_match = re.search(r"/Vx(\d+)", pathname)
        if sew_match is None:
          sew = 8
        else:
          sew = int(sew_match.group(1))

        # vlen defined as max for test generation
        vlen = 2048
        # vl=1 for base suite
        vl = 1

        f.write(f"\n")
        f.write(f"// Initial set vl = 1\n")
        vsetline1 = f"li x2, {vl}\n"
        vsetline2 = f"vsetvli x0, x2, e{sew}, m1, tu, mu\n"

        f.write(vsetline1)
        f.write(vsetline2)
        write_tests(coverpoints[test], test, xlen, vlen=vlen, sew=sew)
        insertTemplate("testgen_footer_vector1.S")
        genVector(sew, vl, vlen, test)

        if (test in narrowins) or (test in widenins) or (test in wvsins):
          genVsCorners(sew, vl, vlen, test, "2")
          genVsCorners(sew, vl, vlen, test, "1")
        elif (test in vextins):
          genVsCorners(sew, vl, vlen, test, test[-2:])
        elif (test in mmins) or (test in vrvtype) or (test in vmlogicalins):
          genVsCorners(sew, vl, vlen, test, "eew1")
        else:
          genVsCorners(sew, vl, vlen, test, "1")


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
