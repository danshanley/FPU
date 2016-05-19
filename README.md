## FPU
IEEE 754 floating point unit in verilog

## Generating test cases
```
python3 testgen.py numTests op
```

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
