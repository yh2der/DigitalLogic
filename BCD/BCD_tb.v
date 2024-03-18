// `include "blocking.v"
`timescale 1ns/1ps
module BCD_tb;
reg clk_tb;
reg rst_tb;

initial begin
    clk_tb = 0;
    rst_tb = 0;
end

// clock process
always begin
    #10 clk_tb = ~clk_tb;
end

initial begin
    #30 rst_tb = 1'b0;
    #10 rst_tb = 1'b1;
    #5 rst_tb = 1'b0;
    #250 $finish;
end

initial begin
    $dumpfile("BCD.vcd");
    $dumpvars(0, BCD_tb);
end

BCD BCD_tb (
    .clk(clk_tb),
    .rst(rst_tb)
    );    
endmodule