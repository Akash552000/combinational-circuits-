# Combinational Circuits in Verilog

This repository contains Verilog implementations and SystemVerilog testbenches for various **combinational logic circuits**.  
All designs are written in a single-module style (no submodules), with minimal comments for clarity.

---

## 📂 Contents

- **Basic Gates**
  - AND, OR, NOT, NAND, NOR, XOR, XNOR
- **Adders**
  - Half Adder
  - Full Adder
  - Ripple Carry Adder (4-bit)
  - Carry Look-Ahead Adder (4-bit)
- **Multiplexers**
  - 2:1, 4:1, 8:1 (all in one module)
- **Demultiplexers**
  - 1:2, 1:4, 1:8 (all in one module)

---

## ▶️ Simulation

Each design includes a **SystemVerilog testbench**.  
To run simulations:

```bash
# Using Icarus Verilog
iverilog -o sim tb_<module>.sv <module>.v
vvp sim
