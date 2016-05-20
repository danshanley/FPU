## FPU
IEEE 754 floating point unit in verilog

![Alt Text](https://i.imgur.com/4Mx3fpU.gif)

## Generating test cases
```
python3 testgen.py op numTests
```
Example: `python3 testgen.py SUB 5`

## Testing with Icarus verilog
To synthesize:
```
iverilog -o fpu fpu.v fpu_tb.v
```
To run:
```
vvp fpu
```
## RTL viewer with yosys
```
yosys show_rtl.ys
```
