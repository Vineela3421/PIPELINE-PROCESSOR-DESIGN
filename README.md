
# Task-3: 4-Stage Processor - CodTech Internship

This is my task-3 for codtech internship. I wrote verilog code for a 4 stage pipelined processor which can do add, sub and load operations. I also wrote a testbench and tested it using iverilog and gtkwave.

## Pipeline stages

1. IF - fetch instruction from instruction memory  
2. ID - decode instruction and get register values  
3. EX - do alu operation or load from data memory  
4. WB - write result back to register file  

## Instructions I used

| Opcode | Instruction |
|--------|-------------|
| 0001   | ADD         |
| 0010   | SUB         |
| 0011   | LOAD        |

## Files I have

- `Processor.v` — main processor code  
- `Processor_tb.v` — testbench code  
- `Processor.vcd` — generated after simulation
- eda playground link🔗


## How I ran it

```bash
iverilog -o processor_test Processor.v Processor_tb.v
vvp processor_test
gtkwave dump.vcd
