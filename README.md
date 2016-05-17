# FPU
IEEE 754 floating point unit in verilog

## Generating test cases
```
python3 testgen.py numTests
```

## Testing with Icarus verilog
```
iverilog -o fpu fpu.v fpu_tb.v
```

## RTL viewer with yosys
```
yosys show_rtl.ys
```
