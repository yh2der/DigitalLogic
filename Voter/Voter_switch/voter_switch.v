module voter_switch (I, O);
    input [3:0] I; // I 4 men
    output [3:1] O; // O Result
    
    reg [3:1] O;

    always@ (I)
        begin
            case(I)
                4'b0000:    begin  
                    O[3] = 1;
                    O[2] = 0;
                    O[1] = 0;
                end    
                4'b0001:    begin  
                    O[3] = 1;
                    O[2] = 0;
                    O[1] = 0;
                end  
                4'b0010:    begin  
                    O[3] = 1;
                    O[2] = 0;
                    O[1] = 0;
                end  
                4'b0011:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end  
                4'b0100:    begin  
                    O[3] = 1;
                    O[2] = 0;
                    O[1] = 0;
                end
                4'b0101:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end
                4'b0110:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end
                4'b0111:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
                4'b1000:    begin  
                    O[3] = 1;
                    O[2] = 0;
                    O[1] = 0;
                end
                4'b1001:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end
                4'b1010:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end
                4'b1011:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
                4'b1100:    begin  
                    O[3] = 0;
                    O[2] = 1;
                    O[1] = 0;
                end
                4'b1101:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
                4'b1110:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
                4'b1111:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
                default:    begin  
                    O[3] = 0;
                    O[2] = 0;
                    O[1] = 1;
                end
            endcase
        end
endmodule