# CPLD MAX3000A Project - VHDL Implementations

This project contains VHDL implementations of digital logic designs tested and emulated on an Altera MAX3000A Complex Programmable Logic Device (CPLD). The design, coding, and simulation were developed and verified using Intel's Quartus II software. The project is divided into three main parts, covering arithmetic logic unit (ALU) operations, flip-flop-based designs, and counter mechanisms. Each part includes specific modules implemented with VHDL code in various modeling styles: structural, behavioral, and dataflow.

## Table of Contents
1. [Part 1: ALU and Encoder Implementations](#part-1-alu-and-encoder-implementations)
2. [Part 2: D Flip-Flop and Shift Register](#part-2-d-flip-flop-and-shift-register)
3. [Part 3: Counters](#part-3-counters)
4. [Tools Used](#tools-used)
5. [Project Setup and Usage](#project-setup-and-usage)

---

## Part 1: ALU and Encoder Implementations

In the first part, an arithmetic logic unit (ALU) and a priority encoder were implemented. This module focuses on designing basic arithmetic and logic operations as well as encoding schemes.

### 1. 3-bit Adder/Subtractor (Structural Modeling)
   - **Objective**: Implement a 3-bit adder/subtractor controlled by a selection signal `m`.
   - **Operation**:
     - `m = 0` performs addition: \( a + b \)
     - `m = 1` performs subtraction: \( a - b \) (in 2’s complement form)
   - **Components**: 
     - 1-bit full adders implemented in dataflow modeling.
   - **File**: `add.vhdl`

### 2. 3-bit ALU (Behavioral Modeling)
   - **Objective**: Design an ALU with four operations controlled by a 2-bit selection line.
   - **Operations**:
     - `00`: \( A + B \)
     - `01`: \( A - B \)
     - `10`: Bitwise AND
     - `11`: Bitwise XOR
   - **File**: `alu.vhdl`

### 3. 4:2 Priority Encoder (Behavioral Modeling)
   - **Objective**: Implement a 4:2 priority encoder with an active-high enable pin.
   - **Operation**:
     - Based on input priority, output bits are set based on the highest-order active input.
   - **File**: `p_encoder.vhdl`

## Part 2: D Flip-Flop and Shift Register

The second part of the project includes the design of D flip-flops and a universal shift register.

### 1. D Flip-Flop with Asynchronous Reset
   - **Objective**: Implement a D flip-flop with an asynchronous reset and observe its RTL netlist.
   - **File**: `DFF_b.vhdl`

### 2. 3-bit Universal Shift Register
   - **Objective**: Design a universal shift register with four operational modes based on selection lines.
   - **Operations**:
     - `00`: Parallel loading
     - `01`: Left Shift
     - `10`: Right Shift
     - `11`: No Change
   - **Components**:
     - D flip-flops and a multiplexer, with the shift register implemented in structural modeling.
   - **File**: `shift-reg.vhdl`

## Part 3: Counters

This part includes various counter designs with specific counting schemes and types, emulated on the CPLD board.

### 1. 3-bit Up Counter (Asynchronous Reset)
   - **Objective**: Implement a 3-bit up counter with asynchronous reset.
   - **File**: `a_upcount.vhd`

### 2. 3-bit Down Counter (Asynchronous Reset)
   - **Objective**: Implement a 3-bit down counter with asynchronous reset.
   - **File**: `a_downcount.vhd`

### 3. Arbitrary Sequence Counter
   - **Objective**: Design a 3-bit arbitrary sequence counter following the sequence: `3 -> 0 -> 2 -> 5 -> 1 -> 4 -> 3`.
   - **File**: `seq_count.vhd`

### 4. 3-bit Ring Counter
   - **Objective**: Implement a 3-bit ring counter.
   - **File**: `ring_count.vhd`

### 5. 3-bit Johnson Counter
   - **Objective**: Implement a 3-bit Johnson counter.
   - **File**: `john_count.vhd`


---

## Tools Used

- **Quartus II**: Used for simulation, RTL schematic visualization, and code synthesis.
- **Altera MAX3000A CPLD**: Target hardware for code emulation and verification.

## Project Setup and Usage

1. **Download Project Files**: Clone the repository or download the necessary `.vhd` files.
2. **Quartus II Setup**:
   - Follow the steps in the `CPLD_Quartus2_setup.pdf` file for configuring Quartus II for this project.
   - Create a new project in Quartus II.
   - Add each VHDL file to the project.
   - Set up the CPLD as the target device (MAX3000A series).
3. **Simulation and Synthesis**:
   - For each module, compile the VHDL code and simulate to verify the design.
   - Use RTL Viewer in Quartus II to inspect the generated RTL schematic.
4. **Programming the CPLD**:
   - Generate the programming files (.pof).
   - Use a programmer to upload the design to the MAX3000A CPLD.