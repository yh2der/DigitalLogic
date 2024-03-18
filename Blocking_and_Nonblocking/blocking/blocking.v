module blocking (
    clk,
    rst_n,
    a_i,
    b_i,
    a_o,
    b_o
);

input clk;
input rst_n;
input a_i, b_i;
output a_o, b_o;
reg a, b;

assign a_o = a;
assign b_o = b;
always @(posedge clk or negedge rst_n) begin

    if (~rst_n) begin   //blocking寫法，所以a = a_i;b = b_i;會按照順序執行

        a = a_i;
        b = b_i;

    end
    else begin

        a = b;
        b = a;
        
    end
end
endmodule