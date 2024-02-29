view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /sorter/clk 
wave create -pattern none -portmode in -language vhdl /sorter/launch 
wave create -pattern none -portmode in -language vhdl /sorter/reset 
wave create -pattern none -portmode out -language vhdl /sorter/Complete 
wave create -pattern none -portmode out -language vhdl -range 7 0 /sorter/Data 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/sorter/clk 
{wave export -file sorter_tb -starttime 0 -endtime 1000 -format vhdl -designunit sorter} 
WaveCollapseAll -1
wave clipboard restore
