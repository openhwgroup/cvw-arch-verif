#!/usr/bin/env python3
##################################
# easyassembler.py
#
# James Kaden Cassidy jacassidy@hmc.edu 30 March 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed privilaged tests for functional coverage
##################################

from Data.assemblerparams import *

enable_warnings = True

enable_debug = False

split_by_spaces = True

def warning(string):
    if(enable_warnings):
        print("\n"+string+"\n")

def debug_log(string):
    if(enable_debug):
        print("\n"+string+"\n")

# Returns whether a string is a series of 1s and 0s of the desired length
def is_n_bit_string(string, n):
    if not isinstance(string, str) or len(string) != n:
        return False
    
    # Check if string contains only 0s and 1s
    for char in string:
        if char not in ['0', '1']:
            return False
    
    return True

def int_to_n_bit_binary(num, n):
    # Check if the number is too large to represent in n bits without losing information
    if num < 0:
        # In two's complement, the range is -2^(n-1) to 2^(n-1)-1
        min_representable = -(1 << (n-1))
        if num < min_representable:
            warning(f"Warning: {num} is too negative to represent in {n} bits without information loss")
    else:
        # For positive numbers, check if it fits in n-1 bits (one bit is for sign)
        max_representable = (1 << (n-1)) - 1
        if num > max_representable:
            warning(f"Warning: {num} is too large to represent in {n} bits without information loss")

    # Convert to n-bit binary representation
    return format(num & ((1 << n) - 1), f'0{n}b')

def is_integer(string):
    try:
        int(string)
        return True
    except ValueError:
        return False

