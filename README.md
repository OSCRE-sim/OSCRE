# RAD-HARD

Open-Source Radiation Hardening circuit-level Simulator in conjunction with SCALE

## Introduction

## Installation

## Instructions and Run examples

### How to Use xschem and ngspice Together

1. **Create Schematic in xschem:**
    - Draw your circuit.
    - Save the schematic as `my_circuit.sch`.

2. **Generate the Netlist:**
    - Ensure your schematic is open.
    - Go to `Simulation` > `Set netlist dir`. Set your netlist directory.
    - Go to `Options` > `Netlist format / Symbol mode`. Ensure your saving your netlist as a spice file
    - In the top right, press the button that looks like an arrow pointing to a piece of paper to create the netlist

3. **Simulate with ngspice:**
    - In the terminal, run the simulation while in the directory of the spice file:
      ```sh
      ngspice my_circuit.spice
      ```
    - Save the output to a file (e.g., `ngspice_output.txt`).

4. **Analyze Results with C++ Program:**
    - Compile and run `compute.cpp` to process the simulation results:
      ```sh
      g++ -o compute compute.cpp
      ./compute
      ```

