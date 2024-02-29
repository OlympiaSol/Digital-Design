view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /counter8bit/SET 
wave create -pattern none -portmode in -language vhdl /counter8bit/CLK 
wave create -pattern none -portmode in -language vhdl /counter8bit/CLR 
wave create -pattern none -portmode out -language vhdl -range 7 0 /counter8bit/Q 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 500ns NewSig:/counter8bit/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/counter8bit/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 100ns NewSig:/counter8bit/set 
wave modify -driver freeze -pattern constant -value 0 -starttime 100ns -endtime 1000ns NewSig:/counter8bit/set 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 320ns NewSig:/counter8bit/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 320ns -endtime 420ns NewSig:/counter8bit/clk 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/counter8bit/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 320ns -endtime 420ns NewSig:/counter8bit/clr 
wave modify -driver freeze -pattern constant -value 0 -starttime 420ns -endtime 1000ns NewSig:/counter8bit/clr 
{wave export -file Counter8Bit_tb -starttime 0 -endtime 1000 -format vhdl -designunit counter8bit} 
WaveCollapseAll -1
wave clipboard restore
