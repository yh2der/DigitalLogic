VERILOG = iverilog
TARGET = decoder.vcd
TEMP = decoder.vvp
$(TARGET) : decoder.vvp		#Compile TARGET through vvp file, which is vcd file

	vvp decoder.vvp

decoder.vvp: 3X8Decoder_tb.v 3X8Decoder.v     #Compile the vvp file through the circuit and the v file of tb

	$(VERILOG) -o decoder.vvp 3X8Decoder_tb.v 3X8Decoder.v

clean:		#delete .vcd
	-del $(TARGET)		
	-del $(TEMP)