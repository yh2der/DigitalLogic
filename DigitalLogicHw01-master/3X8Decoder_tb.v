//clock
module clkgen(clka, clkb, clka_out, clkb_out);

    input clka, clkb;
    output clka_out, clkb_out;
    reg clka_out, clkb_out;    //clka_out and clkb_out connect to register

    always @(clka) begin    //when clka changes then run

        clka_out = clka;
    
    end
    
    always @(clkb) begin    //when clkb changes then run

        clkb_out = clkb;

    end

endmodule

//testbench
module decoder_3_8_tb;

    reg E_tb;
    reg clka, clkb;
    reg [2:0] In_tb;
    wire [7:0] Out_tb;
    wire clka_out, clkb_out;

    decoder_3_8 decoder_1(.E(E_tb), .In(In_tb), .Out(Out_tb));    //declare decoder_1 is decoder_3_8
    clkgen clkgen_1(.clka(clka), .clkb(clkb), .clka_out(clka_out), .clkb_out(clkb_out));    //declare clkgen_1 is clkgen

    initial begin    //default

        clka = 1'b0; 
        clkb = 1'b0;

    end

    always begin    //delay 10s then run

        #10 clka = ~clka; 

    end

    always begin    //delay 20s then run

        #20 clkb = ~clkb;

    end

    initial begin    //truth table

        #0 E_tb = 0; In_tb = 3'b000;
        #10 E_tb = 1; In_tb = 3'b000;
        #10 E_tb = 1; In_tb = 3'b001;
        #10 E_tb = 1; In_tb = 3'b010;
        #10 E_tb = 1; In_tb = 3'b011;
        #10 E_tb = 1; In_tb = 3'b100;
        #10 E_tb = 1; In_tb = 3'b101;
        #10 E_tb = 1; In_tb = 3'b110;
        #10 E_tb = 1; In_tb = 3'b111;
        #10 $finish;

    end

    initial begin

        $dumpfile("decoder.vcd");    //output signal to a file
        $dumpvars(0, decoder_1);    //record decoder_1's signal
        $dumpvars(0, clkgen_1);    //record clkgen_1's signal
        
    end

endmodule