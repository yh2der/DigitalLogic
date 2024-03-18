module BCD(clk, rst);
input clk; //I clock in
input rst; //I asyn reset
output [3:0] Q_out; // O asyn Result
reg [3:0] Q_out;

initial begin
    Q_out = 4'b0000;    
end

always@ (posedge clk or posedge rst)
begin
    if (rst)
        Q_out = 0;
    else if (Q_out == 9)
        Q_out = 0;
    else
        Q_out++;
end
endmodule