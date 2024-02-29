view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /newsorter/clk 
wave create -pattern none -portmode in -language vhdl /newsorter/launch 
wave create -pattern none -portmode in -language vhdl /newsorter/reset 
wave create -pattern none -portmode in -language vhdl -range 7 0 /newsorter/a 
wave create -pattern none -portmode in -language vhdl -range 7 0 /newsorter/b 
wave create -pattern none -portmode out -language vhdl /newsorter/Complete 
wave create -pattern none -portmode out -language vhdl -range 7 0 /newsorter/q 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/newsorter/clk 
{wave export -file newsorter_tb -starttime 0 -endtime 1000 -format vhdl -designunit newsorter} 
WaveCollapseAll -1
wave clipboard restore
