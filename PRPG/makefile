VERILOG = iverilog
TARGET = PRPG.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)

$(TEMP): PRPG_tb.v PRPG.v
	$(VERILOG) -o $(TEMP) PRPG_tb.v PRPG.v

clean:
	-del $(TARGET)
	-del $(TEMP)