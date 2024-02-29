view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab8/clck 
wave create -pattern none -portmode in -language vhdl /lab8/rest 
wave create -pattern none -portmode in -language vhdl -range 3 0 /lab8/gnd 
wave create -pattern none -portmode out -language vhdl /lab8/enACC 
wave create -pattern none -portmode out -language vhdl /lab8/rsMUL 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab8/A 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab8/addrA 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab8/addrB 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab8/B 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab8/OUTP 
wave create -pattern none -portmode out -language vhdl -range 15 0 /lab8/Result 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 20ns -dutycycle 50 -starttime 0ns -endtime 1000ns NewSig:/lab8/clck 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10ns NewSig:/lab8/rest 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 5ns NewSig:/lab8/rest 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 5ns NewSig:/lab8/rest 
wave modify -driver freeze -pattern constant -value 0 -starttime 5ns -endtime 1000ns NewSig:/lab8/rest 
wave modify -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 0ns -endtime 1000ns NewSig:/lab8/gnd 
{wave export -file lab8_tb -starttime 0 -endtime 1000 -format vhdl -designunit lab8} 
WaveCollapseAll -1
wave clipboard restore
