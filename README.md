# Simple Blinky

This is a simple LED blink written in Verilog.


## Tools
You need to install the following tools:

1. yosys
2. nextpnr
3. verilator
4. fujprog

Tools can be foound here: [oss-cad-suite-build](https://github.com/YosysHQ/oss-cad-suite-build)

```bash
make clean
make ulx3s.bit
make prog
```