# Returns the bits to be placed in machine code for vs1 
def get_v_reg(key):
    if key in v_reg:
        return v_reg[key]  # Fixed: direct dictionary access
    elif is_n_bit_string(key, 5):  # Fixed: 'else if' to 'elif' and added colon
        return key
    elif key[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(key, 16)
        return int_to_n_bit_binary(value, 5)
    elif is_integer(key):
        # Convert integer or string integer to n bit binary string
        value = int(key)
        return int_to_n_bit_binary(value, 5)
    else:  # Fixed: added colon
        raise ValueError(f"Invalid v-type register value: {key}")  # Proper error raising
    
# Returns the bits to be placed in machine code for vs1 
def get_r_reg(key):
    if key in r_reg:
        return r_reg[key]  # Fixed: direct dictionary access
    elif is_n_bit_string(key, 5):  # Fixed: 'else if' to 'elif' and added colon
        return key
    elif key[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(key, 16)
        return int_to_n_bit_binary(value, 5)
    elif is_integer(key):
        # Convert integer or string integer to n bit binary string
        value = int(key)
        return int_to_n_bit_binary(value, 5)
    else:  # Fixed: added colon
        raise ValueError(f"Invalid r-type register value: {key}")  # Proper error raising
    
# Returns the bits to be placed in machine code for vs1 
def get_f_reg(key):
    if key in f_reg:
        return f_reg[key]  # Fixed: direct dictionary access
    elif is_n_bit_string(key, 5):  # Fixed: 'else if' to 'elif' and added colon
        return key
    elif key[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(key, 16)
        return int_to_n_bit_binary(value, 5)
    elif is_integer(key):
        # Convert integer or string integer to n bit binary string
        value = int(key)
        return int_to_n_bit_binary(value, 5)
    else:  # Fixed: added colon
        raise ValueError(f"Invalid f-type register value: {key}")  # Proper error raising
    
#converts a string imm to an immediate of n length
def get_imm(imm, n):
    if is_n_bit_string(imm, n):
        return imm
    elif imm[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(imm, 16)
        return int_to_n_bit_binary(value, n)
    elif is_integer(imm):
        # Convert integer or string integer to n bit binary string
        value = int(imm)
        return int_to_n_bit_binary(value, n)
    else:
        raise ValueError(f"Imm type not supported: {imm}")
    
def get_sew(eSEW):
    if eSEW in eSEW_encoding:
        return eSEW_encoding[eSEW]
    elif is_n_bit_string(eSEW, 3):
        return eSEW
    elif eSEW[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(eSEW, 16)
        return int_to_n_bit_binary(value, 3)
    elif is_integer(eSEW):
        # Convert integer or string integer to n bit binary string
        value = int(eSEW)
        return int_to_n_bit_binary(value, 3)
    else:  # Fixed: added colon
        raise ValueError(f"Invalid eSEW value: {eSEW}")  # Proper error raising

def get_lmul(mLMUL):
    if mLMUL in mLMUL_encoding:
        return mLMUL_encoding[mLMUL]
    elif is_n_bit_string(mLMUL, 3):
        return mLMUL
    elif mLMUL[0:2] == "0x":
        # Convert hex to n bit binary string
        value = int(mLMUL, 16)
        return int_to_n_bit_binary(value, 3)
    elif is_integer(mLMUL):
        # Convert integer or string integer to n bit binary string
        value = int(mLMUL)
        return int_to_n_bit_binary(value, 3)
    else:  # Fixed: added colon
        raise ValueError(f"Invalid mLMUL value: {mLMUL}")  # Proper error raising

def get_ta(ta):
    if ta in ta_encoding:
        return ta_encoding[ta]
    elif is_n_bit_string(ta, 1):
        return ta
    else:  # Fixed: added colon
        raise ValueError(f"Invalid ta value: {ta}")  # Proper error raising
    
def get_ma(ma):
    if ma in ma_encoding:
        return ma_encoding[ma]
    elif is_n_bit_string(ma, 1):
        return ma
    else:  # Fixed: added colon
        raise ValueError(f"Invalid ma value: {ma}")  # Proper error raising
    
def get_vill(vill):
    if vill in vill_encoding:
        return vill_encoding[vill]
    elif is_n_bit_string(vill, 1):
        return vill
    else:  # Fixed: added colon
        raise ValueError(f"Invalid vill value: {vill}")  # Proper error raising

def string_to_parameters(string):
    # First split by commas
    comma_split = [str.strip() for str in string.split(',')]
    
    # Then split each element by spaces and flatten the list
    params = []
    for item in comma_split:
        params.extend([word.strip() for word in item.split() if word.strip()])
    
    return params

def parse_vector_arithmatic_instruction(instruction_name, params, opcode):

    instruction_fields = string_to_parameters(vector_arithmatic_instruction_parameters[instruction_name])
    
    bitfields = vector_arithmatic_instruction_bitfields[instruction_name]

    funct6 = bitfields[0]
    vm = bitfields[1]
    funct3 = bitfields[2]
            
    rd = ""
    r1 = ""
    vs2 = ""

    #sanity checks
    if len(instruction_fields) < len(params):
        raise ValueError(f"Too many instruction fields included: \nexpected: {instruction_fields} \n recieved: {params}")
    
    if vm not in ['0', '1', 'vm', 'v0']:
        raise ValueError("vm not supported, error in vector_arithmatic_instruction_bitfields")
    
    #instruction parsing

    try:
        for index, parameter in enumerate(instruction_fields):
            if parameter == "vd":
                rd = get_v_reg(params[index])
            elif parameter == "rd":
                rd = get_r_reg(params[index])
            elif parameter == "fd":
                rd = get_f_reg(params[index])
            elif parameter == "vs3":
                rd = get_v_reg(params[index])
            elif parameter == "vs1":
                r1 = get_v_reg(params[index])
            elif parameter == "fs1":
                r1 = get_f_reg(params[index])  
            elif parameter == "rs1":
                r1 = get_r_reg(params[index])
            elif parameter == "imm":
                r1 = get_imm(params[index], 5)
            elif parameter == "vs2":
                vs2 = get_v_reg(params[index])
            elif parameter == "{v0.t}":
                if vm == "vm":
                    if index < len(params):
                        if "v0.t" == params[index]:
                            vm = "0"
                        elif params[index] == "0" or params[index] == "1":
                            vm = params[index]
                        else:
                            raise ValueError(f"Mask designation not supported: {params[index]}")
                    else:
                        vm = "1"
            elif parameter == "v0":
                if vm == "v0":
                    if index < len(params):
                        if "v0" == params[index]:
                            pass
                        elif params[index] == "0":
                            pass
                        else:
                            print(f"Mask designation ignored: {params[index]}")
                    vm = "0"
            else:
                raise ValueError(f"Param {parameter} not supported in instruction_parameters")    
    except ValueError as e:
        raise e
    except Exception as e:
        print(f"\nLikely not enough instruction fields included\nExpected: {instruction_fields}\n")
        raise e
        
    return funct6 + vm + vs2 + r1 + funct3 + rd + opcode

def parse_vector_vset(instruction_name, params, opcode):

    instruction_fields = string_to_parameters(vector_vset_instruction_parameters[instruction_name])
    
    bitfields = vector_vset_instruction_bitfields[instruction_name]

    top2 = bitfields
    funct3 = "111"
    
    rd = ""
    r1 = ""
    r2ext = ""
    ma = "0"
    ta = "0"
    vill = ""

    #sanity checks
    if len(instruction_fields) < len(params):
        raise ValueError(f"Too many instruction fields included: \nexpected: {instruction_fields} \n recieved: {params}")
    
    #instruction parsing
    try:
        for index, parameter in enumerate(instruction_fields):
            if parameter == "rd":
                rd = get_r_reg(params[index])
            elif parameter == "rs1":
                r1 = get_r_reg(params[index])
            elif parameter == "uimm":
                r1 = get_imm(params[index])
            elif parameter == "rs2":
                r2ext = "0" + get_r_reg(params[index])
            elif parameter == "eSEW":
                r2ext = get_sew(params[index]) + r2ext
            elif parameter == "mLMUL":
                r2ext = r2ext + get_lmul(params[index])
            elif parameter == "ta":
                ta = get_ta(params[index])
            elif parameter == "ma":
                ma = get_ma(params[index])
            elif parameter == "{vill}":
                if index < len(params):
                    vill = get_vill(params[index])
                else:
                    vill = "0"
            else:
                raise ValueError(f"Param {parameter} not supported in instruction_parameters")    
    except ValueError as e:
        raise e
    except Exception as e:
        print(f"\nLikely not enough instruction fields included\nExpected: {instruction_fields}\n")
        raise e
    
    if instruction_name == "vtypei":
        return vill + (32-9)*"0" + ma + ta + r2ext
    
    return top2 + "00" + ma + ta + r2ext + r1 + funct3 + rd + opcode

def parse_vector_store(instruction_name, params, opcode):
    # instruction_fields = string_to_parameters(vector_load_instruction_parameters[instruction_name])
    
    # bitfields = vector_load_instruction_bitfields[instruction_name]

    # funct6 = bitfields[0]
    # vm = bitfields[1]
    # funct3 = bitfields[2]
            
    # rd = ""
    # r1 = ""
    # vs2 = ""

    # #sanity checks
    # if len(instruction_fields) < len(params):
    #     raise ValueError(f"Too many instruction fields included: \nexpected: {instruction_fields} \n recieved: {params}")
    
    # if vm not in ['0', '1', 'vm', 'v0']:
    #     raise ValueError("vm not supported, error in vector_arithmatic_instruction_bitfields")
    
    # #instruction parsing

    # try:
    #     for index, parameter in enumerate(instruction_fields):
    #         if parameter == "vd":
    #             rd = get_v_reg(params[index])
    #         elif parameter == "rd":
    #             rd = get_r_reg(params[index])
    #         elif parameter == "fd":
    #             rd = get_f_reg(params[index])
    #         elif parameter == "vs3":
    #             rd = get_v_reg(params[index])
    #         elif parameter == "vs1":
    #             r1 = get_v_reg(params[index])
    #         elif parameter == "fs1":
    #             r1 = get_f_reg(params[index])  
    #         elif parameter == "rs1":
    #             r1 = get_r_reg(params[index])
    #         elif parameter == "imm":
    #             r1 = get_imm(params[index], 5)
    #         elif parameter == "vs2":
    #             vs2 = get_v_reg(params[index])
    #         elif parameter == "{v0.t}":
    #             if vm == "vm":
    #                 if index < len(params):
    #                     if "v0.t" == params[index]:
    #                         vm = "0"
    #                     elif params[index] == "0" or params[index] == "1":
    #                         vm = params[index]
    #                     else:
    #                         raise ValueError(f"Mask designation not supported: {params[index]}")
    #                 else:
    #                     vm = "1"
    #         elif parameter == "v0":
    #             if vm == "v0":
    #                 if index < len(params):
    #                     if "v0" == params[index]:
    #                         pass
    #                     elif params[index] == "0":
    #                         pass
    #                     else:
    #                         print(f"Mask designation ignored: {params[index]}")
    #                 vm = "0"
    #         else:
    #             raise ValueError(f"Param {parameter} not supported in instruction_parameters")    
    # except ValueError as e:
    #     raise e
    # except Exception as e:
    #     print(f"\nLikely not enough instruction fields included\nExpected: {instruction_fields}\n")
    #     raise e
        
    # return funct6 + vm + vs2 + r1 + funct3 + rd + opcode
    pass

def parse_vector_load(instruction_name, params, opcode):
    pass

#TODO: only supports vector instructions
def assemble_instruction(instruction):
    parts = instruction.split(None, 1)  # Split on whitespace, but only on the first occurrence
    instruction_name = parts[0]  # This gets 'vadd.vv'
    string_operands = parts[1] if len(parts) > 1 else ""  # This gets 'v0, v2, v1'

    #Now split the operands by commas
    params = string_to_parameters(string_operands)

    debug_log(f"Parsed params from instruction: {params}")
    
    if instruction_name not in instruction_opcodes:
        raise ValueError("Instruction opcode not supported")
    
    if instruction_name not in instruction_opcodes:
        raise ValueError(f"Instruction not supported: {instruction_name}")
    opcode, operation_type = instruction_opcodes[instruction_name]

    machine_code = ""
    
    if operation_type == "vector_arithmetic": #vector arithmatic instructions
        machine_code = parse_vector_arithmatic_instruction(instruction_name, params, opcode)
    elif operation_type == "vector_vset":
        machine_code = parse_vector_vset(instruction_name, params, opcode)
    elif operation_type == "vector_load":
        machine_code = parse_vector_load(instruction_name, params, opcode)
    elif operation_type == "vector_store":
        machine_code = parse_vector_store(instruction_name, params, opcode)
        
    return machine_code

def convert_and_present_assemble_instruction(instruction):
    machine_code = assemble_instruction(instruction)

    print(f"\nMachine code: {machine_code}\n")

    if not is_n_bit_string(machine_code, 32):
        print(f"Error: machine code length {len(machine_code)}")
        raise ValueError(f"Error converting machine code: {machine_code}")
    
    decimal_instr = int(machine_code, 2)
    hex_instr = hex(decimal_instr)

    print(".word " + hex_instr + " #" +instruction)

def main():
    print("RISCV Assembler Terminal")
    print("Enter 'quit', 'exit', or press Ctrl+C to exit the program")
    print("Enter RISCV instructions to convert them to machine code")
    print("Example: add $t0, $t1, $t2")
    
    while True:
        try:
            # Get user input
            instruction = input("\nEnter instruction > ")
            
            # Check for exit commands
            if instruction.lower() in ['quit', 'exit']:
                print("Exiting assembler. Goodbye!")
                break
            
            # Process the instruction
            if not enable_debug:
                try:
                    convert_and_present_assemble_instruction(instruction)
                except ValueError as e:
                    print(f"Error: {e}")
                except Exception as e:
                    print(f"Unexpected error: {e}")
            else:
                convert_and_present_assemble_instruction(instruction)
                
        except KeyboardInterrupt:
            print("\nExiting assembler. Goodbye!")
            break

if __name__ == "__main__":
    main()