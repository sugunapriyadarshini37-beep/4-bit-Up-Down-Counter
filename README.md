# 4-bit Up/Down Counter Using Verilog HDL

## Aim
To design and simulate a 4-bit counter that can count upward or downward using Verilog HDL.

## Description
A 4-bit Up/Down Counter is a sequential digital circuit. It uses a clock signal to change its count.

- `clk`: Clock input.
- `reset`: Active-high synchronous reset. When reset is 1, count becomes 0 at the next rising clock edge.
- `enable`: When 1, the counter changes its value. When 0, it holds its current value.
- `up_down`: When 1, the counter counts up. When 0, it counts down.
- `count`: 4-bit output (0 to 15).

The counter wraps around: after 15 it returns to 0 while counting up; from 0 it goes to 15 while counting down.

## Files
- `up_down_counter.v` - Verilog design.
- `tb_up_down_counter.v` - Testbench for simulation.

## Expected Operation

| Reset | Enable | Up_Down | Operation |
|---|---|---|---|
| 1 | X | X | Reset count to 0 |
| 0 | 0 | X | Hold count |
| 0 | 1 | 1 | Count up |
| 0 | 1 | 0 | Count down |

## How to Simulate
1. Open the files in a Verilog simulator such as EDA Playground, Icarus Verilog, or ModelSim.
2. Add both Verilog files to the project.
3. Set `tb_up_down_counter` as the top-level testbench.
4. Run the simulation and observe `count` in the waveform or console.

## Conclusion
The 4-bit Up/Down Counter was described using Verilog HDL. The testbench checks counting up, counting down, hold, and reset operations.
