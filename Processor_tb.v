`timescale 1ns/1ps
module Processor_tb;
logic clk;
logic reset;
Processor uut(
.clk(clk),
.reset(reset)
);
initial begin
$dumpfile("dump.vcd");
$dumpvars(0,Processor_tb);
uut.instr_mem[0]=
16'b0001_0001_0010_0011;
uut.instr_mem[1]=
16'b0010_0100_0001_0011;
uut.instr_mem[2]=
16'b0011_0101_0010_0000;
uut.reg_file[2]=8'd10;
uut.reg_file[3]=8'd5;
uut.data_mem[10]=8'd99;
clk=0;
reset=1;
#10 reset=0;
#200 $finish;
end
always #5 clk=~clk;
endmodule

