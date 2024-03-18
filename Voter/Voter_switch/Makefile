VERILOG = iverilog
TARGET = voter_switch.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): voter_switch_tb.v voter_switch.v
	$(VERILOG) -o $(TEMP) voter_switch_tb.v voter_switch.v

clean:
	-del $(TARGET)
	-del $(TEMP)