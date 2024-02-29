view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /multiplierp/RST 
wave create -pattern none -portmode in -language vhdl /multiplierp/CLK 
wave create -pattern none -portmode in -language vhdl /multiplierp/SI 
wave create -pattern none -portmode in -language vhdl -range n 1 /multiplierp/A_IN 
wave create -pattern none -portmode in -language vhdl -range n 1 /multiplierp/B_IN 
wave create -pattern none -portmode out -language vhdl -range n 1 /multiplierp/A_OUT 
wave create -pattern none -portmode out -language vhdl -range n 1 /multiplierp/B_OUT 
wave create -pattern none -portmode out -language vhdl -range n 1 /multiplierp/L_OUT 
wave create -pattern none -portmode out -language vhdl -range n 1 /multiplierp/H_OUT 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/multiplierp/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 5ns NewSig:/multiplierp/rst 
wave modify -driver freeze -pattern constant -value 0 -starttime 5ns -endtime 1000ns NewSig:/multiplierp/rst 
{wave export -file MultiplierP_tb -starttime 0 -endtime 1000 -format vhdl -designunit multiplierp} 
WaveCollapseAll -1
wave clipboard restore
