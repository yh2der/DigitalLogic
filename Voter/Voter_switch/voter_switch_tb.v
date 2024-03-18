`timescale 1ns/1ps
module voter_switch_tb;

reg [3:0] I;
wire [3:1] O;

initial begin

    I = 4'b0000;
    #5 I = 4'b0001;
    #10 I = 4'b0010;
    #15 I = 4'b0011;
    #20 I = 4'b0100;
    #25 I = 4'b0101;
    #30 I = 4'b0110;
    #35 I = 4'b0111;
    #40 I = 4'b1000;
    #45 I = 4'b1001;
    #50 I = 4'b1010;
    #55 I = 4'b1011;
    #60 I = 4'b1100;
    #65 I = 4'b1101;
    #70 I = 4'b1110;
    #75 I = 4'b1111;
    #80 $finish;

end

initial begin

    $dumpfile("voter_switch.vcd");
    $dumpvars(0, voter_switch_tb);

end

voter_switch voter_switch_tb (

    .I(I),
    .O(O)

);

endmodule